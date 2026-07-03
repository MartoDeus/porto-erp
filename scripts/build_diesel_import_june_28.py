from __future__ import annotations

import json
import math
import uuid
from collections import defaultdict
from dataclasses import dataclass
from pathlib import Path

import pandas as pd


WORKBOOK = Path(r"C:\Users\User\Documents\data de junio.xlsx")
OUTPUT_SQL = Path(r"C:\Users\User\Documents\ALM RECURSOS\porto-erp\tmp_import_diesel_2026_06_28.sql")
USER_ID = "1fc59be2-4ba7-40b6-9659-767e0b6311df"
TARGET_DATE = pd.Timestamp("2026-06-28")
TARGET_DATE_TEXT = "2026-06-28"

ALIASES = {
    "CHIPP II": "CHIP II",
    "D. ROBIN": "DONALD ROBIN",
    "KELLEY": "LJ KELLEY",
    "MR. BOB": "MR BOB",
    "PARINAS": "PARIÑAS",
    "LOBITOS EXPRESS (CARGA)": "LOBITOS EXPRESS CARGA",
    "LOBITOS EXPRESS (CONSUMO)": "LOBITOS EXPRESS CONSUMO",
}

MOTHER_SHIPS = {"TALARA", "PARIÑAS", "LOBITOS EXPRESS CARGA"}
SPECIAL_ORIGINS = {"AMARRADERO #4", "AMARRADERO N 4", "AMARRADERO 4"}


@dataclass
class KardexRow:
    id: str
    date_text: str
    unit_name: str
    turno: str
    stock_inicial: float
    stock_final_seed: float
    total_consumo: float
    total_recibido: float = 0
    recibido_de: str | None = None
    total_despacho: float = 0
    total_transferencia: float = 0
    sondaje_reingreso: float = 0
    sondaje_diferencia: float = 0
    capitan: str = "-"
    motorista: str = "-"
    n_vale_recarga: str | None = None
    n_vale_despacho: str | None = None
    stock_final_excel: float = 0


def sql_quote(value: str | None) -> str:
    if value is None:
        return "NULL"
    return "'" + str(value).replace("\\", "\\\\").replace("'", "''") + "'"


def jsonb_literal(value) -> str:
    return sql_quote(json.dumps(value, ensure_ascii=False, separators=(",", ":"))) + "::jsonb"


def to_number(value) -> float:
    if value is None:
        return 0.0
    if isinstance(value, str):
        value = value.strip().replace(",", "")
        if not value or value.lower() == "nan":
            return 0.0
    try:
        result = float(value)
    except (TypeError, ValueError):
        return 0.0
    return 0.0 if math.isnan(result) else result


def clean_text(value) -> str:
    text = str(value or "").strip()
    return "" if text.lower() == "nan" else text


def normalize_name(value) -> str:
    text = clean_text(value)
    return ALIASES.get(text, text)


def normalize_origin(value) -> str:
    text = normalize_name(value)
    if text == "AMARRADERO N 4":
        return "AMARRADERO #4"
    return text


def split_guardia(value) -> tuple[str, str]:
    text = clean_text(value)
    if not text:
        return "-", "-"
    if "/" not in text:
        return text, "-"
    captain, motorist = text.split("/", 1)
    return captain.strip() or "-", motorist.strip() or "-"


def timestamp_for(turno: str, offset: int = 0) -> str:
    hour = 8 if turno == "diurno" else 20
    minute = offset % 60
    hour += offset // 60
    return f"{TARGET_DATE_TEXT} {hour:02d}:{minute:02d}:00-05"


def is_transfer(origin: str, destination: str) -> bool:
    return normalize_name(origin) in MOTHER_SHIPS and normalize_name(destination) in MOTHER_SHIPS


def parse_detail_row(row) -> tuple[str, float]:
    left = row.iloc[2]
    right = row.iloc[3]
    left_number = to_number(left)
    right_number = to_number(right)
    if left_number and not right_number:
        return normalize_name(right), left_number
    if right_number and not left_number:
        return normalize_name(left), right_number
    return normalize_name(right), left_number


def read_detail_movements() -> list[dict]:
    raw = pd.read_excel(WORKBOOK, sheet_name="DETALLE DATA", header=None)
    raw[0] = pd.to_datetime(raw[0], errors="coerce")
    rows = raw[raw[0].eq(TARGET_DATE)]
    movements = []
    for _, row in rows.iterrows():
        origin = normalize_origin(row.iloc[1])
        destination, amount = parse_detail_row(row)
        if not origin or not destination or amount == 0:
            continue
        movements.append(
            {
                "origin": origin,
                "destination": destination,
                "amount": amount,
                "voucher": clean_text(row.iloc[4]),
                "tipo": "transferencia" if is_transfer(origin, destination) else "despacho",
            }
        )
    return movements


