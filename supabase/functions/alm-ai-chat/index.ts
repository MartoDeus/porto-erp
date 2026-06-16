import { serve } from "https://deno.land/std@0.224.0/http/server.ts";
import { createClient } from "https://esm.sh/@supabase/supabase-js@2.45.4";

const geminiApiKey = Deno.env.get("GEMINI_API_KEY");
const supabaseUrl = Deno.env.get("URL_KEY");
const supabaseServiceRoleKey = Deno.env.get("SERVICE_ROLE_KEY");

const corsHeaders = {
  "Access-Control-Allow-Origin": "*",
  "Access-Control-Allow-Headers": "authorization, x-client-info, apikey, content-type",
  "Access-Control-Allow-Methods": "POST, OPTIONS"
};

type ChatHistoryItem = {
  role?: string;
  content?: string;
};

type DieselMovement = {
  fecha: string;
  turno: string | null;
  tipo: string | null;
  cantidad: number | string | null;
  estado: string | null;
  nave_origen_id: string | null;
  nave_destino_id: string | null;
  origen?: string | null;
  destino?: string | null;
};

type DieselKardex = {
  fecha: string;
  turno: string | null;
  stock_final: number | string | null;
  unidad_id: string | null;
  unidad?: string | null;
};

function normalizeSupabaseUrl(value: string | undefined) {
  return value
    ?.replace(/\/rest\/v1\/?$/i, "")
    .replace(/\/functions\/v1\/?$/i, "")
    .replace(/\/+$/g, "");
}

const supabaseBaseUrl = normalizeSupabaseUrl(supabaseUrl);

let supabase = supabaseBaseUrl && supabaseServiceRoleKey
  ? createClient(supabaseBaseUrl, supabaseServiceRoleKey, {
    auth: {
      persistSession: false
    }
  })
  : null;

function createRequestSupabaseClient(authHeader: string | null) {
  const useIncomingUser = Boolean(authHeader && !authHeader.includes("sb_publishable_"));
  return supabaseBaseUrl && supabaseServiceRoleKey
    ? createClient(supabaseBaseUrl, supabaseServiceRoleKey, {
      auth: { persistSession: false },
      global: useIncomingUser ? { headers: { Authorization: authHeader! } } : undefined
    })
    : null;
}

function jsonResponse(body: Record<string, unknown>, status = 200) {
  return new Response(JSON.stringify(body), {
    status,
    headers: {
      ...corsHeaders,
      "Content-Type": "application/json"
    }
  });
}

function normalizeText(value: string) {
  return value
    .normalize("NFD")
    .replace(/[\u0300-\u036f]/g, "")
    .toUpperCase()
    .replace(/Ñ/g, "N")
    .replace(/[^A-Z0-9]+/g, " ")
    .trim();
}

function toNumber(value: number | string | null | undefined) {
  const numberValue = Number(value ?? 0);
  return Number.isFinite(numberValue) ? numberValue : 0;
}

function formatGallons(value: number) {
  return `${Math.round(value).toLocaleString("es-PE")} gal`;
}

function getLimaDate() {
  const parts = new Intl.DateTimeFormat("en-CA", {
    timeZone: "America/Lima",
    year: "numeric",
    month: "2-digit",
    day: "2-digit"
  }).formatToParts(new Date());
  const get = (type: string) => parts.find((part) => part.type === type)?.value ?? "";
  return `${get("year")}-${get("month")}-${get("day")}`;
}

function addDays(dateValue: string, days: number) {
  const date = new Date(`${dateValue}T00:00:00Z`);
  date.setUTCDate(date.getUTCDate() + days);
  return date.toISOString().slice(0, 10);
}

function getWeekRange() {
  const today = getLimaDate();
  const date = new Date(`${today}T00:00:00Z`);
  const day = date.getUTCDay() || 7;
  return {
    start: addDays(today, 1 - day),
    end: addDays(today, 8 - day)
  };
}

