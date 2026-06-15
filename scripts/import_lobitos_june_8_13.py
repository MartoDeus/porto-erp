from __future__ import annotations

import json
import math
import uuid
from collections import defaultdict
from dataclasses import dataclass, field
from pathlib import Path

import pandas as pd


MAIN_WORKBOOK = Path(r"C:\Users\USER\Documents\ARCHIVOS DE EJEMPLO y DATA\KARDEX FUEL ACTUALIZADO JUNIO.xlsx")
LOBITOS_WORKBOOK = Path(r"C:\Users\USER\Documents\ARCHIVOS DE EJEMPLO y DATA\data lobitos express y carga.xlsx")
OUTPUT_SQL = Path(r"C:\Users\USER\Documents\ALM RECURSOS\porto-erp\tmp_import_lobitos_2026_06_08_13.sql")
USER_ID = "1fc59be2-4ba7-40b6-9659-767e0b6311df"
DATE_FROM = pd.Timestamp("2026-06-08")
DATE_TO = pd.Timestamp("2026-06-13")

LOBITOS_CARGA = "LOBITOS EXPRESS CARGA"
LOBITOS_CONSUMO = "LOBITOS EXPRESS CONSUMO"

ALIASES = {
    "CHIPP II": "CHIP II",
    "D. ROBIN": "DONALD ROBIN",
    "KELLEY": "LJ KELLEY",
    "SHEYLA": "SHEILA R",
    "PARINAS": "PARIÑAS",
    "LOBITOS EXPRESS (CARGA)": LOBITOS_CARGA,
    "LOBITOS EXPRESS (CONSUMO)": LOBITOS_CONSUMO,
}

DISPATCHERS = {
    "TALARA",
    "PARIÑAS",
    LOBITOS_CARGA,
    "ELIZABETH",
    "ORO",
    "ROGUE",
    "MR BOB",
    "JADE (IMI)",
}


def sql_quote(value: str | None) -> str:
    if value is None:
        return "NULL"
    return "'" + str(value).replace("\\", "\\\\").replace("'", "''") + "'"


def jsonb_literal(value) -> str:
    text = json.dumps(value, ensure_ascii=False)
    return sql_quote(text) + "::jsonb"


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
    if math.isnan(result):
        return 0.0
    return result


def is_blank(value) -> bool:
    return value is None or (isinstance(value, float) and math.isnan(value)) or str(value).strip() == ""


def normalize_name(value) -> str:
    text = str(value or "").strip()
    if not text or text.lower() == "nan":
        return ""
    return ALIASES.get(text, text)


def shift_code(value) -> str | None:
    raw = str(value or "").strip().upper()
    if raw == "A":
        return "diurno"
    if raw == "B":
        return "nocturno"
    return None


def timestamp_for(date_text: str, turno: str, offset: int) -> str:
    base = "08:00:00" if turno == "diurno" else "20:00:00"
    hour, minute, second = [int(part) for part in base.split(":")]
    minute += offset
    hour += minute // 60
    minute = minute % 60
    return f"{date_text} {hour:02d}:{minute:02d}:{second:02d}-05"


def split_guardia(text: str | None) -> tuple[str, str]:
    raw = str(text or "").strip()
    if not raw or raw.lower() == "nan":
        return "-", "-"
    if "/" in raw:
        left, right = raw.split("/", 1)
        return left.strip() or "-", right.strip() or "-"
    return raw, "-"


@dataclass
class KardexRow:
    id: str
    date_text: str
    unit_name: str
    turno: str
    stock_inicial: float
    stock_final_seed: float
    total_consumo: float
    total_recibido: float = 0.0
    recibido_de: str | None = None
    capitan: str = "-"
    motorista: str = "-"
    total_despacho: float = 0.0
    total_transferencia: float = 0.0
    n_vale_despacho: str | None = None
    cabecera: dict = field(default_factory=dict)


def parse_lobitos_blocks() -> dict[str, dict]:
    raw = pd.read_excel(LOBITOS_WORKBOOK, sheet_name="Hoja1", header=None)
    blocks: dict[str, dict] = {}
    for i in range(len(raw)):
        dt = pd.to_datetime(raw.iloc[i, 0], errors="coerce")
        if pd.isna(dt) or dt < DATE_FROM or dt > DATE_TO:
            continue
        date_text = dt.strftime("%Y-%m-%d")
        carga = raw.iloc[i + 2]
        consumo = raw.iloc[i + 3]
        carga_cap_dia, carga_mot_dia = split_guardia(carga[11])
        carga_cap_noche, carga_mot_noche = split_guardia(carga[12])
        blocks[date_text] = {
            "carga": {
                "stock_inicial": to_number(carga[2]),
                "cantidad_recibida": to_number(carga[3]),
                "recibido_de": normalize_name(carga[4]),
                "cantidad_entregada": to_number(carga[8]),
                "stock_final": to_number(carga[10]),
                "capitan_dia": carga_cap_dia,
                "motorista_dia": carga_mot_dia,
                "capitan_noche": carga_cap_noche,
                "motorista_noche": carga_mot_noche,
            },
            "consumo": {
                "stock_inicial": to_number(consumo[2]),
                "cantidad_recibida": to_number(consumo[3]),
                "recibido_de": normalize_name(consumo[4]),
                "consumo_dia": to_number(consumo[5]),
                "consumo_noche": to_number(consumo[6]),
                "stock_final": to_number(consumo[10]),
            },
        }
    return blocks