def build_rows_and_movements() -> tuple[list[KardexRow], list[dict], list[dict]]:
    df = pd.read_excel(WORKBOOK, sheet_name="DATA DE JUNIO")
    df["Fecha"] = pd.to_datetime(df["Fecha"], errors="coerce")
    df = df[df["Fecha"].eq(TARGET_DATE)].copy()

    detail_movements = read_detail_movements()
    outgoing_by_origin: dict[str, list[dict]] = defaultdict(list)
    voucher_by_receiver: dict[tuple[str, str], list[str]] = defaultdict(list)
    for movement in detail_movements:
        outgoing_by_origin[movement["origin"]].append(movement)
        voucher_by_receiver[(movement["origin"], movement["destination"])].append(movement["voucher"])

    rows: list[KardexRow] = []
    movements: list[dict] = []

    for _, row in df.iterrows():
        unit = normalize_name(row["Nave / Barcaza"])
        stock_initial = to_number(row["STOCK\nINICIAL"])
        received = to_number(row["CANTIDAD\nRECIBIDA"])
        received_from = normalize_origin(row["RECIBIDO DE:"]) or None
        consumption_day = to_number(row["CONSUMO DIA"])
        consumption_night = to_number(row["CONSUMO NOCHE"])
        sondaje = to_number(row["REINGRESO / DIFERENCIA POR SONDAJE"])
        stock_final_excel = to_number(row["STOCK\nFINAL"])
        day_captain, day_motorist = split_guardia(row["GUARDIA DIA\nCAPITAN / MOTORISTA"])
        night_captain, night_motorist = split_guardia(row["GUARDIA NOCHE\nCAPITAN / MOTORISTA"])

        outgoing = outgoing_by_origin.get(unit, [])
        day_dispatch = sum(item["amount"] for item in outgoing if item["tipo"] == "despacho")
        day_transfer = sum(item["amount"] for item in outgoing if item["tipo"] == "transferencia")
        day_outgoing = day_dispatch + day_transfer
        reingreso = sondaje if sondaje > 0 else 0
        diferencia = abs(sondaje) if sondaje < 0 else 0
        day_final = stock_initial + received - consumption_day - day_outgoing + reingreso - diferencia
        night_final = day_final - consumption_night

        vales_out = [item["voucher"] for item in outgoing if item["voucher"]]
        vales_in = voucher_by_receiver.get((received_from or "", unit), [])

        day_row = KardexRow(
            id=str(uuid.uuid4()),
            date_text=TARGET_DATE_TEXT,
            unit_name=unit,
            turno="diurno",
            stock_inicial=stock_initial,
            stock_final_seed=day_final,
            total_consumo=consumption_day,
            total_recibido=received,
            recibido_de=received_from,
            total_despacho=day_dispatch,
            total_transferencia=day_transfer,
            sondaje_reingreso=reingreso,
            sondaje_diferencia=diferencia,
            capitan=day_captain,
            motorista=day_motorist,
            n_vale_recarga=" / ".join(dict.fromkeys(v for v in vales_in if v)) or None,
            n_vale_despacho=" / ".join(dict.fromkeys(vales_out)) or None,
            stock_final_excel=stock_final_excel,
        )
        night_row = KardexRow(
            id=str(uuid.uuid4()),
            date_text=TARGET_DATE_TEXT,
            unit_name=unit,
            turno="nocturno",
            stock_inicial=day_final,
            stock_final_seed=night_final,
            total_consumo=consumption_night,
            capitan=night_captain,
            motorista=night_motorist,
            stock_final_excel=stock_final_excel,
        )
        rows.extend([day_row, night_row])

        if consumption_day:
            movements.append(make_movement(day_row, "consumo", unit, unit, consumption_day, None, {"origen_texto": unit}))
        if consumption_night:
            movements.append(make_movement(night_row, "consumo", unit, unit, consumption_night, None, {"origen_texto": unit}))
        if received:
            movements.append(
                make_movement(
                    day_row,
                    "recibido",
                    received_from,
                    unit,
                    received,
                    day_row.n_vale_recarga,
                    {"origen_texto": received_from or ""},
                )
            )
        for item in outgoing:
            movements.append(
                make_movement(
                    day_row,
                    item["tipo"],
                    item["origin"],
                    item["destination"],
                    item["amount"],
                    item["voucher"],
                    {"destino_texto": item["destination"]},
                )
            )

    return rows, movements, detail_movements


def make_movement(kardex: KardexRow, tipo: str, origin: str | None, destination: str | None, amount: float, voucher: str | None, detail: dict) -> dict:
    return {
        "id": str(uuid.uuid4()),
        "kardex_id": kardex.id,
        "fecha": kardex.date_text,
        "turno": kardex.turno,
        "tipo": tipo,
        "origin": origin,
        "destination": destination,
        "amount": amount,
        "voucher": voucher,
        "detail": {
            "origen": "excel",
            "archivo": WORKBOOK.name,
            **detail,
        },
        "created_at": timestamp_for(kardex.turno),
    }


