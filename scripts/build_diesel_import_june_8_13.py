from __future__ import annotations

import json
import math
import uuid
from collections import defaultdict
from dataclasses import dataclass, field
from pathlib import Path

import pandas as pd


WORKBOOK = Path(r"C:\Users\USER\Documents\ARCHIVOS DE EJEMPLO y DATA\KARDEX FUEL ACTUALIZADO JUNIO.xlsx")
OUTPUT_SQL = Path(r"C:\Users\USER\Documents\ALM RECURSOS\porto-erp\tmp_import_diesel_2026_06_08_13.sql")
USER_ID = "1fc59be2-4ba7-40b6-9659-767e0b6311df"
DATE_FROM = pd.Timestamp("2026-06-08")
DATE_TO = pd.Timestamp("2026-06-13")

ALIASES = {
    "CHIPP II": "CHIP II",
    "D. ROBIN": "DONALD ROBIN",
    "KELLEY": "LJ KELLEY",
    "SHEYLA": "SHEILA R",
    "PARINAS": "PARIÑAS",
    "LOBITOS EXPRESS (CARGA)": "LOBITOS EXPRESS CARGA",
    "LOBITOS EXPRESS (CONSUMO)": "LOBITOS EXPRESS CONSUMO",
}

EXCLUDED_UNITS = {
    "LOBITOS EXPRESS",
    "LOBITOS EXPRESS CARGA",
    "LOBITOS EXPRESS CONSUMO",
}

DISPATCHERS = {
    "TALARA",
    "PARIÑAS",
    "LOBITOS EXPRESS CARGA",
    "ELIZABETH",
    "ORO",
    "ROGUE",
    "MR BOB",
    "JADE (IMI)",
}