function getMonthRange(message: string) {
  const months = [
    ["ENERO", 0],
    ["FEBRERO", 1],
    ["MARZO", 2],
    ["ABRIL", 3],
    ["MAYO", 4],
    ["JUNIO", 5],
    ["JULIO", 6],
    ["AGOSTO", 7],
    ["SETIEMBRE", 8],
    ["SEPTIEMBRE", 8],
    ["OCTUBRE", 9],
    ["NOVIEMBRE", 10],
    ["DICIEMBRE", 11]
  ] as const;
  const normalized = normalizeText(message);
  const today = getLimaDate();
  const currentYear = Number(today.slice(0, 4));
  const found = months.find(([name]) => normalized.includes(name));
  const monthIndex = found?.[1] ?? Number(today.slice(5, 7)) - 1;
  const yearMatch = normalized.match(/\b(20\d{2})\b/);
  const year = yearMatch ? Number(yearMatch[1]) : currentYear;
  const start = new Date(Date.UTC(year, monthIndex, 1)).toISOString().slice(0, 10);
  const end = new Date(Date.UTC(year, monthIndex + 1, 1)).toISOString().slice(0, 10);
  return { start, end };
}

function detectIntent(message: string) {
  const normalized = normalizeText(message);
  if (!normalized) return "unclear";
  if (normalized.includes("STOCK")) return "current_stock";
  if (normalized.includes("RECARG")) return "today_recharges";
  if (normalized.includes("MENSUAL") || normalized.includes("MES") || normalized.includes("MAYO")) return "monthly_summary";
  if (normalized.includes("MAS") && normalized.includes("CONSUM")) return "top_consumption";
  if (normalized.includes("HOY") && normalized.includes("CONSUM")) return "today_consumption";
  if (normalized.includes("CONSUM")) return "vessel_consumption";
  return "unclear";
}

async function getUnits() {
  const { data, error } = await supabase!
    .from("unidades")
    .select("id,nombre")
    .order("nombre", { ascending: true });

  if (error) throw error;
  return data ?? [];
}

async function getUnitNameMap() {
  const units = await getUnits();
  return new Map(units.map((unit) => [unit.id, unit.nombre ?? "Sin nave"]));
}

async function resolveVesselFromMessage(message: string) {
  const normalizedMessage = normalizeText(message);
  const units = await getUnits();
  return units.find((unit) => normalizedMessage.includes(normalizeText(unit.nombre ?? ""))) ?? null;
}

async function getMovementsByRange(start: string, end: string, types: string[]) {
  const unitNames = await getUnitNameMap();
  const { data, error } = await supabase!
    .from("diesel_movimientos")
    .select("fecha,turno,tipo,cantidad,estado,nave_origen_id,nave_destino_id")
    .eq("estado", "vigente")
    .in("tipo", types)
    .gte("fecha", start)
    .lt("fecha", end)
    .order("fecha", { ascending: false });

  if (error) throw error;
  return ((data ?? []) as DieselMovement[]).map((row) => ({
    ...row,
    origen: row.nave_origen_id ? unitNames.get(row.nave_origen_id) ?? "Sin nave" : null,
    destino: row.nave_destino_id ? unitNames.get(row.nave_destino_id) ?? "Sin nave" : null
  }));
}

async function getTodayDieselConsumption() {
  const today = getLimaDate();
  const rows = await getMovementsByRange(today, addDays(today, 1), ["consumo"]);
  const total = rows.reduce((sum, row) => sum + toNumber(row.cantidad), 0);
  return {
    fecha: today,
    total,
    total_formateado: formatGallons(total),
    registros: rows.length,
    por_turno: rows.reduce<Record<string, number>>((acc, row) => {
      const turno = row.turno ?? "sin_turno";
      acc[turno] = (acc[turno] ?? 0) + toNumber(row.cantidad);
      return acc;
    }, {})
  };
}

async function getDieselConsumptionByVessel(message: string) {
  const vessel = await resolveVesselFromMessage(message);
  const normalized = normalizeText(message);
  const range = normalized.includes("SEMANA") ? getWeekRange() : normalized.includes("HOY") ? { start: getLimaDate(), end: addDays(getLimaDate(), 1) } : getMonthRange(message);
  let rows = await getMovementsByRange(range.start, range.end, ["consumo"]);
  if (vessel) {
    rows = rows.filter((row) => normalizeText(row.origen ?? "") === normalizeText(vessel.nombre ?? ""));
  }
  const total = rows.reduce((sum, row) => sum + toNumber(row.cantidad), 0);
  return {
    nave: vessel?.nombre ?? null,
    periodo: range,
    total,
    total_formateado: formatGallons(total),
    registros: rows.length,
    por_turno: rows.reduce<Record<string, number>>((acc, row) => {
      const turno = row.turno ?? "sin_turno";
      acc[turno] = (acc[turno] ?? 0) + toNumber(row.cantidad);
      return acc;
    }, {})
  };
}