def read_main_lobitos_dispatches() -> dict[tuple[str, str], list[dict]]:
    df = pd.read_excel(MAIN_WORKBOOK, sheet_name="KARDEX")
    df["FECHA"] = pd.to_datetime(df["FECHA"], errors="coerce")
    df = df[(df["FECHA"] >= DATE_FROM) & (df["FECHA"] <= DATE_TO)].copy()
    df["RECIBIDO DE"] = df["RECIBIDO DE"].fillna("").astype(str).str.strip()
    rows = df[df["RECIBIDO DE"].eq("LOBITOS EXPRESS (CARGA)")]
    result: dict[tuple[str, str], list[dict]] = defaultdict(list)
    for _, row in rows.iterrows():
        turno = shift_code(row["GUARDIA"])
        if not turno:
            continue
        date_text = row["FECHA"].strftime("%Y-%m-%d")
        result[(date_text, turno)].append(
            {
                "destino": normalize_name(row["NAVE"]),
                "amount": to_number(row["CANT. RECIBIDA"]),
                "vale": "" if is_blank(row["N° VALE"]) else str(row["N° VALE"]).strip(),
            }
        )
    return result


def build_rows_and_movements() -> tuple[list[KardexRow], list[dict]]:
    blocks = parse_lobitos_blocks()
    outgoing_by_turn = read_main_lobitos_dispatches()
    rows: list[KardexRow] = []
    movements: list[dict] = []

    for date_text in sorted(blocks):
        block = blocks[date_text]
        carga = block["carga"]
        consumo = block["consumo"]

        consumo_received = consumo["cantidad_recibida"]
        consumo_dia_final = consumo["stock_inicial"] + consumo_received - consumo["consumo_dia"]
        consumo_noche_final = consumo_dia_final - consumo["consumo_noche"]

        consumo_diurno = KardexRow(
            id=str(uuid.uuid4()),
            date_text=date_text,
            unit_name=LOBITOS_CONSUMO,
            turno="diurno",
            stock_inicial=consumo["stock_inicial"],
            stock_final_seed=consumo_dia_final,
            total_consumo=consumo["consumo_dia"],
            total_recibido=consumo_received,
            recibido_de=consumo["recibido_de"] or None,
        )
        consumo_nocturno = KardexRow(
            id=str(uuid.uuid4()),
            date_text=date_text,
            unit_name=LOBITOS_CONSUMO,
            turno="nocturno",
            stock_inicial=consumo_dia_final,
            stock_final_seed=consumo_noche_final,
            total_consumo=consumo["consumo_noche"],
        )

        day_dispatches = list(outgoing_by_turn.get((date_text, "diurno"), []))
        night_dispatches = list(outgoing_by_turn.get((date_text, "nocturno"), []))
        if consumo_received:
            day_dispatches.append(
                {
                    "destino": LOBITOS_CONSUMO,
                    "amount": consumo_received,
                    "vale": "",
                }
            )

        day_received = carga["cantidad_recibida"]
        cargo_diurno_final = (
            carga["stock_inicial"]
            + day_received
            - sum(item["amount"] for item in day_dispatches)
        )
        cargo_nocturno_final = cargo_diurno_final - sum(item["amount"] for item in night_dispatches)

        carga_diurno = KardexRow(
            id=str(uuid.uuid4()),
            date_text=date_text,
            unit_name=LOBITOS_CARGA,
            turno="diurno",
            stock_inicial=carga["stock_inicial"],
            stock_final_seed=cargo_diurno_final,
            total_consumo=0.0,
            total_recibido=day_received,
            recibido_de=carga["recibido_de"] or None,
            capitan=carga["capitan_dia"],
            motorista=carga["motorista_dia"],
        )
        carga_nocturno = KardexRow(
            id=str(uuid.uuid4()),
            date_text=date_text,
            unit_name=LOBITOS_CARGA,
            turno="nocturno",
            stock_inicial=cargo_diurno_final,
            stock_final_seed=cargo_nocturno_final,
            total_consumo=0.0,
            capitan=carga["capitan_noche"],
            motorista=carga["motorista_noche"],
        )

        rows.extend([carga_diurno, carga_nocturno, consumo_diurno, consumo_nocturno])

        for kardex in (consumo_diurno, consumo_nocturno):
            if kardex.total_consumo:
                created_at = timestamp_for(date_text, kardex.turno, len(movements))
                movements.append(
                    {
                        "id": str(uuid.uuid4()),
                        "kardex_id": kardex.id,
                        "fecha": date_text,
                        "turno": kardex.turno,
                        "tipo": "consumo",
                        "origen": kardex.unit_name,
                        "destino": kardex.unit_name,
                        "cantidad": kardex.total_consumo,
                        "n_vale": "",
                        "detalle": {
                            "origen": "lobitos_import_20260614",
                            "origen_texto": kardex.unit_name,
                            "archivo": "data lobitos express y carga.xlsx",
                        },
                        "created_at": created_at,
                    }
                )

        for kardex, dispatches in ((carga_diurno, day_dispatches), (carga_nocturno, night_dispatches)):
            kardex.total_despacho = sum(
                item["amount"] for item in dispatches if item["destino"] not in DISPATCHERS
            )
            kardex.total_transferencia = sum(
                item["amount"] for item in dispatches if item["destino"] in DISPATCHERS
            )
            vales = [item["vale"] for item in dispatches if item["vale"]]
            kardex.n_vale_despacho = " / ".join(dict.fromkeys(vales)) or None

            for item in dispatches:
                tipo = "transferencia" if item["destino"] in DISPATCHERS else "despacho"
                created_at = timestamp_for(date_text, kardex.turno, len(movements))
                movements.append(
                    {
                        "id": str(uuid.uuid4()),
                        "kardex_id": kardex.id,
                        "fecha": date_text,
                        "turno": kardex.turno,
                        "tipo": tipo,
                        "origen": LOBITOS_CARGA,
                        "destino": item["destino"],
                        "cantidad": item["amount"],
                        "n_vale": item["vale"],
                        "detalle": {
                            "origen": "lobitos_import_20260614",
                            "destino_texto": item["destino"],
                            "n_vale": item["vale"],
                            "archivo": "data lobitos express y carga.xlsx",
                        },
                        "created_at": created_at,
                    }
                )

        if day_received:
            created_at = timestamp_for(date_text, "diurno", len(movements))
            movements.append(
                {
                    "id": str(uuid.uuid4()),
                    "kardex_id": carga_diurno.id,
                    "fecha": date_text,
                    "turno": "diurno",
                    "tipo": "recibido",
                    "origen": carga["recibido_de"] or "",
                    "destino": LOBITOS_CARGA,
                    "cantidad": day_received,
                    "n_vale": "",
                    "detalle": {
                        "origen": "lobitos_import_20260614",
                        "origen_texto": carga["recibido_de"] or "",
                        "archivo": "data lobitos express y carga.xlsx",
                    },
                    "created_at": created_at,
                }
            )

        if consumo_received:
            created_at = timestamp_for(date_text, "diurno", len(movements))
            movements.append(
                {
                    "id": str(uuid.uuid4()),
                    "kardex_id": consumo_diurno.id,
                    "fecha": date_text,
                    "turno": "diurno",
                    "tipo": "recibido",
                    "origen": LOBITOS_CARGA,
                    "destino": LOBITOS_CONSUMO,
                    "cantidad": consumo_received,
                    "n_vale": "",
                    "detalle": {
                        "origen": "lobitos_import_20260614",
                        "origen_texto": LOBITOS_CARGA,
                        "archivo": "data lobitos express y carga.xlsx",
                    },
                    "created_at": created_at,
                }
            )

    return rows, movements