def unit_id_sql(name: str | None, allow_special: bool = False) -> str:
    if not name:
        return "NULL"
    if allow_special and name in SPECIAL_ORIGINS:
        return "NULL"
    return f"public.resolve_unidad_id({sql_quote(name)})"


def build_sql(rows: list[KardexRow], movements: list[dict]) -> str:
    lines = [
        "begin;",
        "delete from public.diesel_movimientos where fecha = date '2026-06-28';",
        "delete from public.diesel_kardex where fecha = date '2026-06-28';",
        "",
    ]

    for row in rows:
        cabecera = {
            "archivo": WORKBOOK.name,
            "importado_desde_excel": True,
            "stock_final_excel": row.stock_final_excel,
            "sondaje_aplica_stock": True,
            "turno_importado": row.turno,
        }
        modulos_estado = {
            "recarga": False,
            "despacho": row.total_despacho != 0 or row.total_transferencia != 0,
            "consumo": row.total_consumo != 0,
            "sondaje": row.sondaje_reingreso != 0 or row.sondaje_diferencia != 0,
            "tripulacion": True,
            "observaciones": False,
        }
        lines.extend(
            [
                "insert into public.diesel_kardex (id, fecha, unidad_id, turno, usuario_registrador_id, nave_origen_id, stock_inicial, stock_final, total_recarga, total_despacho, total_transferencia, total_consumo, sondaje_reingreso, sondaje_diferencia, modulos_estado, cabecera, observaciones, tiene_movimiento, estado, created_by, updated_by, created_at, updated_at, total_recibido, recibido_de, capitan_turno, motorista_turno, acta_sondaje, n_vale_recarga, n_vale_despacho) values (",
                f"  {sql_quote(row.id)}, date {sql_quote(row.date_text)}, public.resolve_unidad_id({sql_quote(row.unit_name)}), {sql_quote(row.turno)}, {sql_quote(USER_ID)}, public.resolve_unidad_id({sql_quote(row.unit_name)}),",
                f"  {row.stock_inicial}, {row.stock_final_seed}, 0, {row.total_despacho}, {row.total_transferencia}, {row.total_consumo}, {row.sondaje_reingreso}, {row.sondaje_diferencia},",
                f"  {jsonb_literal(modulos_estado)}, {jsonb_literal(cabecera)}, NULL, true, 'vigente', {sql_quote(USER_ID)}, {sql_quote(USER_ID)}, {sql_quote(timestamp_for(row.turno))}::timestamptz, {sql_quote(timestamp_for(row.turno))}::timestamptz,",
                f"  {row.total_recibido}, {sql_quote(row.recibido_de)}, {sql_quote(row.capitan)}, {sql_quote(row.motorista)}, NULL, {sql_quote(row.n_vale_recarga)}, {sql_quote(row.n_vale_despacho)}",
                ");",
                "",
            ]
        )

    for index, movement in enumerate(movements):
        movement["created_at"] = timestamp_for(movement["turno"], index)
        origin_id = unit_id_sql(movement["origin"], allow_special=True)
        destination_id = unit_id_sql(movement["destination"])
        lines.extend(
            [
                "insert into public.diesel_movimientos (id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at) values (",
                f"  {sql_quote(movement['id'])}, {sql_quote(movement['kardex_id'])}, date {sql_quote(movement['fecha'])}, {sql_quote(movement['turno'])}, {sql_quote(movement['tipo'])},",
                f"  {origin_id}, {destination_id}, {movement['amount']}, {jsonb_literal(movement['detail'])}, 'vigente', {sql_quote(USER_ID)}, {sql_quote(movement['created_at'])}::timestamptz, {sql_quote(movement['voucher'])}, {sql_quote(USER_ID)}, {sql_quote(movement['created_at'])}::timestamptz",
                ");",
                "",
            ]
        )

    lines.append("select public.recalcular_diesel_kardex(id) from public.diesel_kardex where fecha = date '2026-06-28';")
    for unit in sorted({row.unit_name for row in rows} | {m["origin"] for m in movements if m["origin"] and m["origin"] not in SPECIAL_ORIGINS}):
        lines.append(f"select public.recalcular_diesel_historial(public.resolve_unidad_id({sql_quote(unit)}), date '2026-06-28', 'diurno');")
    lines.append("commit;")
    return "\n".join(lines)


def main() -> None:
    rows, movements, detail = build_rows_and_movements()
    sql = build_sql(rows, movements)
    OUTPUT_SQL.write_text(sql, encoding="utf-8")
    totals = defaultdict(float)
    for item in detail:
        totals[item["tipo"]] += item["amount"]
    print(f"kardex_rows={len(rows)} movements={len(movements)} sql={OUTPUT_SQL}")
    print(f"detail_totals={dict(sorted(totals.items()))}")
    for item in detail:
        print(f"{item['tipo']}: {item['origin']} -> {item['destination']} = {item['amount']} vale={item['voucher']}")


if __name__ == "__main__":
    main()