async function getTopDieselVessels(message: string) {
  const range = getMonthRange(message);
  const rows = await getMovementsByRange(range.start, range.end, ["consumo"]);
  const totals = rows.reduce<Record<string, number>>((acc, row) => {
    const name = row.origen ?? "Sin nave";
    acc[name] = (acc[name] ?? 0) + toNumber(row.cantidad);
    return acc;
  }, {});
  return {
    periodo: range,
    ranking: Object.entries(totals)
      .map(([nave, total]) => ({ nave, total, total_formateado: formatGallons(total) }))
      .sort((a, b) => b.total - a.total)
      .slice(0, 5)
  };
}

async function getTodayDieselRecharges() {
  const today = getLimaDate();
  const rows = await getMovementsByRange(today, addDays(today, 1), ["recarga"]);
  const total = rows.reduce((sum, row) => sum + toNumber(row.cantidad), 0);
  return {
    fecha: today,
    total,
    total_formateado: formatGallons(total),
    recargas: rows.map((row) => ({
      nave: row.origen,
      cantidad: toNumber(row.cantidad),
      turno: row.turno
    }))
  };
}

async function getMonthlyDieselSummary(message: string) {
  const range = getMonthRange(message);
  const rows = await getMovementsByRange(range.start, range.end, ["consumo", "recarga", "despacho", "transferencia", "sondaje"]);
  const summary = rows.reduce<Record<string, number>>((acc, row) => {
    const tipo = row.tipo ?? "sin_tipo";
    acc[tipo] = (acc[tipo] ?? 0) + toNumber(row.cantidad);
    return acc;
  }, {});
  return {
    periodo: range,
    totales: Object.fromEntries(Object.entries(summary).map(([key, value]) => [key, { valor: value, texto: formatGallons(value) }]))
  };
}

async function getCurrentStock(message: string) {
  const vessel = await resolveVesselFromMessage(message);
  const unitNames = await getUnitNameMap();
  let query = supabase!
    .from("diesel_kardex")
    .select("fecha,turno,stock_final,unidad_id")
    .eq("estado", "vigente")
    .order("fecha", { ascending: false })
    .order("updated_at", { ascending: false })
    .limit(300);

  if (vessel) {
    query = query.eq("unidad_id", vessel.id);
  }

  const { data, error } = await query;
  if (error) throw error;

  const latestByUnit = new Map<string, DieselKardex>();
  for (const row of (data ?? []) as DieselKardex[]) {
    const name = row.unidad_id ? unitNames.get(row.unidad_id) ?? "Sin nave" : "Sin nave";
    if (!latestByUnit.has(name)) latestByUnit.set(name, row);
  }

  return {
    nave: vessel?.nombre ?? null,
    stocks: Array.from(latestByUnit.entries()).map(([nave, row]) => ({
      nave,
      fecha: row.fecha,
      turno: row.turno,
      stock_final: toNumber(row.stock_final),
      stock_final_formateado: formatGallons(toNumber(row.stock_final))
    }))
  };
}

async function getDataForIntent(intent: string, message: string) {
  if (intent === "today_consumption") return await getTodayDieselConsumption();
  if (intent === "vessel_consumption") return await getDieselConsumptionByVessel(message);
  if (intent === "top_consumption") return await getTopDieselVessels(message);
  if (intent === "current_stock") return await getCurrentStock(message);
  if (intent === "today_recharges") return await getTodayDieselRecharges();
  if (intent === "monthly_summary") return await getMonthlyDieselSummary(message);
  return {};
}

function hasData(intent: string, data: Record<string, unknown>) {
  if (intent === "current_stock") return Array.isArray(data.stocks) && data.stocks.length > 0;
  if (intent === "top_consumption") return Array.isArray(data.ranking) && data.ranking.length > 0;
  if (intent === "today_recharges") return Array.isArray(data.recargas) && data.recargas.length > 0;
  if ("registros" in data) return Number(data.registros) > 0;
  if ("totales" in data) return Object.keys((data.totales as Record<string, unknown>) ?? {}).length > 0;
  return Object.keys(data).length > 0;
}

function buildGeminiPrompt(message: string, intent: string, data: Record<string, unknown>, history: ChatHistoryItem[]) {
  return `
Eres ALM AI, asistente del ERP ALM. Responde siempre en español, breve, claro y operativo.
No inventes datos. No escribas SQL. Solo interpreta el JSON ya consultado por el servidor.

Pregunta del usuario:
${message}

Intención detectada:
${intent}

Historial reciente:
${JSON.stringify(history.slice(-6))}

Datos controlados desde Supabase:
${JSON.stringify(data, null, 2)}

Devuelve una respuesta natural en español. Si hay listas o ranking, usa viñetas compactas.
`.trim();
}