def build_sql(rows: list[KardexRow], movements: list[dict]) -> str:
    lines = [
        "begin;",
        "delete from public.diesel_movimientos",
        "where kardex_id in (",
        "  select id from public.diesel_kardex",
        "  where fecha >= date '2026-06-08'",
        "    and unidad_id in (public.resolve_unidad_id('LOBITOS EXPRESS CARGA'), public.resolve_unidad_id('LOBITOS EXPRESS CONSUMO'))",
        ");",
        "",
        "delete from public.diesel_movimientos",
        "where fecha >= date '2026-06-08'",
        "  and tipo in ('despacho','transferencia')",
        "  and nave_origen_id = public.resolve_unidad_id('LOBITOS EXPRESS CARGA');",
        "",
        "delete from public.diesel_kardex",
        "where fecha >= date '2026-06-08'",
        "  and unidad_id in (public.resolve_unidad_id('LOBITOS EXPRESS CARGA'), public.resolve_unidad_id('LOBITOS EXPRESS CONSUMO'));",
        "",
    ]

    for row in rows:
        modulos_estado = {
            "despacho": row.total_despacho != 0 or row.total_transferencia != 0,
            "consumo": row.total_consumo != 0,
            "recarga": False,
            "sondaje": False,
            "tripulacion": row.unit_name == LOBITOS_CARGA,
            "observaciones": False,
        }
        cabecera = {"origen": "lobitos_import_20260614"}
        lines.extend([
            "insert into public.diesel_kardex (",
            "  id, fecha, unidad_id, turno, usuario_registrador_id, nave_origen_id, stock_inicial, stock_final,",
            "  total_recarga, total_despacho, total_transferencia, total_consumo, sondaje_reingreso, sondaje_diferencia,",
            "  modulos_estado, cabecera, observaciones, tiene_movimiento, estado, created_by, updated_by,",
            "  total_recibido, recibido_de, capitan_turno, motorista_turno, acta_sondaje, n_vale_recarga, n_vale_despacho, created_at, updated_at",
            ") values (",
            f"  {sql_quote(row.id)},",
            f"  date {sql_quote(row.date_text)},",
            f"  public.resolve_unidad_id({sql_quote(row.unit_name)}),",
            f"  {sql_quote(row.turno)},",
            f"  {sql_quote(USER_ID)},",
            f"  public.resolve_unidad_id({sql_quote(row.unit_name)}),",
            f"  {row.stock_inicial},",
            f"  {row.stock_final_seed},",
            "  0,",
            f"  {row.total_despacho},",
            f"  {row.total_transferencia},",
            f"  {row.total_consumo},",
            "  0,",
            "  0,",
            f"  {jsonb_literal(modulos_estado)},",
            f"  {jsonb_literal(cabecera)},",
            "  NULL,",
            "  true,",
            "  'vigente',",
            f"  {sql_quote(USER_ID)},",
            f"  {sql_quote(USER_ID)},",
            f"  {row.total_recibido},",
            f"  {sql_quote(row.recibido_de)},",
            f"  {sql_quote(row.capitan)},",
            f"  {sql_quote(row.motorista)},",
            "  NULL,",
            "  NULL,",
            f"  {sql_quote(row.n_vale_despacho)},",
            f"  {sql_quote(timestamp_for(row.date_text, row.turno, 0))}::timestamptz,",
            f"  {sql_quote(timestamp_for(row.date_text, row.turno, 0))}::timestamptz",
            ");",
            "",
        ])

    for movement in movements:
        origin_id_sql = (
            f"public.resolve_unidad_id({sql_quote(movement['origen'])})"
            if movement["origen"] in {LOBITOS_CARGA, LOBITOS_CONSUMO}
            else "NULL"
        )
        dest_id_sql = f"public.resolve_unidad_id({sql_quote(movement['destino'])})"
        lines.extend([
            "insert into public.diesel_movimientos (",
            "  id, kardex_id, fecha, turno, tipo, nave_origen_id, nave_destino_id, cantidad, detalle, estado, created_by, created_at, n_vale, updated_by, updated_at",
            ") values (",
            f"  {sql_quote(movement['id'])},",
            f"  {sql_quote(movement['kardex_id'])},",
            f"  date {sql_quote(movement['fecha'])},",
            f"  {sql_quote(movement['turno'])},",
            f"  {sql_quote(movement['tipo'])},",
            f"  {origin_id_sql},",
            f"  {dest_id_sql},",
            f"  {movement['cantidad']},",
            f"  {jsonb_literal(movement['detalle'])},",
            "  'vigente',",
            f"  {sql_quote(USER_ID)},",
            f"  {sql_quote(movement['created_at'])}::timestamptz,",
            f"  {sql_quote(movement['n_vale'] or None)},",
            f"  {sql_quote(USER_ID)},",
            f"  {sql_quote(movement['created_at'])}::timestamptz",
            ");",
            "",
        ])

    lines.append(
        "select public.recalcular_diesel_historial(public.resolve_unidad_id('LOBITOS EXPRESS CARGA'), date '2026-06-08', 'diurno');"
    )
    lines.append(
        "select public.recalcular_diesel_historial(public.resolve_unidad_id('LOBITOS EXPRESS CONSUMO'), date '2026-06-08', 'diurno');"
    )
    lines.append("commit;")
    return "\n".join(lines)


def main() -> None:
    rows, movements = build_rows_and_movements()
    OUTPUT_SQL.write_text(build_sql(rows, movements), encoding="utf-8")
    print(f"kardex_rows={len(rows)} movements={len(movements)} sql={OUTPUT_SQL}")
    per_day = defaultdict(int)
    for row in rows:
        per_day[row.date_text] += 1
    print(dict(sorted(per_day.items())))


if __name__ == "__main__":
    main()