SPECIAL_SONDAJE_LABELS = {
    "REINGRESO",
    "REINGRESO POR SONDAJE",
    "DIFERENCIA POR SONDAJE",
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
        stripped = value.strip()
        if not stripped or stripped.lower() == "nan":
            return 0.0
        value = stripped.replace(",", "")
    try:
        numeric = float(value)
    except (TypeError, ValueError):
        return 0.0
    if math.isnan(numeric):
        return 0.0
    return numeric


def is_blank(value) -> bool:
    return value is None or (isinstance(value, float) and math.isnan(value)) or str(value).strip() == ""


def normalize_name(value) -> str:
    text = str(value or "").strip()
    if not text or text.lower() == "nan":
        return ""
    return ALIASES.get(text, text)


def normalize_received_from(value) -> str:
    text = str(value or "").strip()
    if not text or text.lower() == "nan" or text == "0":
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


@dataclass
class GroupData:
    id: str
    date_text: str
    unit_name: str
    turno: str
    stock_inicial: float = 0.0
    stock_final: float = 0.0
    consumo: float = 0.0
    capitan: str = "-"
    motorista: str = "-"
    first_idx: int = 0
    rows: list[dict] = field(default_factory=list)
    received_entries: list[dict] = field(default_factory=list)
    outgoing_entries: list[dict] = field(default_factory=list)
    sondajes: list[dict] = field(default_factory=list)


def build_groups(df: pd.DataFrame) -> tuple[dict[tuple[str, str, str], GroupData], dict[tuple[str, str], list[dict]]]:
    groups: dict[tuple[str, str, str], GroupData] = {}
    special_by_day_unit: dict[tuple[str, str], list[dict]] = defaultdict(list)
    last_turno_by_day_unit: dict[tuple[str, str], str] = {}
    vale_col = df.columns[14]

    for idx, row in df.iterrows():
        fecha = pd.to_datetime(row["FECHA"], errors="coerce")
        if pd.isna(fecha) or fecha < DATE_FROM or fecha > DATE_TO:
            continue

        date_text = fecha.strftime("%Y-%m-%d")
        unit_name = normalize_name(row["NAVE"])
        received_from = normalize_received_from(row["RECIBIDO DE"])
        amount = to_number(row["CANT. RECIBIDA"])
        vale = "" if is_blank(row[vale_col]) else str(row[vale_col]).strip()
        raw_turno = shift_code(row["GUARDIA"])
        if raw_turno:
            last_turno_by_day_unit[(date_text, unit_name)] = raw_turno
        turno = raw_turno or last_turno_by_day_unit.get((date_text, unit_name))

        if received_from in SPECIAL_SONDAJE_LABELS:
            if unit_name and unit_name not in EXCLUDED_UNITS and amount != 0:
                special_by_day_unit[(date_text, unit_name)].append(
                    {
                        "idx": len(special_by_day_unit[(date_text, unit_name)]) + 1,
                        "amount": amount,
                        "vale": vale,
                        "label": received_from,
                        "turno": turno,
                    }
                )
            continue

        if unit_name in EXCLUDED_UNITS:
            continue

        if not turno:
            continue

        key = (date_text, unit_name, turno)
        if key not in groups:
            groups[key] = GroupData(
                id=str(uuid.uuid4()),
                date_text=date_text,
                unit_name=unit_name,
                turno=turno,
                stock_inicial=to_number(row["STOCK I."]),
                stock_final=to_number(row["STOCK F."]),
                first_idx=idx,
            )
        group = groups[key]
        group.rows.append({"idx": idx, "row": row.to_dict()})
        group.stock_final = to_number(row["STOCK F."])
        group.consumo += to_number(row["CONSUMO POR GUARDIA"])
        capitan = str(row["CAPITAN"]).strip() if not is_blank(row["CAPITAN"]) else ""
        motorista = str(row["MOTORISTA"]).strip() if not is_blank(row["MOTORISTA"]) else ""
        if capitan:
            group.capitan = capitan
        if motorista:
            group.motorista = motorista

        if received_from and amount != 0:
            group.received_entries.append(
                {
                    "idx": idx,
                    "origin_text": received_from,
                    "amount": amount,
                    "vale": vale,
                }
            )

    for (date_text, unit_name), items in special_by_day_unit.items():
        grouped_items: dict[str, list[dict]] = defaultdict(list)
        for item in items:
            grouped_items[item.get("turno") or "diurno"].append(item)
        assigned = False
        for turno, turno_items in grouped_items.items():
            target = groups.get((date_text, unit_name, turno))
            if target:
                target.sondajes.extend(turno_items)
                assigned = True
        if not assigned:
            target = groups.get((date_text, unit_name, "diurno")) or groups.get((date_text, unit_name, "nocturno"))
            if target:
                target.sondajes.extend(items)

    return groups, special_by_day_unit


def build_movements(groups: dict[tuple[str, str, str], GroupData]) -> list[dict]:
    movements: list[dict] = []

    for key, group in groups.items():
        if group.consumo != 0:
            created_at = timestamp_for(group.date_text, group.turno, len(movements))
            movements.append(
                {
                    "id": str(uuid.uuid4()),
                    "kardex_id": group.id,
                    "fecha": group.date_text,
                    "turno": group.turno,
                    "tipo": "consumo",
                    "origen": group.unit_name,
                    "destino": group.unit_name,
                    "nave_origen_id": group.unit_name,
                    "nave_destino_id": group.unit_name,
                    "cantidad": group.consumo,
                    "detalle": {
                        "origen_texto": group.unit_name,
                        "archivo": "KARDEX FUEL ACTUALIZADO JUNIO.xlsx",
                    },
                    "n_vale": "",
                    "created_at": created_at,
                }
            )
        for entry in group.received_entries:
            created_at = timestamp_for(group.date_text, group.turno, len(movements))
            recipient_detail = {
                "origen_texto": entry["origin_text"],
                "n_vale": entry["vale"],
            }
            movements.append(
                {
                    "id": str(uuid.uuid4()),
                    "kardex_id": group.id,
                    "fecha": group.date_text,
                    "turno": group.turno,
                    "tipo": "recibido",
                    "origen": entry["origin_text"],
                    "destino": group.unit_name,
                    "nave_origen_id": None,
                    "nave_destino_id": group.unit_name,
                    "cantidad": entry["amount"],
                    "detalle": recipient_detail,
                    "n_vale": entry["vale"],
                    "created_at": created_at,
                }
            )

            origin_name = normalize_name(entry["origin_text"])
            origin_key = (group.date_text, origin_name, group.turno)
            if origin_name and origin_name not in EXCLUDED_UNITS and origin_key in groups and origin_name in DISPATCHERS:
                tipo = "transferencia" if group.unit_name in DISPATCHERS else "despacho"
                origin_group = groups[origin_key]
                origin_group.outgoing_entries.append(
                    {
                        "idx": entry["idx"],
                        "destino": group.unit_name,
                        "amount": entry["amount"],
                        "vale": entry["vale"],
                        "tipo": tipo,
                    }
                )
                movements.append(
                    {
                        "id": str(uuid.uuid4()),
                        "kardex_id": origin_group.id,
                        "fecha": group.date_text,
                        "turno": group.turno,
                        "tipo": tipo,
                        "origen": origin_name,
                        "destino": group.unit_name,
                        "nave_origen_id": origin_name,
                        "nave_destino_id": group.unit_name,
                        "cantidad": entry["amount"],
                        "detalle": {
                            "destino_texto": group.unit_name,
                            "n_vale": entry["vale"],
                        },
                        "n_vale": entry["vale"],
                        "created_at": created_at,
                    }
                )
    return movements


def format_name_sets(entries: list[dict], key: str) -> str:
    values = []
    seen = set()
    for entry in entries:
        value = str(entry.get(key, "")).strip()
        if value and value not in seen:
            values.append(value)
            seen.add(value)
    return " / ".join(values)


def build_modulos_estado(group: GroupData) -> dict:
    return {
        "despacho": bool(group.outgoing_entries),
        "consumo": group.consumo != 0,
        "recarga": False,
        "sondaje": bool(group.sondajes),
        "tripulacion": bool((group.capitan or "").strip("- ") or (group.motorista or "").strip("- ")),
        "observaciones": False,
    }


def build_cabecera(group: GroupData) -> dict:
    return {
        "sondajes": [
            {
                "index": idx + 1,
                "document": item["vale"],
                "returnVolume": item["amount"] if item["amount"] > 0 else 0,
                "difference": item["amount"] if item["amount"] < 0 else 0,
                "consumption": 0,
            }
            for idx, item in enumerate(group.sondajes[:5])
        ]
    }


def build_sql(groups: dict[tuple[str, str, str], GroupData], movements: list[dict]) -> str:
    lines: list[str] = [
        "begin;",
        "delete from public.diesel_movimientos where fecha >= date '2026-06-08';",
        "delete from public.diesel_kardex where fecha >= date '2026-06-08';",
        "",
    ]

    ordered_groups = sorted(groups.values(), key=lambda g: (g.date_text, g.unit_name, 0 if g.turno == "diurno" else 1, g.first_idx))
    for group in ordered_groups:
        total_recibido = sum(to_number(item["amount"]) for item in group.received_entries)
        total_despacho = sum(to_number(item["amount"]) for item in group.outgoing_entries if item["tipo"] == "despacho")
        total_transferencia = sum(to_number(item["amount"]) for item in group.outgoing_entries if item["tipo"] == "transferencia")
        positive_sondaje = sum(item["amount"] for item in group.sondajes if item["amount"] > 0)
        negative_sondaje = sum(abs(item["amount"]) for item in group.sondajes if item["amount"] < 0)
        recibido_de = format_name_sets(group.received_entries, "origin_text")
        n_vale_despacho = format_name_sets(group.outgoing_entries, "vale")
        acta_sondaje = " / ".join(item["vale"] for item in group.sondajes if item["vale"])

        lines.extend([
            "insert into public.diesel_kardex (",
            "  id, fecha, unidad_id, turno, usuario_registrador_id, nave_origen_id, stock_inicial, stock_final,",
            "  total_recarga, total_despacho, total_transferencia, total_consumo, sondaje_reingreso, sondaje_diferencia,",
            "  modulos_estado, cabecera, observaciones, tiene_movimiento, estado, created_by, updated_by,",
            "  total_recibido, recibido_de, capitan_turno, motorista_turno, acta_sondaje, n_vale_recarga, n_vale_despacho, created_at, updated_at",
            ") values (",
            f"  {sql_quote(group.id)},",
            f"  date {sql_quote(group.date_text)},",
            f"  public.resolve_unidad_id({sql_quote(group.unit_name)}),",
            f"  {sql_quote(group.turno)},",
            f"  {sql_quote(USER_ID)},",
            f"  public.resolve_unidad_id({sql_quote(group.unit_name)}),",
            f"  {to_number(group.stock_inicial)},",
            f"  {to_number(group.stock_final)},",
            "  0,",
            f"  {total_despacho},",
            f"  {total_transferencia},",
            f"  {to_number(group.consumo)},",
            f"  {positive_sondaje},",
            f"  {negative_sondaje},",
            f"  {jsonb_literal(build_modulos_estado(group))},",
            f"  {jsonb_literal(build_cabecera(group))},",
            "  NULL,",
            "  true,",
            "  'vigente',",
            f"  {sql_quote(USER_ID)},",
            f"  {sql_quote(USER_ID)},",
            f"  {total_recibido},",
            f"  {sql_quote(recibido_de or None)},",
            f"  {sql_quote(group.capitan or '-')},",
            f"  {sql_quote(group.motorista or '-')},",
            f"  {sql_quote(acta_sondaje or None)},",
            "  NULL,",
            f"  {sql_quote(n_vale_despacho or None)},",
            f"  {sql_quote(timestamp_for(group.date_text, group.turno, 0))}::timestamptz,",
            f"  {sql_quote(timestamp_for(group.date_text, group.turno, 0))}::timestamptz",
            ");",
            "",
        ])

    for movement in movements:
        origin_id_sql = f"public.resolve_unidad_id({sql_quote(movement['origen'])})" if movement["origen"] and movement["tipo"] != "recibido" else "NULL"
        if movement["tipo"] == "recibido" and movement["origen"] and movement["origen"] not in {"AMARRADERO #4 PP"} and movement["origen"] not in SPECIAL_SONDAJE_LABELS:
            origin_id_sql = f"public.resolve_unidad_id({sql_quote(normalize_name(movement['origen']))})"
        dest_id_sql = f"public.resolve_unidad_id({sql_quote(movement['destino'])})" if movement["destino"] else "NULL"

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
            f"  {to_number(movement['cantidad'])},",
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

    affected_units = sorted({g.unit_name for g in ordered_groups})
    for unit_name in affected_units:
        lines.append(
            f"select public.recalcular_diesel_historial(public.resolve_unidad_id({sql_quote(unit_name)}), date '2026-06-08', 'diurno');"
        )
    lines.append("commit;")
    return "\n".join(lines)


def main() -> None:
    df = pd.read_excel(WORKBOOK, sheet_name="KARDEX")
    groups, _ = build_groups(df)
    movements = build_movements(groups)
    sql = build_sql(groups, movements)
    OUTPUT_SQL.write_text(sql, encoding="utf-8")
    print(f"groups={len(groups)} movements={len(movements)} sql={OUTPUT_SQL}")
    by_date = defaultdict(int)
    for group in groups.values():
        by_date[group.date_text] += 1
    print(dict(sorted(by_date.items())))


if __name__ == "__main__":
    main()