async function callGemini(prompt: string) {
  if (!geminiApiKey) throw new Error("Falta GEMINI_API_KEY.");
  const response = await fetch(`https://generativelanguage.googleapis.com/v1/models/gemini-2.5-flash:generateContent?key=${geminiApiKey}`, {
    method: "POST",
    headers: {
      "Content-Type": "application/json"
    },
    body: JSON.stringify({
      contents: [
        {
          role: "user",
          parts: [{ text: prompt }]
        }
      ],
      generationConfig: {
        temperature: 0.2,
        maxOutputTokens: 700
      }
    })
  });

  const payload = await response.json();
  if (!response.ok) {
    throw new Error(payload?.error?.message ?? "Gemini no pudo responder.");
  }
  return payload?.candidates?.[0]?.content?.parts?.map((part: { text?: string }) => part.text ?? "").join("").trim() || "No pude generar una respuesta.";
}

function buildFallbackAnswer(intent: string, data: Record<string, unknown>) {
  if (intent === "current_stock") {
    const stocks = (data.stocks as Array<{ nave: string; stock_final_formateado: string; fecha: string; turno: string | null }>) ?? [];
    return stocks.map((stock) => `${stock.nave}: ${stock.stock_final_formateado} al ${stock.fecha}${stock.turno ? ` (${stock.turno})` : ""}.`).join("\n");
  }
  if (intent === "top_consumption") {
    const ranking = (data.ranking as Array<{ nave: string; total_formateado: string }>) ?? [];
    return ["Estas son las naves con mayor consumo:", ...ranking.map((row, index) => `${index + 1}. ${row.nave}: ${row.total_formateado}`)].join("\n");
  }
  if (intent === "today_recharges") {
    const recargas = (data.recargas as Array<{ nave: string; cantidad: number; turno: string | null }>) ?? [];
    return ["Recargas registradas hoy:", ...recargas.map((row) => `${row.nave}: ${formatGallons(row.cantidad)}${row.turno ? ` (${row.turno})` : ""}`)].join("\n");
  }
  if ("total_formateado" in data) {
    return `El total encontrado es ${data.total_formateado}.`;
  }
  if ("totales" in data) {
    return `Resumen mensual: ${JSON.stringify(data.totales)}.`;
  }
  return "Encontré datos para tu consulta, pero no pude generar el resumen automático.";
}

serve(async (request) => {
  if (request.method === "OPTIONS") {
    return new Response("ok", { headers: corsHeaders });
  }

  try {
    if (!supabaseUrl || !supabaseServiceRoleKey) {
      return jsonResponse({ answer: "La función no tiene configuradas las credenciales de Supabase.", intent: "config_error", data: {} }, 500);
    }

    supabase = createRequestSupabaseClient(request.headers.get("Authorization"));

    const body = await request.json().catch(() => ({}));
    const message = String(body.message ?? "").trim();
    const history = Array.isArray(body.history) ? body.history : [];

    if (!message) {
      return jsonResponse({
        answer: "Puedo ayudarte con consultas sobre consumo, stock, recargas, sondajes, despachos, naves y reportes. ¿Qué deseas revisar?",
        intent: "unclear",
        data: {}
      });
    }

    const intent = detectIntent(message);
    if (intent === "unclear") {
      return jsonResponse({
        answer: "Puedo ayudarte con consultas sobre consumo, stock, recargas, sondajes, despachos, naves y reportes. ¿Qué deseas revisar?",
        intent,
        data: {}
      });
    }

    const data = await getDataForIntent(intent, message);
    if (!hasData(intent, data as Record<string, unknown>)) {
      return jsonResponse({
        answer: "No encontré registros para esa consulta.",
        intent,
        data
      });
    }

    const prompt = buildGeminiPrompt(message, intent, data as Record<string, unknown>, history);
    let answer = "";
    try {
      answer = await callGemini(prompt);
    } catch {
      answer = buildFallbackAnswer(intent, data as Record<string, unknown>);
    }

    return jsonResponse({ answer, intent, data });
  } catch (error) {
    const errorMessage = error instanceof Error
      ? error.message
      : typeof error === "object" && error && "message" in error
        ? String((error as { message?: unknown }).message)
        : "No pude procesar la consulta.";
    return jsonResponse({
      answer: errorMessage,
      intent: "error",
      data: {}
    }, 500);
  }
});
