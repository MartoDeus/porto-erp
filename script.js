const SESSION_KEY = "portoErp.session";
const REMEMBER_KEY = "portoErp.rememberedUser";
const DIESEL_KARDEX_KEY = "portoErp.dieselKardex";
const SUPABASE_URL = "https://hkkgyjkwkezsomjmwnen.supabase.co";
const SUPABASE_PUBLISHABLE_KEY = "sb_publishable_RjChk1_7hpPnWrqdkJiT5g__tKanqgX";
const INTERNAL_AUTH_DOMAIN = "alm.local";

const loginForm = document.querySelector("#loginForm");
const authPage = document.querySelector("#authPage");
const dashboardPage = document.querySelector("#dashboardPage");
const appSidebar = document.querySelector(".app-sidebar");
const sidebarNav = document.querySelector(".sidebar-nav");
const sidebarScrollbar = document.querySelector("#sidebarScrollbar");
const sidebarScrollbarThumb = document.querySelector("#sidebarScrollbarThumb");
const usernameInput = document.querySelector("#username");
const passwordInput = document.querySelector("#password");
const rememberInput = document.querySelector("#rememberMe");
const formMessage = document.querySelector("#formMessage");
const togglePasswordButton = document.querySelector("#togglePassword");
const recoverButton = document.querySelector("#recoverButton");
const logoutButton = document.querySelector("#logoutButton");
const welcomeText = document.querySelector("#welcomeText");
const navItems = document.querySelectorAll(".nav-item[data-page]");
const pageViews = document.querySelectorAll(".page-view");
const topbarTitle = document.querySelector(".topbar-title h2");
const menuButton = document.querySelector(".menu-button");
const notificationButton = document.querySelector("#notificationButton");
const notificationPanel = document.querySelector("#notificationPanel");
const toastContainer = document.querySelector("#toastContainer");
const profileButton = document.querySelector("#profileButton");
const profileMenu = document.querySelector("#profileMenu");
const consultDieselButton = document.querySelector("#consultDieselButton");
const profileName = document.querySelector("#profileName");
const profileMenuName = document.querySelector("#profileMenuName");
const profileMenuRole = document.querySelector("#profileMenuRole");
const profileInitials = document.querySelector("#profileInitials");
const profileMenuInitials = document.querySelector("#profileMenuInitials");
const dashboardGreeting = document.querySelector("#dashboardGreeting");

let sidebarScrollbarHideTimeout = null;

const birthdayPeople = [
  { name: "Mario Enrique Alcedo", role: "Rigger", month: 4, day: 5 },
  { name: "Carlos Enrique Fernandez", role: "Operador Grúa Montacargas", month: 6, day: 8 },
  { name: "Javier Eduardo Fernandez", role: "Rigger", month: 3, day: 9 },
  { name: "Wilmer Angel Purizaca", role: "Operador Grúa Montacargas", month: 6, day: 4 },
  { name: "Renato Fabricio Timana", role: "Supervisor de Operaciones", month: 9, day: 5 },
  { name: "Marlon Eddy Chapilliquen", role: "Maniobrista", month: 4, day: 2 },
  { name: "Betty Isabel Panta", role: "Analista de Operaciones", month: 10, day: 2 },
  { name: "Luis Alberto Alcas", role: "Maniobrista", month: 4, day: 4 }
];

const birthdayState = {
  viewDate: null,
  showAll: false,
  selectedDay: null,
  initialized: false
};

const birthdayRefs = {
  monthCount: document.querySelector("#birthdayMonthCount"),
  weekCount: document.querySelector("#birthdayWeekCount"),
  threeDayCount: document.querySelector("#birthdayThreeDayCount"),
  yearCount: document.querySelector("#birthdayYearCount"),
  listMonthLabel: document.querySelector("#birthdayListMonthLabel"),
  list: document.querySelector("#birthdayList"),
  showAll: document.querySelector("#birthdayShowAll"),
  prevMonth: document.querySelector("#birthdayPrevMonth"),
  nextMonth: document.querySelector("#birthdayNextMonth"),
  calendarTitle: document.querySelector("#birthdayCalendarTitle"),
  calendarGrid: document.querySelector("#birthdayCalendarGrid"),
  miniList: document.querySelector("#birthdayMiniList"),
  miniShowAll: document.querySelector("#birthdayMiniShowAll"),
  goCurrentMonth: document.querySelector("#birthdayGoCurrentMonth"),
  configCard: document.querySelector(".birthday-config-card")
};

const passengerRefs = {
  date: document.querySelector("#passengerDate"),
  prevDay: document.querySelector("#passengerPrevDay"),
  nextDay: document.querySelector("#passengerNextDay"),
  vessel: document.querySelector("#vesselSelect"),
  contractor: document.querySelector("#contractorSelect"),
  routine: document.querySelector("#routineSelect"),
  quantity: document.querySelector("#quantityInput"),
  rows: document.querySelector("#passengerRows"),
  add: document.querySelector("#addPassengerEntry"),
  clear: document.querySelector("#clearPassengerButton"),
  save: document.querySelector("#savePassengerButton"),
  new: document.querySelector("#newPassengerButton"),
  summaryDate: document.querySelector("#summaryDate"),
  summaryVessel: document.querySelector("#summaryVessel"),
  summaryMovement: document.querySelector("#summaryMovement"),
  summaryShift: document.querySelector("#summaryShift"),
  summaryTotal: document.querySelector("#summaryTotal"),
  rowCount: document.querySelector("#passengerRowCount"),
  tableTotal: document.querySelector("#passengerTableTotal"),
  statTotalPassengers: document.querySelector("#statTotalPassengers")
};

const dieselRefs = {
  date: document.querySelector("#dieselDate"),
  prevDay: document.querySelector("#dieselPrevDay"),
  nextDay: document.querySelector("#dieselNextDay"),
  origin: document.querySelector("#dieselOriginSelect"),
  receive: document.querySelector("#dieselReceiveSelect"),
  receivePlatformToggle: document.querySelector("#dieselReceivePlatformToggle"),
  captain: document.querySelector("#dieselCaptain"),
  driver: document.querySelector("#dieselDriver"),
  document: document.querySelector("#dieselDocument"),
  recharge: document.querySelector("#dieselRecharge"),
  rechargeVoucher: document.querySelector("#dieselRechargeVoucher"),
  consumption: document.querySelector("#dieselConsumption"),
  returnVolume: document.querySelector("#dieselReturn"),
  difference: document.querySelector("#dieselDifference"),
  qty: document.querySelector("#dieselDispatchQty"),
  voucher: document.querySelector("#dieselDispatchVoucher"),
  add: document.querySelector("#addDieselDispatch"),
  clear: document.querySelector("#clearDieselButton"),
  save: document.querySelector("#saveDieselButton"),
  rows: document.querySelector("#dieselDispatchRows"),
  summaryVessel: document.querySelector("#dieselSummaryVessel"),
  summaryInitial: document.querySelector("#dieselSummaryInitial"),
  summaryRecharge: document.querySelector("#dieselSummaryRecharge"),
  summaryDispatched: document.querySelector("#dieselSummaryDispatched"),
  summaryTransferred: document.querySelector("#dieselSummaryTransferred"),
  summaryConsumption: document.querySelector("#dieselSummaryConsumption"),
  summaryDifference: document.querySelector("#dieselSummaryDifference"),
  summaryFinal: document.querySelector("#dieselSummaryFinal"),
  statFinal: document.querySelector("#dieselStatFinal"),
  statRecharge: document.querySelector("#dieselStatRecharge"),
  statDispatched: document.querySelector("#dieselStatDispatched"),
  statTransferred: document.querySelector("#dieselStatTransferred"),
  statConsumption: document.querySelector("#dieselStatConsumption"),
  observation: document.querySelector("#dieselObservation"),
  observationCount: document.querySelector("#dieselObservationCount"),
  shiftDay: document.querySelector('input[name="dieselShift"][value="Diurno"]'),
  consultDate: document.querySelector("#dieselConsultDate"),
  consultVessel: document.querySelector("#dieselConsultVessel"),
  consultShift: document.querySelector("#dieselConsultShift"),
  consultPrevDay: document.querySelector("#consultPrevDay"),
  consultNextDay: document.querySelector("#consultNextDay"),
  consultTabs: document.querySelector("#dieselConsultTabs"),
  consultGroups: document.querySelector("#dieselConsultGroups"),
  consultSummary: document.querySelector("#dieselConsultSummary"),
  consultRefresh: document.querySelector("#refreshDieselConsult"),
  consultExcel: document.querySelector("#exportDieselExcel"),
  consultReportExcel: document.querySelector("#downloadDieselExcel"),
  consultPdf: document.querySelector("#downloadDieselPdf"),
  consultBack: document.querySelector("#backFromConsult"),
  consultModeToggle: document.querySelector("#toggleDieselConsultMode"),
  editModal: document.querySelector("#dieselEditModal"),
  editClose: document.querySelector("#dieselEditClose"),
  editCancel: document.querySelector("#dieselEditCancel"),
  editDelete: document.querySelector("#dieselEditDelete"),
  editSave: document.querySelector("#dieselEditSave"),
  editSubtitle: document.querySelector("#dieselEditSubtitle"),
  editDateLabel: document.querySelector("#dieselEditDateLabel"),
  editVesselLabel: document.querySelector("#dieselEditVesselLabel"),
  editReceived: document.querySelector("#dieselEditReceived"),
  editReceivedFrom: document.querySelector("#dieselEditReceivedFrom"),
  editRecharge: document.querySelector("#dieselEditRecharge"),
  editConsumption: document.querySelector("#dieselEditConsumption"),
  editSondage: document.querySelector("#dieselEditSondage"),
  editDispatched: document.querySelector("#dieselEditDispatched"),
  editTransferred: document.querySelector("#dieselEditTransferred"),
  editSondageReturn: document.querySelector("#dieselEditSondageReturn"),
  editDispatchRows: document.querySelector("#dieselEditDispatchRows"),
  editDispatchVoucher: document.querySelector("#dieselEditDispatchVoucher"),
  editSondageVoucher: document.querySelector("#dieselEditSondageVoucher"),
  editRechargeVoucher: document.querySelector("#dieselEditRechargeVoucher"),
  editObservations: document.querySelector("#dieselEditObservations"),
  editCaptain: document.querySelector("#dieselEditCaptain"),
  editDriver: document.querySelector("#dieselEditDriver"),
  editInitial: document.querySelector("#dieselEditInitial"),
  editFinal: document.querySelector("#dieselEditFinal"),
  editShiftInputs: document.querySelectorAll('input[name="dieselEditShift"]')
};

const bitacoraRefs = {
  date: document.querySelector("#bitacoraDate"),
  prevDay: document.querySelector("#bitacoraPrevDay"),
  nextDay: document.querySelector("#bitacoraNextDay"),
  startTime: document.querySelector("#bitacoraStartTime"),
  endTime: document.querySelector("#bitacoraEndTime"),
  vessel: document.querySelector("#bitacoraVessel"),
  description: document.querySelector("#bitacoraDescription"),
  count: document.querySelector("#bitacoraCount"),
  submit: document.querySelector("#bitacoraSubmit"),
  todayLabel: document.querySelector("#bitacoraTodayLabel"),
  shiftLabel: document.querySelector("#bitacoraShiftLabel"),
  lastEvent: document.querySelector("#bitacoraLastEvent"),
  timeline: document.querySelector("#bitacoraTimeline"),
  timelineCount: document.querySelector("#bitacoraTimelineCount"),
  viewAll: document.querySelector("#bitacoraViewAll"),
  reportButton: document.querySelector("#bitacoraReportButton"),
  reportDate: document.querySelector("#bitacoraReportDate"),
  reportPrevDay: document.querySelector("#bitacoraReportPrevDay"),
  reportNextDay: document.querySelector("#bitacoraReportNextDay"),
  reportShift: document.querySelector("#bitacoraReportShift"),
  reportGroups: document.querySelector("#bitacoraReportGroups"),
  reportBack: document.querySelector("#bitacoraReportBackButton"),
  categorizeButton: document.querySelector("#bitacoraCategorizeButton"),
  backButton: document.querySelector("#bitacoraBackButton"),
  categorizeDate: document.querySelector("#categorizeDateFilter"),
  categorizePrevDay: document.querySelector("#categorizePrevDay"),
  categorizeNextDay: document.querySelector("#categorizeNextDay"),
  categorizeVessel: document.querySelector("#categorizeVesselFilter"),
  categorizeType: document.querySelector("#categorizeTypeFilter"),
  clearFilters: document.querySelector("#clearCategorizeFilters"),
  eventsBody: document.querySelector("#categorizeEventsBody"),
  visibleCount: document.querySelector("#categorizeVisibleCount"),
  tableSummary: document.querySelector("#categorizeTableSummary"),
  pendingMetric: document.querySelector("#categorizePendingMetric"),
  classifiedMetric: document.querySelector("#categorizeClassifiedMetric"),
  todayMetric: document.querySelector("#categorizeTodayMetric"),
  metricFilters: document.querySelectorAll("[data-status-filter]"),
  categoryGrid: document.querySelector("#categoryButtonGrid"),
  categorySelectionLabel: document.querySelector("#categorizeSelectionLabel"),
  categorizedCount: document.querySelector("#categorizedCount"),
  saveMessage: document.querySelector("#categorizeSaveMessage"),
  saveCategorized: document.querySelector("#saveCategorizedDay")
};

const navesRefs = {
  canvas: document.querySelector("#navesCanvas"),
  fleet: document.querySelector("#navesFleetStrip"),
  name: document.querySelector("#navesShipName"),
  type: document.querySelector("#navesShipType"),
  status: document.querySelector("#navesShipStatus"),
  code: document.querySelector("#navesShipCode"),
  location: document.querySelector("#navesShipLocation"),
  activity: document.querySelector("#navesShipActivity"),
  operational: document.querySelector("#navesOperationalText"),
  incident: document.querySelector("#navesIncidentText"),
  locationText: document.querySelector("#navesLocationText"),
  coordinates: document.querySelector("#navesCoordinatesText"),
  crew: document.querySelector("#navesCrewText"),
  dieselLevel: document.querySelector("#navesDieselLevel"),
  dieselText: document.querySelector("#navesDieselText"),
  waterLevel: document.querySelector("#navesWaterLevel"),
  waterText: document.querySelector("#navesWaterText"),
  oilLevel: document.querySelector("#navesOilLevel"),
  oilText: document.querySelector("#navesOilText")
};

const dieselCatalog = [
  { item: 1, group: "REMOLCADOR", tab: "Remolcador", icon: "anchor", ship: "LOBITOS EXPRESS (CARGA)", initialStock: 20000, type: "Desp.", dayCrew: "ANDRES YENQUE / JUAN MORE ZAPATA", nightCrew: "AN GONZALES ALVARADO / ALEXANDER MORALES CASTRO", received: 0, receivedFrom: "-", day: 0, night: 0, dispatched: 400, transferred: 0 },
  { item: 2, group: "REMOLCADOR", tab: "Remolcador", icon: "anchor", ship: "LOBITOS EXPRESS (CONSUMO)", initialStock: 2580, type: "Desp.", dayCrew: "ANDRES YENQUE / JUAN MORE ZAPATA", nightCrew: "AN GONZALES ALVARADO / ALEXANDER MORALES CASTRO", received: 200, receivedFrom: "LOBITOS EXPRESS", day: 68, night: 48, dispatched: 0, transferred: 0 },
  { item: 3, group: "NAVE PASAJEROS/DESPACHADORES", tab: "Pasajeros / Despachadores", icon: "users", ship: "PARIÑAS", initialStock: 8919, type: "Desp.", dayCrew: "CESAR PERICHE SOSA / MIGUEL SALDARRIAGA", nightCrew: "WILFREDO BOULANGGER / JULIO MORALES CASTRO", received: 0, receivedFrom: "-", day: 149, night: 62, dispatched: 150, transferred: 20 },
  { item: 4, group: "NAVE PASAJEROS/DESPACHADORES", tab: "Pasajeros / Despachadores", icon: "users", ship: "TALARA", initialStock: 6824, type: "Transfer.", dayCrew: "CARLOS CHUNGA RUIZ / JOSE CORDOVA GALVEZ", nightCrew: "DONALD ZAPATA / SEGUNDO CESPEDES FRIAS", received: 0, receivedFrom: "-", day: 158, night: 20, dispatched: 970, transferred: 0 },
  { item: 5, group: "NAVE PASAJEROS/DESPACHADORES", tab: "Pasajeros / Despachadores", icon: "users", ship: "NEPTUNE EXPRESS", initialStock: 600, type: "Desp.", dayCrew: "CUSTODIA", nightCrew: "CUSTODIA", received: 0, receivedFrom: "-", day: 0, night: 0, dispatched: 0, transferred: 0 },
  { item: 6, group: "NAVE PASAJEROS/DESPACHADORES", tab: "Pasajeros / Despachadores", icon: "users", ship: "OLYMPIC EXPRESS", initialStock: 2048, type: "Desp.", dayCrew: "JORGE REQUENA MORALES / JOSE SOLANO", nightCrew: "OSCAR BOULANGGER / MARLON SANTILLAN", received: 150, receivedFrom: "TALARA", day: 165, night: 18, dispatched: 0, transferred: 0 },
  { item: 7, group: "NAVE RECORRIDO", tab: "Naves Recorrido", icon: "route", ship: "DONALD ROBIN", initialStock: 408, type: "Desp.", dayCrew: "ANGEL ZETA VALLADOLID / CESAR AREVALO BENITES", nightCrew: "T.DIA", received: 200, receivedFrom: "TALARA", day: 72, night: 0, dispatched: 0, transferred: 0 },
  { item: 8, group: "NAVE RECORRIDO", tab: "Naves Recorrido", icon: "route", ship: "SHEILA R", initialStock: 260, type: "Desp.", dayCrew: "JUAN CORONADO / JULIO NUÑEZ", nightCrew: "ELEUTERIO SANDOVAL / EDWIN NIZAMA", received: 200, receivedFrom: "LOBITOS EXPRESS", day: 61, night: 35, dispatched: 0, transferred: 0 },
  { item: 9, group: "NAVE RECORRIDO", tab: "Naves Recorrido", icon: "route", ship: "IRIS", initialStock: 425, type: "Desp.", dayCrew: "HUMBERTO CASTILLO / JULIO PAREDES", nightCrew: "JULIO RAMOS / ANDRES SERNAQUE", received: 200, receivedFrom: "TALARA", day: 55, night: 62, dispatched: 0, transferred: 0 },
  { item: 10, group: "NAVE RECORRIDO", tab: "Naves Recorrido", icon: "route", ship: "VILMA", initialStock: 0, type: "Desp.", dayCrew: "JAIME PANTA / ARMANDO ALTAMIRANO", nightCrew: "VARADERO", received: 0, receivedFrom: "-", day: 0, night: 0, dispatched: 0, transferred: 0 },
  { item: 11, group: "NAVE RECORRIDO", tab: "Naves Recorrido", icon: "route", ship: "ROSLYN", initialStock: 633, type: "Desp.", dayCrew: "PERSONAL DE CAMPO", nightCrew: "PERSONAL DE CAMPO", received: 0, receivedFrom: "-", day: 0, night: 0, dispatched: 0, transferred: 0 },
  { item: 12, group: "NAVE RECORRIDO", tab: "Naves Recorrido", icon: "route", ship: "CHIP II", initialStock: 233, type: "Desp.", dayCrew: "CARLOS LEYTON DIAZ", nightCrew: "VICTOR SAAVEDRA SOCOLA", received: 0, receivedFrom: "-", day: 51, night: 0, dispatched: 0, transferred: 0 },
  { item: 13, group: "NAVE RECORRIDO", tab: "Naves Recorrido", icon: "route", ship: "BUCKLEY EXPRESS", initialStock: 475, type: "Desp.", dayCrew: "MARIO PAIBA", nightCrew: "HERNAN CHULLI", received: 150, receivedFrom: "-", day: 67, night: 0, dispatched: 0, transferred: 0 },
  { item: 14, group: "NAVE RECORRIDO", tab: "Naves Recorrido", icon: "route", ship: "CABO BLANCO", initialStock: 720, type: "Desp.", dayCrew: "JORGE MORAN", nightCrew: "GUILLERMO LOPEZ", received: 0, receivedFrom: "-", day: 60, night: 0, dispatched: 0, transferred: 0 },
  { item: 15, group: "BARCAZA", tab: "Barcaza", icon: "ship", ship: "ELIZABETH", initialStock: 1983, type: "Barge", dayCrew: "LUIS ZAPATA BAYONA / MARTIN VASQUEZ MORALES", nightCrew: "LUIS ZAPATA BAYONA / MARTIN VASQUEZ MORALES", received: 0, receivedFrom: "-", day: 3, night: 18, dispatched: 0, transferred: 0 },
  { item: 16, group: "BARCAZA", tab: "Barcaza", icon: "ship", ship: "ORO", initialStock: 2228, type: "Barge", dayCrew: "ALFREDO CAVERO / FERNANDO SUAREZ", nightCrew: "RODOLFO CRUZ / FRANCISCO CHUNGA", received: 0, receivedFrom: "-", day: 36, night: 36, dispatched: 0, transferred: 0 },
  { item: 17, group: "BARCAZA", tab: "Barcaza", icon: "ship", ship: "ROGUE", initialStock: 1970, type: "Barge", dayCrew: "EDGAR FERNANDEZ SEMINARIO / JOSE VALVERDE ESPINOZA", nightCrew: "EDGAR FERNANDEZ SEMINARIO / JUAN MAYO LIZARBE", received: 0, receivedFrom: "-", day: 33, night: 38, dispatched: 0, transferred: 0 },
  { item: 18, group: "BARCAZA", tab: "Barcaza", icon: "ship", ship: "MR BOB", initialStock: 2086, type: "Barge", dayCrew: "CARLOS MORE / DIEGO NIZAMA MORE", nightCrew: "JAIME ROJAS / GERMAN CHUNGA", received: 0, receivedFrom: "-", day: 15, night: 40, dispatched: 0, transferred: 0 },
  { item: 19, group: "BARCAZA", tab: "Barcaza", icon: "ship", ship: "JADE (IMI)", initialStock: 0, type: "Barge", dayCrew: "-", nightCrew: "-", received: 0, receivedFrom: "-", day: 0, night: 0, dispatched: 0, transferred: 0 },
  { item: 20, group: "FLOTA TALARA", tab: "Flota Talara", icon: "ship-wheel", ship: "LJ KELLEY", initialStock: 678, type: "Field", dayCrew: "RAMON JACINTO TUME / PERCY NAVARRO MARTINEZ", nightCrew: "T.DIA", received: 0, receivedFrom: "-", day: 0, night: 0, dispatched: 0, transferred: 0 }
];

const navesFleet = [
  { id: "talara", name: "TALARA", type: "Remolcador", status: "Operativa", code: "CO-5678-EM", location: "Puerto Talara, Perú", coordinates: "04°34.567' S · 081°16.789' W", activity: "17:30", crew: 6, diesel: 68, water: 82, oil: 76, color: "#008f5f", accent: "#064e3b", incidents: "Sin incidencias" },
  { id: "lobitos", name: "LOBITOS EXPRESS", type: "Nave de apoyo", status: "Operativa", code: "LB-2042-PE", location: "Muelle Lobitos", coordinates: "04°27.214' S · 081°17.021' W", activity: "16:40", crew: 5, diesel: 72, water: 64, oil: 70, color: "#0b72d9", accent: "#064986", incidents: "Sin incidencias" },
  { id: "parinas", name: "PARIÑAS", type: "Remolcador", status: "En ruta", code: "PA-1187-EM", location: "Bahía Talara", coordinates: "04°35.008' S · 081°18.110' W", activity: "15:10", crew: 6, diesel: 54, water: 78, oil: 61, color: "#f28c18", accent: "#9a4b04", incidents: "Monitoreo de ruta" },
  { id: "mrbob", name: "MR BOB", type: "Remolcador", status: "Operativa", code: "MB-8821-PE", location: "Puerto Talara, Perú", coordinates: "04°33.452' S · 081°16.902' W", activity: "14:25", crew: 4, diesel: 83, water: 71, oil: 80, color: "#d92332", accent: "#7a0d17", incidents: "Sin incidencias" },
  { id: "sheila", name: "SHEILA R", type: "Nave de carga", status: "Operativa", code: "SR-4307-PE", location: "Zona de carga", coordinates: "04°34.812' S · 081°17.512' W", activity: "13:50", crew: 7, diesel: 61, water: 58, oil: 69, color: "#1f74c9", accent: "#0a3e70", incidents: "Sin incidencias" },
  { id: "elizabeth", name: "ELIZABETH", type: "Nave de apoyo", status: "Mantenimiento", code: "EL-0904-PE", location: "Astillero Talara", coordinates: "04°34.120' S · 081°15.984' W", activity: "12:05", crew: 3, diesel: 46, water: 52, oil: 44, color: "#0fa7b5", accent: "#075f66", incidents: "Mantenimiento preventivo" },
  { id: "ca2066", name: "CA-2066", type: "Nave multipropósito", status: "Operativa", code: "CA-2066", location: "Puerto Talara, Perú", coordinates: "04°34.681' S · 081°17.203' W", activity: "16:55", crew: 5, diesel: 73, water: 66, oil: 58, color: "#0d4f8f", accent: "#061d33", incidents: "Sin incidencias", variant: "workboat", image: "assets/naves/ca-2066.png" }
];

let selectedNaveId = "talara";
let navesSceneState = null;

const dieselShips = dieselCatalog.map((unit) => unit.ship);
const dieselPlatforms = [
  "ESPERANZA 1",
  "GENERADOR ES1",
  "GRUA ES1",
  "ES1",
  "LT12",
  "PP",
  "DD",
  "NN",
  "GG",
  "PN2",
  "PN1",
  "YY",
  "PN3",
  "PN5",
  "PN7",
  "PN9",
  "HH",
  "LO13",
  "LO14",
  "LO16",
  "LO6",
  "LO7",
  "LO11",
  "LO9",
  "LO19",
  "LL",
  "LO10",
  "LO18",
  "LO3",
  "LO4",
  "KK",
  "R",
  "BB",
  "SP1",
  "CC",
  "PN8",
  "SP1A",
  "TT",
  "ZZ"
];

const dieselShifts = ["Diurno", "Nocturno"];
const dieselInitialStockByShip = {
  TALARA: 7006,
  "PARIÑAS": 2800,
  "SHEILA R": 1450,
  IRIS: 425,
  "CHIP II": 233,
  "BUCKLEY EXPRESS": 1800,
  "LOBITOS EXPRESS CARGA": 3200,
  "LOBITOS EXPRESS CONSUMO": 900,
  OLYMPIC: 2100,
  "CABO BLANCO": 1300,
  NEPTUNE: 1500,
  "LJ KELLEY": 1200,
  "PENA NEGRA": 1100,
  PROVIDENCIA: 950,
  "PLAYA TORTUGA": 1000,
  BAHIA: 850,
  LITORAL: 780,
  ALBACORA: 700,
  "SAN PEDRO": 650,
  PACIFICO: 620,
  MANCORA: 600
};
let usersCache = [];
const dieselInitialStockCache = new Map();
let passengerEntries = [];
let dieselDispatches = [];
let showAllDieselConsultItems = false;
let dieselConsultCache = { key: "", rows: [] };
let dieselEditDraft = null;
let bitacoraEventsCache = [];
let bitacoraTypesCache = [];
let bitacoraCategoriesCache = [];
let bitacoraStatusFilter = "all";
const bitacoraClassificationDraft = new Map();

function setMessage(text, type = "") {
  formMessage.textContent = text;
  formMessage.className = `form-message ${type}`.trim();
}

function normalize(value) {
  return String(value).trim().toLowerCase();
}

async function sha256(text) {
  const encoded = new TextEncoder().encode(text);
  const digest = await crypto.subtle.digest("SHA-256", encoded);
  return Array.from(new Uint8Array(digest))
    .map((byte) => byte.toString(16).padStart(2, "0"))
    .join("");
}

async function loadUsers() {
  if (usersCache.length > 0) {
    return usersCache;
  }

  const response = await fetch("data/users.json", { cache: "no-store" });

  if (!response.ok) {
    throw new Error("No se pudo cargar el archivo de usuarios.");
  }

  usersCache = await response.json();
  return usersCache;
}

function buildAuthEmail(username) {
  const userKey = normalize(username);
  return userKey.includes("@") ? userKey : `${userKey}@${INTERNAL_AUTH_DOMAIN}`;
}

function formatRoleName(roleName) {
  if (!roleName) {
    return "Visitante";
  }

  return roleName
    .split(" ")
    .map((word) => word.charAt(0).toUpperCase() + word.slice(1).toLowerCase())
    .join(" ");
}

function getFriendlyAuthError(message) {
  if (/invalid login credentials/i.test(message)) {
    return "Usuario o contraseña incorrectos.";
  }

  if (/jwt expired|invalid jwt|expired/i.test(message)) {
    return "Tu sesión expiró. Vuelve a iniciar sesión para continuar.";
  }

  if (/email not confirmed/i.test(message)) {
    return "El usuario todavia no esta confirmado en Supabase.";
  }

  if (/failed to fetch|network/i.test(message)) {
    return "No se pudo conectar con Supabase. Revisa tu conexion.";
  }

  return message;
}

function isExpiredSessionMessage(message) {
  return /jwt expired|invalid jwt|expired/i.test(message || "");
}

async function refreshStoredSession() {
  const session = getSession();

  if (!session?.refreshToken) {
    return null;
  }

  const response = await fetch(`${SUPABASE_URL}/auth/v1/token?grant_type=refresh_token`, {
    method: "POST",
    headers: {
      apikey: SUPABASE_PUBLISHABLE_KEY,
      "Content-Type": "application/json"
    },
    body: JSON.stringify({ refresh_token: session.refreshToken })
  });
  const text = await response.text();
  const payload = text ? JSON.parse(text) : null;

  if (!response.ok || !payload?.access_token) {
    sessionStorage.removeItem(SESSION_KEY);
    return null;
  }

  const refreshedSession = {
    ...session,
    accessToken: payload.access_token,
    refreshToken: payload.refresh_token || session.refreshToken,
    startedAt: new Date().toISOString()
  };
  sessionStorage.setItem(SESSION_KEY, JSON.stringify(refreshedSession));
  return refreshedSession;
}

async function supabaseRequest(path, options = {}) {
  const headers = {
    apikey: SUPABASE_PUBLISHABLE_KEY,
    "Content-Type": "application/json",
    ...options.headers
  };

  const response = await fetch(`${SUPABASE_URL}${path}`, {
    ...options,
    headers
  });

  const text = await response.text();
  const payload = text ? JSON.parse(text) : null;

  if (!response.ok) {
    const message = payload?.error_description || payload?.msg || payload?.message || "No se pudo conectar con Supabase.";
    if (isExpiredSessionMessage(message) && !options.skipAuthRetry) {
      const refreshedSession = await refreshStoredSession();
      if (refreshedSession?.accessToken) {
        return supabaseRequest(path, {
          ...options,
          skipAuthRetry: true,
          headers: {
            ...options.headers,
            Authorization: `Bearer ${refreshedSession.accessToken}`
          }
        });
      }
    }
    const error = new Error(getFriendlyAuthError(message));
    error.authExpired = isExpiredSessionMessage(message);
    throw error;
  }

  return payload;
}

async function loadSupabaseProfile(authUser, accessToken) {
  const query = new URLSearchParams({
    select: "id,email,username,nombre,estado,roles(codigo,nombre)",
    id: `eq.${authUser.id}`,
    limit: "1"
  });
  const profiles = await supabaseRequest(`/rest/v1/perfiles?${query}`, {
    headers: {
      Authorization: `Bearer ${accessToken}`
    }
  });
  const profile = profiles?.[0];

  if (!profile || profile.estado !== "activo") {
    throw new Error("Tu usuario no tiene un perfil activo en el ERP.");
  }

  return profile;
}

function saveSession(user, remember) {
  const session = {
    id: user.id,
    name: user.name,
    username: user.username,
    role: user.role,
    accessToken: user.accessToken,
    refreshToken: user.refreshToken,
    authProvider: user.authProvider || "supabase",
    startedAt: new Date().toISOString()
  };

  sessionStorage.setItem(SESSION_KEY, JSON.stringify(session));

  if (remember) {
    localStorage.setItem(REMEMBER_KEY, user.username);
  } else {
    localStorage.removeItem(REMEMBER_KEY);
  }
}

function getSession() {
  const rawSession = sessionStorage.getItem(SESSION_KEY);
  return rawSession ? JSON.parse(rawSession) : null;
}

function getCurrentUserDisplayName() {
  const session = getSession();
  return formatShortPersonName(session?.name || session?.username || "Usuario");
}

function formatShortPersonName(name) {
  const words = String(name || "")
    .trim()
    .split(/\s+/)
    .filter(Boolean);

  if (words.length >= 3) {
    return `${words[2]} ${words[0]}`;
  }

  if (words.length >= 2) {
    return `${words[0]} ${words[1]}`;
  }

  return words[0] || "Usuario";
}

function getUserInitials(name) {
  const words = String(name || "")
    .trim()
    .split(/\s+/)
    .filter(Boolean);

  if (words.length === 0) {
    return "--";
  }

  return words
    .slice(0, 2)
    .map((word) => word.charAt(0))
    .join("")
    .toUpperCase();
}

function showDashboard(session) {
  authPage.hidden = true;
  dashboardPage.hidden = false;
  setPage("dashboard");
  resetPassengerInitialState();
  resetDieselInitialState();
  const displayName = formatShortPersonName(session.name || session.username);
  const firstName = displayName.trim().split(/\s+/)[0] || "Usuario";
  const initials = getUserInitials(displayName);
  welcomeText.textContent = session.role;
  profileName.textContent = displayName;
  profileMenuName.textContent = displayName;
  profileMenuRole.textContent = session.role === "Administrador" ? "Administrador General" : session.role;
  if (profileInitials) profileInitials.textContent = initials;
  if (profileMenuInitials) profileMenuInitials.textContent = initials;
  if (dashboardGreeting) {
    dashboardGreeting.textContent = `Bienvenido, ${firstName}`;
  }
  renderIcons();
}

function showLogin() {
  sessionStorage.removeItem(SESSION_KEY);
  closeNotificationPanel();
  closeProfileMenu();
  dashboardPage.hidden = true;
  authPage.hidden = false;
  passwordInput.value = "";
  setMessage("");
  usernameInput.focus();
  renderIcons();
}

function setSidebarCollapsed(isCollapsed) {
  if (!dashboardPage || !menuButton) {
    return;
  }
  dashboardPage.classList.toggle("sidebar-collapsed", isCollapsed);
  if (window.innerWidth > 900) {
    dashboardPage.style.gridTemplateColumns = isCollapsed ? "78px minmax(0, 1fr)" : "252px minmax(0, 1fr)";
    if (appSidebar) {
      appSidebar.style.width = isCollapsed ? "78px" : "252px";
    }
  } else {
    dashboardPage.style.gridTemplateColumns = "";
    if (appSidebar) {
      appSidebar.style.width = "";
    }
  }
  menuButton.setAttribute("aria-expanded", String(!isCollapsed));
  menuButton.setAttribute("aria-label", isCollapsed ? "Expandir menú" : "Contraer menú");
  sessionStorage.setItem("portoErp.sidebarCollapsed", String(isCollapsed));
  window.requestAnimationFrame(() => {
    updateSidebarScrollbar();
  });
}

function updateSidebarScrollbar() {
  if (!sidebarNav || !sidebarScrollbar || !sidebarScrollbarThumb) {
    return;
  }

  const visibleHeight = sidebarNav.clientHeight;
  const scrollHeight = sidebarNav.scrollHeight;
  const maxScrollTop = Math.max(1, scrollHeight - visibleHeight);
  const canScroll = scrollHeight > visibleHeight + 2;

  sidebarScrollbar.hidden = !canScroll;
  if (!canScroll) {
    return;
  }

  const trackHeight = sidebarScrollbar.clientHeight;
  const thumbHeight = Math.max(40, (visibleHeight / scrollHeight) * trackHeight);
  const maxThumbTop = Math.max(0, trackHeight - thumbHeight);
  const thumbTop = (sidebarNav.scrollTop / maxScrollTop) * maxThumbTop;

  sidebarScrollbarThumb.style.height = `${thumbHeight}px`;
  sidebarScrollbarThumb.style.transform = `translateY(${thumbTop}px)`;
}

function hideSidebarScrollbar() {
  if (!sidebarScrollbar) {
    return;
  }
  sidebarScrollbar.classList.remove("visible");
}

function scheduleSidebarScrollbarHide(delay = 700) {
  if (sidebarScrollbarHideTimeout) {
    window.clearTimeout(sidebarScrollbarHideTimeout);
  }
  sidebarScrollbarHideTimeout = window.setTimeout(hideSidebarScrollbar, delay);
}

function showSidebarScrollbar(delay = 900) {
  if (!sidebarScrollbar || sidebarScrollbar.hidden) {
    return;
  }
  sidebarScrollbar.classList.add("visible");
  updateSidebarScrollbar();
  scheduleSidebarScrollbarHide(delay);
}

function setupSidebarScrollbar() {
  if (!sidebarNav || !sidebarScrollbar || !sidebarScrollbarThumb) {
    return;
  }

  updateSidebarScrollbar();

  sidebarNav.addEventListener("scroll", () => {
    updateSidebarScrollbar();
    showSidebarScrollbar(850);
  }, { passive: true });

  ["mouseenter", "mousemove", "wheel"].forEach((eventName) => {
    sidebarNav.addEventListener(eventName, () => {
      showSidebarScrollbar(eventName === "mouseenter" ? 650 : 900);
    }, { passive: true });
  });

  sidebarNav.addEventListener("mouseleave", () => {
    scheduleSidebarScrollbarHide(120);
  });

  sidebarScrollbar.addEventListener("mouseenter", () => {
    if (sidebarScrollbarHideTimeout) {
      window.clearTimeout(sidebarScrollbarHideTimeout);
    }
    sidebarScrollbar.classList.add("visible");
  });

  sidebarScrollbar.addEventListener("mouseleave", () => {
    scheduleSidebarScrollbarHide(120);
  });

  window.addEventListener("resize", updateSidebarScrollbar);
}

setSidebarCollapsed(sessionStorage.getItem("portoErp.sidebarCollapsed") === "true");
setupSidebarScrollbar();

function renderIcons() {
  if (window.lucide) {
    window.lucide.createIcons({
      attrs: {
        "stroke-width": 1.9
      }
    });
  }
}

function showSuccessToast(title = "Se guardó con éxito", message = "El registro se ha guardado correctamente.") {
  if (!toastContainer) {
    return;
  }

  const toast = document.createElement("div");
  toast.className = "toast-notification";
  toast.innerHTML = `
    <span class="toast-icon"><i data-lucide="check"></i></span>
    <span class="toast-content"><strong>${escapeHtml(title)}</strong><span>${escapeHtml(message)}</span></span>
    <button class="toast-close" type="button" aria-label="Cerrar notificación"><i data-lucide="x"></i></button>
  `;

  const removeToast = () => {
    toast.classList.remove("visible");
    window.setTimeout(() => toast.remove(), 250);
  };

  toast.querySelector(".toast-close")?.addEventListener("click", removeToast);
  toastContainer.appendChild(toast);
  renderIcons();
  window.requestAnimationFrame(() => toast.classList.add("visible"));
  window.setTimeout(removeToast, 3600);
}

function closeNotificationPanel() {
  if (notificationPanel && notificationButton) {
    notificationPanel.hidden = true;
    notificationButton.setAttribute("aria-expanded", "false");
  }
}

function closeProfileMenu() {
  if (profileMenu && profileButton) {
    profileMenu.hidden = true;
    profileButton.setAttribute("aria-expanded", "false");
  }
}

function setPage(pageName) {
  pageViews.forEach((view) => {
    const isActive = view.dataset.view === pageName;
    view.hidden = !isActive;
    view.classList.toggle("active", isActive);
  });

  navItems.forEach((item) => {
    const isBitacoraChild = pageName.startsWith("bitacora-") && item.dataset.page === "bitacora";
    item.classList.toggle("active", item.dataset.page === pageName || isBitacoraChild);
  });

  if (topbarTitle) {
    const pageTitles = {
      dashboard: "Dashboard",
      passengers: "Pasajeros",
      diesel: "Registro de Diesel",
      consulta: "Consulta",
      lubricante: "Lubricante",
      "agua-tratada": "Agua Tratada",
      "agua-consumo": "Agua de Consumo",
      buceo: "Buceo",
      horometros: "Horómetros",
      cargas: "Cargas",
      bitacora: "Bitácora",
      "bitacora-reporte": "Reporte de Bitácora",
      "bitacora-categorizar": "Clasificar Eventos",
      mapa: "Mapa",
      naves: "Naves",
      rutas: "Rutas",
      cumpleanos: "Cumpleaños",
      reportes: "Reportes",
      historial: "Historial",
      usuarios: "Usuarios",
      ajustes: "Ajustes"
    };
    topbarTitle.textContent = pageTitles[pageName] || "Dashboard";
  }

  closeNotificationPanel();
  closeProfileMenu();

  renderIcons();

  if (pageName === "naves") {
    initNavesView();
  }

  if (pageName === "cumpleanos") {
    initBirthdaysView();
  }

  if (pageName === "diesel") {
    syncDieselInitialStockDisplay();
  }
}

function getCheckedValue(name) {
  return document.querySelector(`input[name="${name}"]:checked`)?.value || "";
}

function formatDisplayDate(value) {
  if (!value) {
    return "";
  }

  const [year, month, day] = value.split("-");
  return `${day}/${month}/${year}`;
}

function getLocalDate(value = getTodayValue()) {
  return new Date(`${value}T00:00:00`);
}

function getMonthName(monthIndex) {
  return new Date(2026, monthIndex, 1).toLocaleDateString("es-PE", { month: "long" });
}

function getBirthdayDate(person, year) {
  return new Date(year, person.month - 1, person.day);
}

function getBirthdayInitials(name) {
  return String(name || "")
    .split(/\s+/)
    .filter(Boolean)
    .slice(0, 2)
    .map((part) => part[0]?.toUpperCase() || "")
    .join("");
}

function getDaysUntilBirthday(person, fromDate = getLocalDate()) {
  const today = new Date(fromDate.getFullYear(), fromDate.getMonth(), fromDate.getDate());
  let birthday = getBirthdayDate(person, today.getFullYear());

  if (birthday < today) {
    birthday = getBirthdayDate(person, today.getFullYear() + 1);
  }

  return Math.round((birthday - today) / 86400000);
}

function formatBirthdayDate(person) {
  return `${String(person.day).padStart(2, "0")} de ${getMonthName(person.month - 1)}`;
}

function formatBirthdayStatus(days) {
  if (days === 0) {
    return "Hoy";
  }
  if (days === 1) {
    return "Mañana";
  }
  return `En ${days} días`;
}

function getBirthdaysForMonth(monthIndex) {
  return birthdayPeople
    .filter((person) => person.month === monthIndex + 1)
    .sort((a, b) => a.day - b.day || a.name.localeCompare(b.name));
}

function getUpcomingBirthdays(limit = birthdayPeople.length) {
  return [...birthdayPeople]
    .map((person) => ({ ...person, daysUntil: getDaysUntilBirthday(person) }))
    .sort((a, b) => a.daysUntil - b.daysUntil || a.name.localeCompare(b.name))
    .slice(0, limit);
}

function renderBirthdayStats() {
  const viewDate = birthdayState.viewDate || getLocalDate();
  const viewMonth = viewDate.getMonth();
  const today = getLocalDate();

  const monthCount = getBirthdaysForMonth(viewMonth).length;
  const weekCount = birthdayPeople.filter((person) => {
    const days = getDaysUntilBirthday(person, today);
    return days >= 0 && days <= 6;
  }).length;
  const threeDayCount = birthdayPeople.filter((person) => getDaysUntilBirthday(person, today) <= 3).length;

  if (birthdayRefs.monthCount) birthdayRefs.monthCount.textContent = monthCount;
  if (birthdayRefs.weekCount) birthdayRefs.weekCount.textContent = weekCount;
  if (birthdayRefs.threeDayCount) birthdayRefs.threeDayCount.textContent = threeDayCount;
  if (birthdayRefs.yearCount) birthdayRefs.yearCount.textContent = birthdayPeople.length;
}

function renderBirthdayList() {
  if (!birthdayRefs.list) {
    return;
  }

  const viewDate = birthdayState.viewDate || getLocalDate();
  const monthPeople = getBirthdaysForMonth(viewDate.getMonth());
  const people = birthdayState.selectedDay
    ? monthPeople.filter((person) => person.day === birthdayState.selectedDay)
    : monthPeople;
  const visiblePeople = birthdayState.showAll ? people : people.slice(0, 5);

  if (birthdayRefs.listMonthLabel) {
    birthdayRefs.listMonthLabel.textContent = birthdayState.selectedDay
      ? `${String(birthdayState.selectedDay).padStart(2, "0")} de ${getMonthName(viewDate.getMonth())}`
      : `${getMonthName(viewDate.getMonth())} ${viewDate.getFullYear()}`;
  }

  if (!people.length) {
    birthdayRefs.list.innerHTML = `
      <article class="birthday-empty">
        <i data-lucide="calendar-x"></i>
        <strong>Sin cumpleaños en este mes</strong>
        <span>Usa el calendario para revisar otro mes.</span>
      </article>
    `;
    if (birthdayRefs.showAll) birthdayRefs.showAll.hidden = true;
    return;
  }

  const nextName = getUpcomingBirthdays(1)[0]?.name;
  birthdayRefs.list.innerHTML = visiblePeople.map((person) => {
    const daysUntil = getDaysUntilBirthday(person);
    const isNext = person.name === nextName;
    return `
      <article class="birthday-person ${isNext ? "is-next" : ""}">
        <span class="person-avatar">${getBirthdayInitials(person.name)}</span>
        <div><strong>${escapeHtml(person.name)}</strong><small>${escapeHtml(person.role)}</small></div>
        <div class="birthday-date"><i data-lucide="cake"></i><strong>${formatBirthdayDate(person)}</strong><small>${formatBirthdayStatus(daysUntil)}</small></div>
        <button class="birthday-greet" type="button" data-birthday-greet="${escapeHtml(person.name)}">Saludar</button>
      </article>
    `;
  }).join("");

  if (birthdayRefs.showAll) {
    birthdayRefs.showAll.hidden = monthPeople.length <= 5 && !birthdayState.selectedDay;
    birthdayRefs.showAll.innerHTML = `${birthdayState.selectedDay ? "Ver cumpleaños del mes" : birthdayState.showAll ? "Ver menos" : "Ver todos los cumpleaños"}<i data-lucide="chevron-right"></i>`;
  }
}

function getBirthdayMarkerClass(person) {
  const days = getDaysUntilBirthday(person);
  if (days <= 1) {
    return "tomorrow";
  }
  if (days <= 7) {
    return "soon";
  }
  return "month";
}

function renderBirthdayCalendar() {
  if (!birthdayRefs.calendarGrid || !birthdayRefs.calendarTitle) {
    return;
  }

  const viewDate = birthdayState.viewDate || getLocalDate();
  const year = viewDate.getFullYear();
  const month = viewDate.getMonth();
  const firstDay = new Date(year, month, 1);
  const startOffset = (firstDay.getDay() + 6) % 7;
  const gridStart = new Date(year, month, 1 - startOffset);
  const birthdaysByDay = new Map(getBirthdaysForMonth(month).map((person) => [person.day, person]));

  birthdayRefs.calendarTitle.textContent = `${getMonthName(month)} ${year}`;

  const weekdays = ["Lun", "Mar", "Mié", "Jue", "Vie", "Sáb", "Dom"];
  const cells = weekdays.map((day) => `<b>${day}</b>`);

  for (let index = 0; index < 42; index += 1) {
    const cellDate = new Date(gridStart);
    cellDate.setDate(gridStart.getDate() + index);
    const isCurrentMonth = cellDate.getMonth() === month;
    const birthday = isCurrentMonth ? birthdaysByDay.get(cellDate.getDate()) : null;
    const classes = [
      "birthday-calendar-day",
      isCurrentMonth ? "" : "muted",
      birthdayState.selectedDay === cellDate.getDate() && isCurrentMonth ? "selected" : "",
      birthday ? `birthday-dot ${getBirthdayMarkerClass(birthday)}` : ""
    ].filter(Boolean).join(" ");
    const title = birthday ? ` title="${escapeHtml(birthday.name)}"` : "";
    cells.push(`<button class="${classes}" type="button"${title} data-birthday-day="${cellDate.getDate()}">${cellDate.getDate()}</button>`);
  }

  birthdayRefs.calendarGrid.innerHTML = cells.join("");
}

function renderBirthdayMiniList() {
  if (!birthdayRefs.miniList) {
    return;
  }

  birthdayRefs.miniList.innerHTML = getUpcomingBirthdays(3).map((person) => `
    <p>
      <span><i data-lucide="cake"></i></span>
      <b>${formatBirthdayStatus(person.daysUntil)} cumple ${escapeHtml(person.name)}</b>
      <small>${formatBirthdayDate(person)}</small>
    </p>
  `).join("");
}

function renderBirthdays() {
  renderBirthdayStats();
  renderBirthdayList();
  renderBirthdayCalendar();
  renderBirthdayMiniList();
  renderIcons();
}

function initBirthdaysView() {
  if (!birthdayRefs.list || birthdayState.initialized) {
    renderBirthdays();
    return;
  }

  const today = getLocalDate();
  birthdayState.viewDate = new Date(today.getFullYear(), today.getMonth(), 1);
  birthdayState.initialized = true;

  birthdayRefs.prevMonth?.addEventListener("click", () => {
    birthdayState.viewDate.setMonth(birthdayState.viewDate.getMonth() - 1);
    birthdayState.showAll = false;
    birthdayState.selectedDay = null;
    renderBirthdays();
  });

  birthdayRefs.nextMonth?.addEventListener("click", () => {
    birthdayState.viewDate.setMonth(birthdayState.viewDate.getMonth() + 1);
    birthdayState.showAll = false;
    birthdayState.selectedDay = null;
    renderBirthdays();
  });

  birthdayRefs.showAll?.addEventListener("click", () => {
    if (birthdayState.selectedDay) {
      birthdayState.selectedDay = null;
      birthdayState.showAll = true;
      renderBirthdays();
      return;
    }
    birthdayState.showAll = !birthdayState.showAll;
    renderBirthdays();
  });

  birthdayRefs.miniShowAll?.addEventListener("click", () => {
    birthdayState.showAll = true;
    renderBirthdays();
    birthdayRefs.list?.scrollIntoView({ behavior: "smooth", block: "nearest" });
  });

  birthdayRefs.goCurrentMonth?.addEventListener("click", (event) => {
    event.preventDefault();
    const current = getLocalDate();
    birthdayState.viewDate = new Date(current.getFullYear(), current.getMonth(), 1);
    birthdayState.showAll = false;
    birthdayState.selectedDay = null;
    renderBirthdays();
  });

  birthdayRefs.calendarGrid?.addEventListener("click", (event) => {
    const button = event.target.closest("[data-birthday-day]");
    if (!button || button.classList.contains("muted")) {
      return;
    }

    const day = Number(button.dataset.birthdayDay);
    const hasBirthday = getBirthdaysForMonth(birthdayState.viewDate.getMonth()).some((person) => person.day === day);
    birthdayState.selectedDay = hasBirthday ? day : null;
    birthdayState.showAll = false;
    renderBirthdays();
  });

  birthdayRefs.list.addEventListener("click", (event) => {
    const button = event.target.closest("[data-birthday-greet]");
    if (!button) {
      return;
    }
    window.alert(`Saludo preparado para ${button.dataset.birthdayGreet}.`);
  });

  birthdayRefs.configCard?.querySelector(".green-action")?.addEventListener("click", () => {
    localStorage.setItem("portoErp.birthdayNotifications", "configured");
    window.alert("Configuración de cumpleaños guardada.");
  });

  renderBirthdays();
}

function escapeHtml(value) {
  return String(value ?? "")
    .replace(/&/g, "&amp;")
    .replace(/</g, "&lt;")
    .replace(/>/g, "&gt;")
    .replace(/"/g, "&quot;")
    .replace(/'/g, "&#039;");
}

function updatePassengerSummary() {
  if (!passengerRefs.summaryDate) {
    return;
  }

  const total = passengerEntries.reduce((sum, entry) => sum + entry.quantity, 0);
  passengerRefs.summaryDate.textContent = formatDisplayDate(passengerRefs.date.value);
  passengerRefs.summaryVessel.textContent = passengerRefs.vessel.value;
  passengerRefs.summaryMovement.textContent = getCheckedValue("movement");
  passengerRefs.summaryShift.textContent = getCheckedValue("shift");
  passengerRefs.summaryTotal.textContent = String(total);
  if (passengerRefs.tableTotal) {
    passengerRefs.tableTotal.textContent = String(total);
  }
  if (passengerRefs.rowCount) {
    passengerRefs.rowCount.textContent = `${passengerEntries.length} ${passengerEntries.length === 1 ? "registro" : "registros"}`;
  }
  if (passengerRefs.statTotalPassengers) {
    passengerRefs.statTotalPassengers.textContent = String(total);
  }
}

function renderPassengerRows() {
  if (!passengerRefs.rows) {
    return;
  }

  passengerRefs.rows.innerHTML = "";

  passengerEntries.forEach((entry) => {
    const row = document.createElement("tr");
    row.innerHTML = `
      <td>${entry.contractor}</td>
      <td>${entry.routine}</td>
      <td>${entry.quantity}</td>
      <td>
        <button class="delete-row" type="button" data-id="${entry.id}" aria-label="Eliminar registro">
          <i data-lucide="trash-2"></i>
        </button>
      </td>
    `;
    passengerRefs.rows.appendChild(row);
  });

  passengerRefs.rows.querySelectorAll(".delete-row").forEach((button) => {
    button.addEventListener("click", () => {
      passengerEntries = passengerEntries.filter((entry) => entry.id !== button.dataset.id);
      renderPassengerRows();
      updatePassengerSummary();
    });
  });

  renderIcons();
}

function addPassengerEntry() {
  const quantity = Number(passengerRefs.quantity.value);

  if (!Number.isFinite(quantity) || quantity <= 0) {
    passengerRefs.quantity.focus();
    return;
  }

  passengerEntries.push({
    id: crypto.randomUUID(),
    contractor: passengerRefs.contractor.value,
    routine: passengerRefs.routine.value,
    quantity
  });

  passengerRefs.quantity.value = "";
  renderPassengerRows();
  updatePassengerSummary();
}

function buildPassengerRecords(session) {
  const fecha = passengerRefs.date?.value;
  const embarcacion = passengerRefs.vessel?.value;
  const movimiento = getCheckedValue("movement");
  const tipoPasajero = "Pasajero";
  const turno = getCheckedValue("shift");

  if (!fecha || !embarcacion || passengerEntries.length === 0) {
    return [];
  }

  return passengerEntries.map((entry) => ({
    fecha,
    movimiento,
    tipo_pasajero: tipoPasajero,
    embarcacion,
    turno,
    contratista: entry.contractor,
    rutina: entry.routine,
    cantidad: entry.quantity,
    detalle: {
      origen: "web",
      modulo: "pasajeros"
    },
    estado: "vigente",
    created_by: session.id,
    updated_by: session.id
  }));
}

async function savePassengerRecords() {
  const session = getSession();

  if (!session?.accessToken) {
    alert("Vuelve a iniciar sesión para guardar pasajeros.");
    showLogin();
    return;
  }

  const records = buildPassengerRecords(session);

  if (records.length === 0) {
    passengerRefs.quantity?.focus();
    alert("Agrega al menos una linea de pasajeros antes de guardar.");
    return;
  }

  const originalHtml = passengerRefs.save.innerHTML;
  passengerRefs.save.disabled = true;
  passengerRefs.save.textContent = "Guardando...";

  try {
    await supabaseRequest("/rest/v1/pasajeros_registros", {
      method: "POST",
      headers: {
        Authorization: `Bearer ${session.accessToken}`,
        Prefer: "return=minimal"
      },
      body: JSON.stringify(records)
    });

    clearPassengerForm();
    showSuccessToast("Se guardó con éxito", "El registro de pasajeros se ha guardado correctamente.");
  } catch (error) {
    alert(error.message || "No se pudo guardar el registro de pasajeros.");
  } finally {
    passengerRefs.save.disabled = false;
    passengerRefs.save.innerHTML = originalHtml;
    renderIcons();
  }
}

function clearPassengerForm() {
  passengerEntries = [];
  passengerRefs.quantity.value = "";
  passengerRefs.vessel.selectedIndex = -1;
  passengerRefs.contractor.selectedIndex = -1;
  passengerRefs.routine.selectedIndex = -1;
  document.querySelectorAll('input[name="movement"], input[name="shift"]').forEach((input) => {
    input.checked = false;
  });
  renderPassengerRows();
  updatePassengerSummary();
}

function resetPassengerInitialState() {
  if (!passengerRefs.date) {
    return;
  }

  clearPassengerForm();
}

function toNumber(value) {
  const numeric = Number(String(value).replace(/[,+]/g, ""));
  return Number.isFinite(numeric) ? numeric : 0;
}

function formatNumber(value) {
  return new Intl.NumberFormat("en-US", { maximumFractionDigits: 0 }).format(value);
}

function getTodayValue() {
  const today = new Date();
  const offset = today.getTimezoneOffset();
  return new Date(today.getTime() - offset * 60000).toISOString().slice(0, 10);
}

function parseCrew(crew) {
  const [captain = "-", driver = "-"] = String(crew || "-").split("/").map((value) => value.trim());
  return { captain, driver };
}

function normalizeDieselName(value) {
  const normalized = String(value || "")
    .normalize("NFD")
    .replace(/[\u0300-\u036f]/g, "")
    .replace(/[^a-z0-9]+/gi, "_")
    .replace(/^_+|_+$/g, "")
    .toUpperCase();

  if (normalized === "NEPTUNE_EXPRESS") {
    return "NEPTUNE";
  }

  if (normalized === "OLYMPIC_EXPRESS") {
    return "OLYMPIC";
  }

  return normalized;
}

function normalizeDieselDisplayName(value) {
  const text = String(value || "");
  if (normalizeDieselName(text) === "PARINAS" || text.includes(`PARI${String.fromCharCode(195)}`)) {
    return "PARIÑAS";
  }
  return text;
}

function isDieselPlatform(value) {
  const normalized = normalizeDieselName(value);
  return dieselPlatforms.some((platform) => normalizeDieselName(platform) === normalized);
}

function isDieselImiUnit(value) {
  return /\(\s*IMI\s*\)\s*$/i.test(String(value || "").trim());
}

function isDieselMotherShip(value) {
  const motherShips = new Set(["TALARA", "PARINAS", "LOBITOS_EXPRESS_CARGA"]);
  return motherShips.has(normalizeDieselName(value));
}

function isDieselDispatcherShip(value) {
  const dispatcherShips = new Set(["TALARA", "PARINAS", "LOBITOS_EXPRESS_CARGA", "ORO", "ROGUE", "MR_BOB", "JADE_IMI"]);
  return dispatcherShips.has(normalizeDieselName(value)) || isDieselPlatform(value);
}

function isDieselTransfer(origin, receive) {
  return isDieselMotherShip(origin) && isDieselMotherShip(receive);
}

function shiftDateValue(value, days) {
  const date = value ? new Date(`${value}T00:00:00`) : new Date();
  date.setDate(date.getDate() + days);
  return date.toISOString().slice(0, 10);
}

function bindDateStepper(input, prevButton, nextButton, onChange) {
  const shift = (days) => {
    if (!input) {
      return;
    }
    input.value = shiftDateValue(input.value, days);
    input.dispatchEvent(new Event("change", { bubbles: true }));
    onChange?.();
  };

  prevButton?.addEventListener("click", () => shift(-1));
  nextButton?.addEventListener("click", () => shift(1));
}

function getDieselKardex() {
  const rawKardex = localStorage.getItem(DIESEL_KARDEX_KEY);
  const records = rawKardex ? JSON.parse(rawKardex) : [];
  return records.map((record) => ({
    ...record,
    ship: normalizeDieselDisplayName(record.ship),
    dispatches: Array.isArray(record.dispatches)
      ? record.dispatches.map((entry) => ({ ...entry, vessel: normalizeDieselDisplayName(entry.vessel) }))
      : []
  }));
}

function setDieselKardex(records) {
  localStorage.setItem(DIESEL_KARDEX_KEY, JSON.stringify(records));
}

function getDieselInitialStock(ship) {
  return dieselInitialStockCache.get(normalizeDieselName(ship)) || 0;
}

async function refreshDieselInitialStock() {
  const session = getSession();
  const ship = dieselRefs.origin?.value;
  const requestedShip = ship;

  if (!session?.accessToken || !ship) {
    return;
  }

  const query = new URLSearchParams({
    p_nave: ship
  });

  try {
    const rows = await supabaseRequest(`/rest/v1/rpc/ultimo_stock_diesel?${query}`, {
      headers: {
        Authorization: `Bearer ${session.accessToken}`
      }
    });
    const stock = Number(rows?.[0]?.stock_final ?? 0);
    if (dieselRefs.origin?.value !== requestedShip) {
      return;
    }
    dieselInitialStockCache.set(normalizeDieselName(requestedShip), Number.isFinite(stock) ? stock : 0);
    updateDieselSummary();
  } catch (error) {
    console.warn("No se pudo cargar el stock inicial diesel.", error);
  }
}

function getDieselRecordId(date, ship, shift) {
  return `${date}__${ship}__${shift}`;
}

function buildEmptyDieselRecord(date, ship, shift) {
  const initialStock = getDieselInitialStock(ship);
  return {
    id: getDieselRecordId(date, ship, shift),
    saveMode: "agregar",
    movementIdsToReplace: [],
    date,
    ship,
    shift,
    registeredBy: "",
    captain: "",
    driver: "",
    document: "",
    recharge: 0,
    rechargeVoucher: "",
    consumption: 0,
    returnVolume: 0,
    difference: 0,
    sondage: 0,
    dispatched: 0,
    transferred: 0,
    initialStock,
    finalStock: initialStock,
    dispatches: [],
    observation: "",
    moduleStates: {},
    hasMovement: false,
    savedAt: null
  };
}

function ensureDieselDaySkeleton(date) {
  if (!date) {
    return;
  }

  const kardex = getDieselKardex();
  const existingIds = new Set(kardex.map((record) => record.id));
  let changed = false;

  dieselShips.forEach((ship) => {
    dieselShifts.forEach((shift) => {
      const id = getDieselRecordId(date, ship, shift);
      if (!existingIds.has(id)) {
        kardex.push(buildEmptyDieselRecord(date, ship, shift));
        changed = true;
      }
    });
  });

  if (changed) {
    setDieselKardex(kardex);
  }
}

function getDieselTotals() {
  const modules = getActiveDieselModules();
  const origin = dieselRefs.origin.value;
  const initialStock = getDieselInitialStock(origin);
  const recharge = modules.recarga ? toNumber(dieselRefs.recharge.value) : 0;
  const consumption = modules.consumo ? toNumber(dieselRefs.consumption.value) : 0;
  const returnVolume = modules.sondaje ? toNumber(dieselRefs.returnVolume.value) : 0;
  const differenceValue = modules.sondaje ? toNumber(dieselRefs.difference.value) : 0;
  const sondage = returnVolume > 0 ? returnVolume : -differenceValue;
  const activeDispatches = modules.despacho ? dieselDispatches : [];
  const dispatched = activeDispatches
    .filter((entry) => !isDieselTransfer(origin, entry.vessel))
    .reduce((sum, entry) => sum + entry.quantity, 0);
  const transferred = activeDispatches
    .filter((entry) => isDieselTransfer(origin, entry.vessel))
    .reduce((sum, entry) => sum + entry.quantity, 0);
  const finalStock = initialStock + recharge - dispatched - transferred + consumption + sondage;

  return {
    initialStock,
    recharge,
    consumption,
    returnVolume,
    difference: differenceValue,
    sondage,
    dispatched,
    transferred,
    finalStock
  };
}

function getActiveDieselModules() {
  return getDieselModuleStates();
}

function hasEffectiveDieselDispatchModule(modules = getActiveDieselModules()) {
  return Boolean(modules.despacho && dieselDispatches.length > 0);
}

function hasAnyEffectiveDieselOperationalModule(modules = getActiveDieselModules()) {
  return Boolean(
    modules.recarga
    || modules.consumo
    || modules.sondaje
    || modules.tripulacion
    || hasEffectiveDieselDispatchModule(modules)
  );
}

function validateDieselRecord() {
  const modules = getActiveDieselModules();
  const errors = [];
  const totals = getDieselTotals();

  if (!hasAnyEffectiveDieselOperationalModule(modules)) {
    errors.push("Activa al menos un módulo operativo");
  }

  if (!dieselRefs.date.value) {
    errors.push("Fecha");
  }

  if (!dieselRefs.origin.value) {
    errors.push("Nave");
  }

  if (!getCheckedValue("dieselShift")) {
    errors.push("Turno");
  }

  if (modules.tripulacion && (!dieselRefs.captain.value.trim() || !dieselRefs.driver.value.trim())) {
    errors.push("Capitan y motorista");
  }

  if (modules.recarga && totals.recharge <= 0) {
    errors.push("Volumen de recarga");
  }

  if (modules.recarga && !dieselRefs.rechargeVoucher.value.trim()) {
    errors.push("Vale de recarga");
  }

  if (modules.consumo && totals.consumption <= 0) {
    errors.push("Volumen de consumo");
  }

  if (modules.sondaje && !dieselRefs.document.value.trim()) {
    errors.push("Acta de sondaje");
  }

  if (modules.sondaje && totals.returnVolume <= 0 && totals.difference <= 0) {
    errors.push("Reingreso o diferencia de sondaje");
  }

  if (modules.sondaje && totals.returnVolume > 0 && totals.difference > 0) {
    errors.push("Reingreso o diferencia, no ambos");
  }

  if (hasEffectiveDieselDispatchModule(modules)) {
    if (!isDieselDispatcherShip(dieselRefs.origin.value)) {
      errors.push("Solo naves abastecedoras y barcazas pueden despachar diesel");
    }

    const invalidDispatch = dieselDispatches.some((entry) => entry.quantity <= 0 || !entry.voucher);
    if (invalidDispatch) {
      errors.push("Destino, cantidad y vale de cada despacho");
    }
  }

  return errors;
}

function updateDieselSaveState() {
  if (!dieselRefs.save) {
    return;
  }

  dieselRefs.save.disabled = validateDieselRecord().length > 0;
}

function isDieselPlatformMode(toggle) {
  return toggle?.getAttribute("aria-pressed") === "true";
}

function fillDieselSelect(select, options, selectedValue, excludeValue = "") {
  if (!select) {
    return;
  }

  select.innerHTML = "";
  options
    .filter((option) => option !== excludeValue)
    .forEach((option) => select.add(new Option(option, option)));

  if (selectedValue && options.includes(selectedValue) && selectedValue !== excludeValue) {
    select.value = selectedValue;
  } else {
    select.selectedIndex = -1;
  }
}

function populateDieselShips() {
  if (!dieselRefs.origin || !dieselRefs.receive) {
    return;
  }

  const selectedOrigin = dieselRefs.origin.value;
  const selectedReceive = dieselRefs.receive.value;
  const originOptions = dieselShips;
  const receiveOptions = isDieselPlatformMode(dieselRefs.receivePlatformToggle) ? dieselPlatforms : dieselShips;

  fillDieselSelect(dieselRefs.origin, originOptions, selectedOrigin);
  fillDieselSelect(dieselRefs.receive, receiveOptions, selectedReceive, dieselRefs.origin.value);
}

function populateDieselConsultFilters() {
  if (!dieselRefs.consultVessel || dieselRefs.consultVessel.options.length > 1) {
    return;
  }

  dieselCatalog.forEach((unit) => {
    dieselRefs.consultVessel.add(new Option(unit.ship, unit.ship));
  });
}

function renderDieselRows() {
  if (!dieselRefs.rows) {
    return;
  }

  dieselRefs.rows.innerHTML = "";

  dieselDispatches.forEach((entry) => {
    const transfer = isDieselTransfer(dieselRefs.origin.value, entry.vessel);
    const row = document.createElement("tr");
    row.innerHTML = `
      <td>${entry.vessel}</td>
      <td>${formatNumber(entry.quantity)}</td>
      <td>${entry.voucher || "-"}</td>
      <td><span class="type-pill">${transfer ? "Trans." : "Desp."}</span></td>
      <td>
        <button class="delete-row" type="button" data-id="${entry.id}" aria-label="Eliminar despacho">
          <i data-lucide="trash-2"></i>
        </button>
      </td>
    `;
    dieselRefs.rows.appendChild(row);
  });

  dieselRefs.rows.querySelectorAll(".delete-row").forEach((button) => {
    button.addEventListener("click", () => {
      dieselDispatches = dieselDispatches.filter((entry) => entry.id !== button.dataset.id);
      renderDieselRows();
      updateDieselSummary();
    });
  });

  renderIcons();
}

function updateDieselSummary() {
  if (!dieselRefs.summaryVessel) {
    return;
  }

  const origin = dieselRefs.origin.value;
  const totals = getDieselTotals();

  dieselRefs.summaryVessel.textContent = origin;
  dieselRefs.summaryInitial.textContent = formatNumber(totals.initialStock);
  dieselRefs.summaryRecharge.textContent = formatNumber(totals.recharge);
  dieselRefs.summaryDispatched.textContent = formatNumber(totals.dispatched);
  dieselRefs.summaryTransferred.textContent = formatNumber(totals.transferred);
  dieselRefs.summaryConsumption.textContent = formatNumber(totals.consumption);
  dieselRefs.summaryDifference.textContent = `${totals.sondage >= 0 ? "+" : "-"}${formatNumber(Math.abs(totals.sondage))}`;
  dieselRefs.summaryDifference.classList.toggle("positive", totals.sondage >= 0);
  dieselRefs.summaryDifference.classList.toggle("negative", totals.sondage < 0);
  dieselRefs.summaryFinal.textContent = formatNumber(totals.finalStock);
  dieselRefs.statFinal.textContent = formatNumber(totals.finalStock);
  dieselRefs.statRecharge.textContent = formatNumber(totals.recharge);
  dieselRefs.statDispatched.textContent = formatNumber(totals.dispatched);
  dieselRefs.statTransferred.textContent = formatNumber(totals.transferred);
  dieselRefs.statConsumption.textContent = formatNumber(totals.consumption);
  updateDieselSaveState();
}

function addDieselDispatch() {
  const quantity = toNumber(dieselRefs.qty.value);

  if (!isDieselDispatcherShip(dieselRefs.origin.value)) {
    alert("Solo naves abastecedoras y barcazas pueden despachar diesel.");
    return;
  }

  if (!dieselRefs.receive.value) {
    dieselRefs.receive.focus();
    return;
  }

  if (quantity <= 0) {
    dieselRefs.qty.focus();
    return;
  }

  if (!dieselRefs.voucher.value.trim()) {
    dieselRefs.voucher.focus();
    return;
  }

  dieselDispatches.push({
    id: crypto.randomUUID(),
    vessel: dieselRefs.receive.value,
    quantity,
    voucher: dieselRefs.voucher.value.trim()
  });

  dieselRefs.qty.value = "";
  dieselRefs.voucher.value = "";
  renderDieselRows();
  updateDieselSummary();
}

function addDieselDispatchOnEnter(event) {
  if (event.key !== "Enter") {
    return;
  }

  event.preventDefault();
  addDieselDispatch();
}

function getDieselModuleStates() {
  return Array.from(document.querySelectorAll(".diesel-module")).reduce((states, module) => {
    const key = module.dataset.module;
    const toggle = module.querySelector('.switch input');
    if (key) {
      states[key] = toggle ? Boolean(toggle.checked) : true;
    }
    return states;
  }, {});
}

function hasDieselMovement(record) {
  return Boolean(record?.hasMovement) || [
    record?.recharge,
    record?.consumption,
    record?.returnVolume,
    record?.difference,
    record?.sondage,
    record?.dispatched,
    record?.transferred
  ].some((value) => toNumber(value) > 0);
}

function buildDieselRecordFromForm() {
  const modules = getActiveDieselModules();
  const effectiveDispatchModule = hasEffectiveDieselDispatchModule(modules);
  const totals = getDieselTotals();
  const date = dieselRefs.date.value;
  const ship = dieselRefs.origin.value;
  const shift = getCheckedValue("dieselShift");
  const hasMovement = [
    totals.recharge,
    totals.consumption,
    totals.returnVolume,
    totals.difference,
    totals.dispatched,
    totals.transferred
  ].some((value) => value > 0);

  return {
    id: getDieselRecordId(date, ship, shift),
    date,
    ship,
    shift,
    registeredBy: getCurrentUserDisplayName(),
    captain: modules.tripulacion ? dieselRefs.captain.value.trim() : "",
    driver: modules.tripulacion ? dieselRefs.driver.value.trim() : "",
    document: modules.sondaje ? dieselRefs.document.value.trim() : "",
    recharge: totals.recharge,
    rechargeVoucher: modules.recarga ? dieselRefs.rechargeVoucher.value.trim() : "",
    consumption: totals.consumption,
    returnVolume: totals.returnVolume,
    difference: totals.difference,
    sondage: totals.sondage,
    dispatched: totals.dispatched,
    transferred: totals.transferred,
    initialStock: totals.initialStock,
    finalStock: totals.finalStock,
    dispatches: (effectiveDispatchModule ? dieselDispatches : []).map((entry) => ({
      vessel: entry.vessel,
      quantity: entry.quantity,
      voucher: entry.voucher,
      type: isDieselTransfer(ship, entry.vessel) ? "Transferencia" : "Despacho"
    })),
    observation: dieselRefs.observation.value.trim(),
    moduleStates: {
      ...modules,
      despacho: effectiveDispatchModule
    },
    hasMovement,
    savedAt: new Date().toISOString()
  };
}

function buildDieselPayload(record) {
  return {
    modo: record.saveMode || "agregar",
    fecha: record.date,
    nave: record.ship,
    turno: record.shift,
    registrado_por: record.registeredBy,
    capitan: record.captain,
    motorista: record.driver,
    acta_sondaje: record.document,
    vale_recarga: record.rechargeVoucher,
    vale_despacho: record.dispatches.map((entry) => entry.voucher).filter(Boolean).join(" / "),
    recarga: record.recharge,
    recibido: 0,
    recibido_de: "",
    consumo: record.consumption,
    reingreso: record.returnVolume,
    diferencia: record.difference,
    stock_inicial: record.initialStock,
    observaciones: record.observation,
    modulos_estado: record.moduleStates,
    cabecera: {
      registrado_por_texto: record.registeredBy,
      origen_web_id: record.id
    },
    movimiento_ids_reemplazar: Array.isArray(record.movementIdsToReplace) ? record.movementIdsToReplace : [],
    movimientos: record.dispatches.map((entry) => ({
      destino: entry.vessel,
      cantidad: entry.quantity,
      vale: entry.voucher,
      tipo: entry.type
    }))
  };
}

async function saveDieselRecord() {
  if (!dieselRefs.date.value || !dieselRefs.origin.value || !getCheckedValue("dieselShift")) {
    dieselRefs.date.focus();
    return;
  }

  const session = getSession();

  if (!session?.accessToken) {
    alert("Vuelve a iniciar sesión para guardar diesel.");
    showLogin();
    return;
  }

  const validationErrors = validateDieselRecord();

  if (validationErrors.length > 0) {
    alert(`Faltan datos para guardar diesel: ${validationErrors.join(", ")}.`);
    return;
  }

  const kardex = getDieselKardex();
  const record = buildDieselRecordFromForm();
  const existingIndex = kardex.findIndex((entry) => entry.id === record.id);
  const originalHtml = dieselRefs.save.innerHTML;

  dieselRefs.save.disabled = true;
  dieselRefs.save.textContent = "Guardando...";

  try {
    await supabaseRequest("/rest/v1/rpc/registrar_diesel", {
      method: "POST",
      headers: {
        Authorization: `Bearer ${session.accessToken}`
      },
      body: JSON.stringify({
        payload: buildDieselPayload(record)
      })
    });

    if (existingIndex >= 0) {
      kardex[existingIndex] = record;
    } else {
      kardex.push(record);
    }

    setDieselKardex(kardex);
    dieselInitialStockCache.set(normalizeDieselName(record.ship), record.finalStock);
    renderDieselConsult();

    clearDieselFormAfterSave();
    showSuccessToast("Se guardó con éxito", "El registro de diésel se ha guardado correctamente.");
  } catch (error) {
    alert(error.message || "No se pudo guardar el registro diesel.");
  } finally {
    updateDieselSaveState();
    dieselRefs.save.innerHTML = originalHtml;
    renderIcons();
  }
}

function findDieselCatalogByShip(ship) {
  const normalized = normalizeDieselName(ship);
  return dieselCatalog.find((unit) => normalizeDieselName(unit.ship) === normalized);
}

function getDieselConsultKey() {
  return [
    dieselRefs.consultDate?.value || getTodayValue(),
    dieselRefs.consultVessel?.value || "",
    dieselRefs.consultShift?.value || "",
    showAllDieselConsultItems ? "all" : "moves"
  ].join("|");
}

async function loadDieselConsultFromSupabase() {
  const session = getSession();
  const selectedDate = dieselRefs.consultDate?.value || getTodayValue();

  if (!session?.accessToken || !selectedDate) {
    dieselConsultCache = { key: getDieselConsultKey(), rows: [] };
    return;
  }

  const query = new URLSearchParams({
    select: "*",
    fecha: `eq.${selectedDate}`,
    order: "unidad_orden.asc"
  });

  const rows = await supabaseRequest(`/rest/v1/v_diesel_resumen_diario?${query}`, {
    headers: {
      Authorization: `Bearer ${session.accessToken}`
    }
  });

  dieselConsultCache = { key: getDieselConsultKey(), rows: rows || [] };
}

function buildDieselConsultData() {
  const selectedShip = dieselRefs.consultVessel?.value || "";
  const selectedShift = dieselRefs.consultShift?.value || "";
  const selectedDate = dieselRefs.consultDate?.value || getTodayValue();
  const recordsForDate = (dieselConsultCache.rows || []).filter((record) => {
    if (selectedShip && normalizeDieselName(record.unidad_nombre) !== normalizeDieselName(selectedShip)) return false;
    return showAllDieselConsultItems || record.tiene_movimiento;
  });

  const recordsByShip = recordsForDate.reduce((map, record) => {
    const ship = normalizeDieselDisplayName(record.unidad_nombre);
    map.set(normalizeDieselName(ship), record);
    return map;
  }, new Map());

  const unitsToRender = showAllDieselConsultItems
    ? dieselCatalog.filter((unit) => !selectedShip || unit.ship === selectedShip)
    : recordsForDate
        .map((record) => {
          const ship = normalizeDieselDisplayName(record.unidad_nombre);
          return findDieselCatalogByShip(ship) || { ship, group: "SIN AGRUPAR", icon: "ship", item: "" };
        });

  const rowsByGroup = new Map();
  unitsToRender.forEach((catalog) => {
    const ship = catalog.ship;
    const record = recordsByShip.get(normalizeDieselName(ship)) || {};
    const initialStock = toNumber(record.stock_inicial_dia);
    const received = toNumber(record.cantidad_recibida) + toNumber(record.total_recarga);
    const day = selectedShift === "B" ? 0 : toNumber(record.consumo_dia);
    const night = selectedShift === "A" ? 0 : toNumber(record.consumo_noche);
    const consumption = day + night;
    const dispatched = toNumber(record.cantidad_despachada);
    const transferred = toNumber(record.cantidad_transferida);
    const sondage = toNumber(record.sondaje_neto);
    const finalStock = toNumber(record.stock_final_dia);
    const group = catalog.group || "SIN AGRUPAR";
    const row = {
      item: catalog.item || "",
      ship,
      initialStock,
      received,
      receivedFrom: normalizeDieselDisplayName(record.recibido_de || "-"),
      day,
      night,
      consumption,
      dispatched,
      transferred,
      sondage,
      finalStock,
      dayCrew: { captain: record.capitan_dia || "-", driver: record.motorista_dia || "-" },
      nightCrew: { captain: record.capitan_noche || "-", driver: record.motorista_noche || "-" },
      type: catalog.type || "-",
      icon: catalog.icon || "ship",
      sourceRecord: record
    };

    if (!rowsByGroup.has(group)) {
      rowsByGroup.set(group, []);
    }
    rowsByGroup.get(group).push(row);
  });

  const reportGroups = [...rowsByGroup.entries()].map(([group, rows]) => {
    rows.sort((a, b) => Number(a.item || 999) - Number(b.item || 999));

    const totals = rows.reduce((sum, row) => {
      sum.initialStock += row.initialStock;
      sum.received += row.received;
      sum.day += row.day;
      sum.night += row.night;
      sum.consumption += row.consumption;
      sum.dispatched += row.dispatched;
      sum.transferred += row.transferred;
      sum.sondage += row.sondage;
      sum.finalStock += row.finalStock;
      return sum;
    }, { initialStock: 0, received: 0, day: 0, night: 0, consumption: 0, dispatched: 0, transferred: 0, sondage: 0, finalStock: 0 });

    return { group, icon: rows[0]?.icon || "ship", rows, totals };
  });

  const totals = reportGroups.reduce((sum, group) => {
    sum.initialStock += group.totals.initialStock;
    sum.received += group.totals.received;
    sum.day += group.totals.day;
    sum.night += group.totals.night;
    sum.consumption += group.totals.consumption;
    sum.dispatched += group.totals.dispatched;
    sum.transferred += group.totals.transferred;
    sum.sondage += group.totals.sondage;
    sum.finalStock += group.totals.finalStock;
    return sum;
  }, { initialStock: 0, received: 0, day: 0, night: 0, consumption: 0, dispatched: 0, transferred: 0, sondage: 0, finalStock: 0 });

  const visibleRows = reportGroups.reduce((count, group) => count + group.rows.length, 0);
  return { selectedShip, selectedShift, selectedDate, visibleUnits: recordsForDate, visibleRows, groups: reportGroups, totals };
}

function getDieselEditShiftValue(selectedShift) {
  if (selectedShift === "A" || selectedShift === "B") {
    return selectedShift;
  }
  return "A";
}

function getDieselEditShiftCode(shiftValue) {
  return getDieselEditShiftValue(shiftValue) === "B" ? "nocturno" : "diurno";
}

function normalizeDieselEditShiftKey(turno) {
  const normalized = String(turno || "").trim().toLowerCase();
  return normalized === "nocturno" ? "B" : "A";
}

function getDieselEditTypeLabel(row) {
  if (row?.transferred > 0 && row?.dispatched > 0) {
    return "Transferencia / despacho";
  }
  if (row?.transferred > 0) {
    return "Transferencia";
  }
  if (row?.dispatched > 0) {
    return "Despacho";
  }
  if (row?.received > 0) {
    return "Recepción";
  }
  return "Registro operativo";
}

function getDieselEditGuardLabel(selectedShift) {
  if (selectedShift === "A") {
    return "Guardia Diurna";
  }
  if (selectedShift === "B") {
    return "Guardia Nocturna";
  }
  return "Ambas guardias";
}

function formatDieselEditTimestamp(value) {
  const date = value ? new Date(value) : new Date();

  if (Number.isNaN(date.getTime())) {
    return "Última actualización: --/--/---- --:--";
  }

  const day = String(date.getDate()).padStart(2, "0");
  const month = String(date.getMonth() + 1).padStart(2, "0");
  const year = date.getFullYear();
  const hour = String(date.getHours()).padStart(2, "0");
  const minute = String(date.getMinutes()).padStart(2, "0");

  return `Última actualización: ${day}/${month}/${year} ${hour}:${minute}`;
}

function formatDieselEditableValue(control) {
  const value = control?.value;

  if (value === null || value === undefined || value === "") {
    return "-";
  }

  return value;
}

function setDieselModalReadonly() {
  dieselRefs.editModal?.querySelectorAll("[data-diesel-edit-field]").forEach((field) => {
    field.classList.remove("is-editing");
    field.querySelectorAll("input, textarea, select").forEach((control) => {
      control.disabled = true;
    });
  });
}

function setupDieselEditableCards() {
  dieselRefs.editModal?.querySelectorAll("[data-diesel-edit-field]").forEach((field) => {
    if (field.dataset.editableReady === "true") {
      return;
    }

    const button = field.querySelector(".diesel-modal-edit-button");
    const controls = [...field.querySelectorAll("input, textarea, select")];

    if (!button || !controls.length) {
      return;
    }

    field.dataset.editableReady = "true";
    controls.forEach((control) => {
      control.disabled = true;
    });

    button.addEventListener("click", () => {
      const isEditing = !field.classList.contains("is-editing");
      field.classList.toggle("is-editing", isEditing);
      controls.forEach((control) => {
        control.disabled = !isEditing;
      });
      if (!isEditing) {
        controls.forEach((control) => control.blur());
        return;
      }
      window.setTimeout(() => {
        controls[0]?.focus();
        if (typeof controls[0]?.select === "function") {
          controls[0].select();
        }
      }, 0);
    });
  });
}

function syncDieselEditableCards() {
  setDieselModalReadonly();
}

function setDieselInputValue(input, value) {
  if (!input) {
    return;
  }
  input.value = value === null || value === undefined ? "" : value;
}

function createEmptyDieselEditShiftDetail(row, shiftKey = "A") {
  const fallbackCrew = shiftKey === "B" ? row?.nightCrew : row?.dayCrew;
  return {
    initialStock: 0,
    finalStock: 0,
    recharge: 0,
    consumption: 0,
    dispatched: 0,
    transferred: 0,
    sondageReturn: 0,
    sondageDifference: 0,
    receivedFrom: "",
    crew: fallbackCrew || { captain: "-", driver: "-" },
    document: "",
    rechargeVoucher: "",
    dispatchVoucher: "",
    observation: "",
    dispatchRows: []
  };
}

function buildDieselEditShiftDetailsFromSource(row) {
  const baseDetails = {
    A: {
      initialStock: toNumber(row?.initialStock),
      finalStock: toNumber(row?.finalStock),
      recharge: toNumber(row?.sourceRecord?.total_recarga || row?.recharge || row?.received || 0),
      consumption: toNumber(row?.day || 0),
      dispatched: toNumber(row?.dispatched || 0),
      transferred: toNumber(row?.transferred || 0),
      sondageReturn: Math.max(0, toNumber(row?.sondage || 0)),
      sondageDifference: Math.max(0, -toNumber(row?.sondage || 0)),
      receivedFrom: row?.receivedFrom || "",
      crew: row?.dayCrew || { captain: "-", driver: "-" },
      document: row?.sourceRecord?.acta_sondaje || "",
      rechargeVoucher: row?.sourceRecord?.n_vale_recarga || "",
      dispatchVoucher: row?.sourceRecord?.n_vale_despacho || "",
      observation: row?.sourceRecord?.observaciones || (row?.receivedFrom && row.receivedFrom !== "-" ? `Recibido de ${row.receivedFrom}.` : ""),
      dispatchRows: []
    },
    B: {
      initialStock: toNumber(row?.initialStock),
      finalStock: toNumber(row?.finalStock),
      recharge: toNumber(row?.sourceRecord?.total_recarga || row?.recharge || row?.received || 0),
      consumption: toNumber(row?.night || 0),
      dispatched: toNumber(row?.dispatched || 0),
      transferred: toNumber(row?.transferred || 0),
      sondageReturn: Math.max(0, toNumber(row?.sondage || 0)),
      sondageDifference: Math.max(0, -toNumber(row?.sondage || 0)),
      receivedFrom: row?.receivedFrom || "",
      crew: row?.nightCrew || { captain: "-", driver: "-" },
      document: row?.sourceRecord?.acta_sondaje || "",
      rechargeVoucher: row?.sourceRecord?.n_vale_recarga || "",
      dispatchVoucher: row?.sourceRecord?.n_vale_despacho || "",
      observation: row?.sourceRecord?.observaciones || (row?.receivedFrom && row.receivedFrom !== "-" ? `Recibido de ${row.receivedFrom}.` : ""),
      dispatchRows: []
    }
  };

  const fallbackRows = [];
  if (toNumber(row?.dispatched) > 0) {
    fallbackRows.push({ vessel: row?.ship || "Registro consolidado", amount: toNumber(row.dispatched), voucher: "", type: "Despacho" });
  }
  if (toNumber(row?.transferred) > 0) {
    fallbackRows.push({ vessel: row?.ship || "Registro consolidado", amount: toNumber(row.transferred), voucher: "", type: "Transferencia" });
  }

  baseDetails.A.dispatchRows = [...fallbackRows];
  baseDetails.B.dispatchRows = [...fallbackRows];
  return baseDetails;
}

async function loadDieselEditShiftDetails(row, selectedDate) {
  const session = getSession();
  const unidadId = row?.sourceRecord?.unidad_id;
  const fecha = selectedDate || row?.sourceRecord?.fecha;

  if (!session?.accessToken || !unidadId || !fecha) {
    return buildDieselEditShiftDetailsFromSource(row);
  }

  const kardexQuery = new URLSearchParams({
    select: "id,turno,stock_inicial,stock_final,total_recarga,total_despacho,total_transferencia,total_consumo,sondaje_reingreso,sondaje_diferencia,recibido_de,observaciones,capitan_turno,motorista_turno,acta_sondaje,n_vale_recarga,n_vale_despacho,cabecera",
    fecha: `eq.${fecha}`,
    unidad_id: `eq.${unidadId}`,
    order: "created_at.asc"
  });

  const kardexRows = await supabaseRequest(`/rest/v1/diesel_kardex?${kardexQuery}`, {
    headers: { Authorization: `Bearer ${session.accessToken}` }
  });

  const baseDetails = buildDieselEditShiftDetailsFromSource(row);
  if (!Array.isArray(kardexRows) || !kardexRows.length) {
    return baseDetails;
  }

  const kardexIds = kardexRows.map((item) => item.id).filter(Boolean);
  let movementRows = [];

  if (kardexIds.length) {
    const movementsQuery = new URLSearchParams({
      select: "id,kardex_id,turno,tipo,cantidad,n_vale,detalle,nave_destino:unidades!diesel_movimientos_nave_destino_id_fkey(nombre),nave_origen:unidades!diesel_movimientos_nave_origen_id_fkey(nombre)",
      kardex_id: `in.(${kardexIds.join(",")})`,
      estado: "eq.vigente",
      order: "created_at.asc"
    });

    movementRows = await supabaseRequest(`/rest/v1/diesel_movimientos?${movementsQuery}`, {
      headers: { Authorization: `Bearer ${session.accessToken}` }
    });
  }

  const details = {
    A: createEmptyDieselEditShiftDetail(row, "A"),
    B: createEmptyDieselEditShiftDetail(row, "B")
  };

  kardexRows.forEach((kardex) => {
    const shiftKey = normalizeDieselEditShiftKey(kardex.turno);
    const cabecera = kardex.cabecera && typeof kardex.cabecera === "object" ? kardex.cabecera : {};
    details[shiftKey] = {
      initialStock: toNumber(kardex.stock_inicial),
      finalStock: toNumber(kardex.stock_final),
      recharge: toNumber(kardex.total_recarga),
      consumption: toNumber(kardex.total_consumo),
      dispatched: toNumber(kardex.total_despacho),
      transferred: toNumber(kardex.total_transferencia),
      sondageReturn: toNumber(kardex.sondaje_reingreso),
      sondageDifference: toNumber(kardex.sondaje_diferencia),
      receivedFrom: normalizeDieselDisplayName(kardex.recibido_de || ""),
      crew: {
        captain: kardex.capitan_turno || cabecera.capitan || "-",
        driver: kardex.motorista_turno || cabecera.motorista || "-"
      },
      document: kardex.acta_sondaje || "",
      rechargeVoucher: kardex.n_vale_recarga || "",
      dispatchVoucher: kardex.n_vale_despacho || "",
      observation: kardex.observaciones || "",
      dispatchRows: []
    };
  });

  (movementRows || []).forEach((movement) => {
    const shiftKey = normalizeDieselEditShiftKey(movement.turno);
    const detail = details[shiftKey];
    if (!detail) {
      return;
    }

    const type = String(movement.tipo || "").toLowerCase();
    if (type !== "despacho" && type !== "transferencia") {
      return;
    }

    detail.dispatchRows.push({
      id: movement.id || "",
      vessel: normalizeDieselDisplayName(movement.nave_destino?.nombre || movement.nave_origen?.nombre || "Destino"),
      amount: toNumber(movement.cantidad),
      voucher: movement.n_vale || "",
      type: type === "transferencia" ? "Transferencia" : "Despacho"
    });
  });

  return details;
}

function getDieselSourceValue(row, shiftValue, baseKeys, fallback = 0) {
  const source = row?.sourceRecord || {};
  const suffixes = shiftValue === "B"
    ? ["_noche", "_nocturno", "_b"]
    : ["_dia", "_diurno", "_a"];
  const keys = baseKeys.flatMap((key) => [
    ...suffixes.map((suffix) => `${key}${suffix}`),
    key
  ]);

  for (const key of keys) {
    if (source[key] !== null && source[key] !== undefined && source[key] !== "") {
      return toNumber(source[key]);
    }
  }

  return toNumber(fallback);
}

function getDieselEditShiftSnapshot(row, shiftValue) {
  const detail = dieselEditDraft?.turnDetails?.[getDieselEditShiftValue(shiftValue)];
  if (detail) {
    return {
      initialStock: toNumber(detail.initialStock),
      finalStock: toNumber(detail.finalStock),
      recharge: toNumber(detail.recharge),
      consumption: toNumber(detail.consumption),
      dispatched: toNumber(detail.dispatched),
      transferred: toNumber(detail.transferred),
      sondageReturn: toNumber(detail.sondageReturn),
      sondageDifference: toNumber(detail.sondageDifference),
      crew: detail.crew || { captain: "-", driver: "-" },
      document: detail.document || "",
      rechargeVoucher: detail.rechargeVoucher || "",
      dispatchVoucher: detail.dispatchVoucher || "",
      observation: detail.observation || "",
      receivedFrom: detail.receivedFrom || "",
      dispatchRows: Array.isArray(detail.dispatchRows) ? detail.dispatchRows : []
    };
  }

  const isNight = shiftValue === "B";
  const consumption = isNight ? toNumber(row?.night) : toNumber(row?.day);
  const crew = isNight ? row?.nightCrew : row?.dayCrew;
  const recharge = getDieselSourceValue(row, shiftValue, ["total_recarga", "recarga"], row?.recharge || row?.received || 0);
  const received = getDieselSourceValue(row, shiftValue, ["cantidad_recibida", "recibido"], row?.received || 0);
  const dispatched = getDieselSourceValue(row, shiftValue, ["cantidad_despachada", "despachado"], row?.dispatched || 0);
  const transferred = getDieselSourceValue(row, shiftValue, ["cantidad_transferida", "transferido"], row?.transferred || 0);
  const sondage = getDieselSourceValue(row, shiftValue, ["sondaje_neto", "sondaje"], row?.sondage || 0);
  const finalStock = getDieselSourceValue(row, shiftValue, ["stock_final"], row?.finalStock || 0);

  return {
    initialStock: toNumber(row?.initialStock || 0),
    consumption,
    crew,
    recharge,
    dispatched,
    transferred,
    sondageReturn: Math.max(0, sondage),
    sondageDifference: Math.max(0, -sondage),
    finalStock,
    document: row?.sourceRecord?.acta_sondaje || "",
    rechargeVoucher: row?.sourceRecord?.n_vale_recarga || "",
    dispatchVoucher: row?.sourceRecord?.n_vale_despacho || "",
    observation: row?.sourceRecord?.observaciones || (row?.receivedFrom && row.receivedFrom !== "-" ? `Recibido de ${row.receivedFrom}.` : ""),
    receivedFrom: row?.receivedFrom || "",
    dispatchRows: [],
    received
  };
}

function renderDieselEditDispatchRows(row, shiftValue = "A") {
  if (!dieselRefs.editDispatchRows) {
    return;
  }

  const snapshot = getDieselEditShiftSnapshot(row, shiftValue);
  const rows = Array.isArray(snapshot.dispatchRows) ? snapshot.dispatchRows : [];

  dieselRefs.editDispatchRows.innerHTML = rows.length
    ? rows.map((item, index) => `
        <div class="diesel-edit-dispatch-row" data-diesel-edit-field data-movement-id="${escapeHtml(item.id || "")}">
          <input type="text" value="${escapeHtml(item.vessel)}" aria-label="Nave recibe" disabled>
          <input type="number" min="0" step="0.001" value="${item.amount}" aria-label="Cantidad" disabled>
          <input type="text" value="${escapeHtml(item.voucher)}" placeholder="-" aria-label="Número de vale" disabled>
          <button class="diesel-modal-edit-button" type="button" aria-label="Editar ${escapeHtml(item.type)} ${index + 1}"><i data-lucide="square-pen"></i></button>
        </div>
      `).join("")
    : '<p class="diesel-edit-empty-row">Sin despacho ni transferencia registrada.</p>';

  setupDieselEditableCards();
}

function applyDieselEditShift(shiftValue) {
  if (!dieselEditDraft?.row) {
    return;
  }

  const row = dieselEditDraft.row;
  dieselEditDraft.currentShift = getDieselEditShiftValue(shiftValue);
  const snapshot = getDieselEditShiftSnapshot(row, dieselEditDraft.currentShift);

  setDieselInputValue(dieselRefs.editRecharge, snapshot.recharge || 0);
  setDieselInputValue(dieselRefs.editConsumption, snapshot.consumption || 0);
  setDieselInputValue(dieselRefs.editSondageReturn, snapshot.sondageReturn || 0);
  setDieselInputValue(dieselRefs.editSondage, snapshot.sondageDifference || 0);
  setDieselInputValue(dieselRefs.editSondageVoucher, snapshot.document || "");
  setDieselInputValue(dieselRefs.editRechargeVoucher, snapshot.rechargeVoucher || "");
  setDieselInputValue(dieselRefs.editObservations, snapshot.observation || (snapshot.receivedFrom ? `Recibido de ${snapshot.receivedFrom}.` : ""));
  setDieselInputValue(dieselRefs.editCaptain, snapshot.crew?.captain && snapshot.crew.captain !== "-" ? snapshot.crew.captain : "");
  setDieselInputValue(dieselRefs.editDriver, snapshot.crew?.driver && snapshot.crew.driver !== "-" ? snapshot.crew.driver : "");

  if (dieselRefs.editInitial) {
    dieselRefs.editInitial.textContent = formatNumber(snapshot.initialStock);
  }
  if (dieselRefs.editFinal) {
    dieselRefs.editFinal.textContent = formatNumber(snapshot.finalStock);
  }

  dieselRefs.editShiftInputs.forEach((input) => {
    input.checked = input.value === dieselEditDraft.currentShift;
  });

  renderDieselEditDispatchRows(row, dieselEditDraft.currentShift);
  syncDieselEditableCards();
  renderIcons();
}

function getDieselEditNumber(input) {
  return toNumber(input?.value || 0);
}

function getDieselEditText(input) {
  return String(input?.value || "").trim();
}

function getDieselEditDispatchesFromModal(originShip) {
  if (!dieselRefs.editDispatchRows) {
    return [];
  }

  return [...dieselRefs.editDispatchRows.querySelectorAll(".diesel-edit-dispatch-row")]
    .map((row) => {
      const controls = row.querySelectorAll("input");
      const vessel = getDieselEditText(controls[0]);
      const quantity = getDieselEditNumber(controls[1]);
      const voucher = getDieselEditText(controls[2]);
      return {
        id: row.dataset.movementId || "",
        vessel,
        quantity,
        voucher,
        type: isDieselTransfer(originShip, vessel) ? "Transferencia" : "Despacho"
      };
    })
    .filter((entry) => entry.vessel && entry.quantity > 0);
}

function buildDieselEditPayloadFromModal() {
  if (!dieselEditDraft?.row) {
    return null;
  }

  const row = dieselEditDraft.row;
  const selectedShift = dieselEditDraft.currentShift || "A";
  const shiftCode = getDieselEditShiftCode(selectedShift);
  const dispatches = getDieselEditDispatchesFromModal(row.ship);
  const recharge = getDieselEditNumber(dieselRefs.editRecharge);
  const consumption = getDieselEditNumber(dieselRefs.editConsumption);
  const returnVolume = getDieselEditNumber(dieselRefs.editSondageReturn);
  const difference = getDieselEditNumber(dieselRefs.editSondage);
  const captain = getDieselEditText(dieselRefs.editCaptain);
  const driver = getDieselEditText(dieselRefs.editDriver);
  const documentValue = getDieselEditText(dieselRefs.editSondageVoucher);
  const rechargeVoucher = getDieselEditText(dieselRefs.editRechargeVoucher);
  const observation = getDieselEditText(dieselRefs.editObservations);

  return {
    modo: "editar",
    fecha: dieselEditDraft.context?.selectedDate || row.sourceRecord?.fecha || getTodayValue(),
    nave: row.ship,
    turno: shiftCode,
    registrado_por: getCurrentUserDisplayName(),
    capitan: captain,
    motorista: driver,
    acta_sondaje: documentValue,
    vale_recarga: rechargeVoucher,
    vale_despacho: dispatches.map((entry) => entry.voucher).filter(Boolean).join(" / "),
    recarga: recharge,
    recibido: 0,
    recibido_de: "",
    consumo: consumption,
    reingreso: returnVolume,
    diferencia: difference,
    stock_inicial: toNumber(String(dieselRefs.editInitial?.textContent || "").replace(/,/g, "")),
    observaciones: observation,
    modulos_estado: {
      recarga: true,
      consumo: true,
      sondaje: true,
      tripulacion: true,
      despacho: dispatches.length > 0,
      observaciones: true
    },
    cabecera: {
      registrado_por_texto: getCurrentUserDisplayName(),
      origen_web_id: `consulta-edit-${row.ship}-${selectedShift}`
    },
    movimientos: dispatches.map((entry) => ({
      destino: entry.vessel,
      cantidad: entry.quantity,
      vale: entry.voucher,
      tipo: entry.type
    }))
  };
}

async function saveDieselEditModal() {
  const payload = buildDieselEditPayloadFromModal();
  const session = getSession();

  if (!payload || !session?.accessToken) {
    window.alert("No se pudo preparar la edición. Vuelve a iniciar sesión e intenta otra vez.");
    return;
  }

  const originalHtml = dieselRefs.editSave?.innerHTML;
  if (dieselRefs.editSave) {
    dieselRefs.editSave.disabled = true;
    dieselRefs.editSave.innerHTML = '<i data-lucide="loader-circle"></i>Guardando...';
    renderIcons();
  }

  try {
    await supabaseRequest("/rest/v1/rpc/editar_diesel_registro", {
      method: "POST",
      headers: { Authorization: `Bearer ${session.accessToken}` },
      body: JSON.stringify({ payload })
    });

    closeDieselEditModal();
    await renderDieselConsult({ showError: true });
    window.alert("Cambios guardados y stock histórico recalculado.");
  } catch (error) {
    console.error("No se pudo guardar la edición diésel.", error);
    window.alert(error.message || "No se pudo guardar la edición diésel.");
  } finally {
    if (dieselRefs.editSave) {
      dieselRefs.editSave.disabled = false;
      dieselRefs.editSave.innerHTML = originalHtml || '<i data-lucide="check"></i>Guardar cambios';
      renderIcons();
    }
  }
}

function openDieselEditModal(row, context = {}) {
  if (!dieselRefs.editModal || !row) {
    return;
  }

  const shiftValue = getDieselEditShiftValue(context.selectedShift);
  dieselEditDraft = { row, context, currentShift: shiftValue, turnDetails: buildDieselEditShiftDetailsFromSource(row) };
  const dateLabel = formatDisplayDate(context.selectedDate || getTodayValue());

  if (dieselRefs.editSubtitle) {
    dieselRefs.editSubtitle.textContent = `${row.ship || "-"} · ${getDieselEditTypeLabel(row)}`;
  }
  if (dieselRefs.editVesselLabel) {
    dieselRefs.editVesselLabel.textContent = row.ship || "-";
  }
  if (dieselRefs.editDateLabel) {
    dieselRefs.editDateLabel.textContent = dateLabel;
  }
  setupDieselEditableCards();
  applyDieselEditShift(shiftValue);
  dieselRefs.editModal.hidden = false;
  document.body.classList.add("modal-open");
  renderIcons();

  loadDieselEditShiftDetails(row, context.selectedDate)
    .then((turnDetails) => {
      if (!dieselEditDraft || dieselEditDraft.row !== row) {
        return;
      }
      dieselEditDraft.turnDetails = turnDetails;
      applyDieselEditShift(dieselEditDraft.currentShift);
    })
    .catch((error) => {
      console.warn("No se pudo cargar el detalle por turno de diesel.", error);
    });
}

function closeDieselEditModal() {
  if (!dieselRefs.editModal) {
    return;
  }

  dieselEditDraft = null;
  dieselRefs.editModal.hidden = true;
  document.body.classList.remove("modal-open");
}

function openDieselEditModalFromButton(button) {
  if (!button) {
    return;
  }

  try {
    const report = buildDieselConsultData();
    const rows = report.groups.flatMap((group) => group.rows);
    const index = Number(button.dataset.editIndex);
    let selectedRow = Number.isFinite(index)
      ? rows[index]
      : rows.find((row) => row.ship === (button.dataset.ship || ""));

    if (!selectedRow) {
      const cells = [...(button.closest("tr")?.children || [])];
      selectedRow = {
        item: cells[0]?.textContent?.trim() || "",
        ship: cells[1]?.textContent?.trim() || "-",
        initialStock: toNumber(cells[2]?.textContent || 0),
        received: toNumber(cells[3]?.textContent || 0),
        receivedFrom: cells[4]?.textContent?.trim() || "-",
        day: toNumber(cells[5]?.textContent || 0),
        night: toNumber(cells[6]?.textContent || 0),
        consumption: toNumber(cells[7]?.textContent || 0),
        dispatched: toNumber(cells[8]?.textContent || 0),
        transferred: toNumber(cells[9]?.textContent || 0),
        sondage: toNumber(cells[10]?.textContent || 0),
        finalStock: toNumber(cells[11]?.textContent || 0),
        dayCrew: parseCrew(cells[12]?.innerText || ""),
        nightCrew: parseCrew(cells[13]?.innerText || "")
      };
    }

    openDieselEditModal(selectedRow, {
      selectedDate: report.selectedDate,
      selectedShift: report.selectedShift
    });
  } catch (error) {
    console.error("No se pudo abrir el modal de edición diésel.", error);
    window.alert(error.message || "No se pudo abrir el modal de edición diésel.");
  }
}

window.openDieselEditModalFromButton = openDieselEditModalFromButton;
document.addEventListener("click", (event) => {
  const editButton = event.target.closest?.("#dieselConsultGroups .table-icon.edit");
  if (!editButton) {
    return;
  }

  event.preventDefault();
  event.stopPropagation();
  event.stopImmediatePropagation();
  openDieselEditModalFromButton(editButton);
}, true);

async function renderDieselConsult({ showError = false } = {}) {
  if (!dieselRefs.consultGroups || !dieselRefs.consultTabs) {
    return;
  }

  try {
    await loadDieselConsultFromSupabase();
  } catch (error) {
    console.warn("No se pudo cargar la consulta diesel desde Supabase.", error);
    dieselConsultCache = { key: getDieselConsultKey(), rows: [] };
    if (showError) {
      window.alert(error.message || "No se pudo actualizar la consulta diesel.");
    }
  }

  const report = buildDieselConsultData();
  dieselRefs.consultTabs.innerHTML = "";

  if (dieselRefs.consultModeToggle) {
    dieselRefs.consultModeToggle.setAttribute("aria-pressed", String(showAllDieselConsultItems));
    dieselRefs.consultModeToggle.innerHTML = showAllDieselConsultItems
      ? '<i data-lucide="activity"></i>Ver solo movimientos'
      : '<i data-lucide="list-filter"></i>Ver todas las naves';
  }

  if (!report.groups.length) {
    dieselRefs.consultGroups.innerHTML = `
      <article class="panel-card empty-consult-card">
        <i data-lucide="database"></i>
        <h3>${showAllDieselConsultItems ? "Sin naves para mostrar" : "Sin movimientos guardados"}</h3>
        <p>${showAllDieselConsultItems ? "No hay naves que coincidan con los filtros actuales." : "Cambia a ver todas las naves o guarda movimientos reales para esta fecha."}</p>
      </article>
    `;
    if (dieselRefs.consultSummary) {
      dieselRefs.consultSummary.textContent = "Mostrando 0 registros";
    }
    renderIcons();
    return;
  }

  const formatCrew = (crew) => `<span class="crew-lines"><b>CAP:</b> ${crew.captain || "-"}<br><b>MOT:</b> ${crew.driver || "-"}</span>`;
  const editRows = report.groups.flatMap((currentGroup) => currentGroup.rows);
  let editRowIndex = 0;

  dieselRefs.consultGroups.innerHTML = report.groups.map(({ group, icon, rows, totals }) => {
    const tableRows = rows.map((row) => {
      const currentEditIndex = editRowIndex;
      editRowIndex += 1;

      return `
        <tr>
          <td>${row.ship}</td>
          <td>${formatNumber(row.initialStock)}</td>
          <td>${row.received ? formatNumber(row.received) : "-"}</td>
          <td>${row.receivedFrom}</td>
          <td>${formatNumber(row.day)}</td>
          <td>${formatNumber(row.night)}</td>
          <td>${formatNumber(row.consumption)}</td>
          <td>${row.dispatched ? formatNumber(row.dispatched) : "-"}</td>
          <td>${row.transferred ? formatNumber(row.transferred) : "-"}</td>
          <td>${formatNumber(row.sondage)}</td>
          <td>${formatNumber(row.finalStock)}</td>
          <td>${formatCrew(row.dayCrew)}</td>
          <td>${formatCrew(row.nightCrew)}</td>
          <td><button class="table-icon edit" type="button" data-edit-index="${currentEditIndex}" aria-label="Editar ${row.ship}" onclick="event.preventDefault(); event.stopPropagation(); window.openDieselEditModalFromButton?.(this); return false;"><i data-lucide="pencil"></i></button></td>
        </tr>
      `;
    }).join("");

    return `
      <article class="consult-group-card">
        <button class="consult-group-toggle" type="button" aria-expanded="true">
          <span><i data-lucide="${icon}"></i>${group}</span>
          <b>&minus;</b>
        </button>
        <div class="consult-table-scroll">
          <table class="consult-kardex-table">
            <thead>
              <tr>
                <th>Nave/Barcaza</th>
                <th>Stock Inicial</th>
                <th>Cantidad Recibida</th>
                <th>Recibido de</th>
                <th>Consumo Día</th>
                <th>Consumo Noche</th>
                <th>Consumo Total</th>
                <th>Cantidad Despachada</th>
                <th>Cantidad Transferida</th>
                <th>Sondaje</th>
                <th>Stock Final</th>
                <th>Guardia Diurna<br><small>06:00 - 18:00 Hrs.<br>Capitán / Motorista</small></th>
                <th>Guardia Nocturna<br><small>18:00 - 06:00 Hrs.<br>Capitán / Motorista</small></th>
                <th>Editar</th>
              </tr>
            </thead>
            <tbody>${tableRows}</tbody>
            <tfoot>
              <tr>
                <td>TOTALES</td>
                <td>${formatNumber(totals.initialStock)}</td>
                <td>${formatNumber(totals.received)}</td>
                <td>-</td>
                <td>${formatNumber(totals.day)}</td>
                <td>${formatNumber(totals.night)}</td>
                <td>${formatNumber(totals.consumption)}</td>
                <td>${formatNumber(totals.dispatched)}</td>
                <td>${formatNumber(totals.transferred)}</td>
                <td>${formatNumber(totals.sondage)}</td>
                <td>${formatNumber(totals.finalStock)}</td>
                <td>-</td>
                <td>-</td>
                <td></td>
              </tr>
            </tfoot>
          </table>
        </div>
      </article>
    `;
  }).join("");

  if (dieselRefs.consultSummary) {
    const modeText = showAllDieselConsultItems ? "todas las naves" : "solo movimientos";
    dieselRefs.consultSummary.textContent = `Mostrando ${report.visibleRows} registros (${modeText})`;
  }

  dieselRefs.consultGroups.querySelectorAll(".consult-group-toggle").forEach((button) => {
    button.addEventListener("click", () => {
      const card = button.closest(".consult-group-card");
      const isCollapsed = card.classList.toggle("is-collapsed");
      button.setAttribute("aria-expanded", String(!isCollapsed));
      button.querySelector("b").innerHTML = isCollapsed ? "+" : "&minus;";
    });
  });

  dieselRefs.consultGroups.querySelectorAll(".table-icon.edit").forEach((button) => {
    button.addEventListener("click", (event) => {
      event.preventDefault();
      event.stopPropagation();
      const editButton = event.currentTarget;
      const selectedRow = editRows[Number(editButton.dataset.editIndex)];

      if (selectedRow) {
        openDieselEditModal(selectedRow, {
          selectedDate: report.selectedDate,
          selectedShift: report.selectedShift
        });
        return;
      }

      openDieselEditModalFromButton(editButton);
    });
  });

  renderIcons();
}

async function refreshDieselConsult() {
  if (!dieselRefs.consultRefresh) {
    return;
  }

  const originalHtml = dieselRefs.consultRefresh.innerHTML;
  dieselRefs.consultRefresh.disabled = true;
  dieselRefs.consultRefresh.innerHTML = '<i data-lucide="loader-circle"></i>Actualizando...';
  renderIcons();

  try {
    await renderDieselConsult({ showError: true });
  } finally {
    dieselRefs.consultRefresh.disabled = false;
    dieselRefs.consultRefresh.innerHTML = originalHtml;
    renderIcons();
  }
}

function getConsultReportName(extension) {
  const date = dieselRefs.consultDate?.value || new Date().toISOString().slice(0, 10);
  return `reporte-diesel-${date}.${extension}`;
}

async function loadAllDieselRowsForExport() {
  const session = getSession();

  if (!session?.accessToken) {
    return [];
  }

  const pageSize = 1000;
  const rows = [];
  let offset = 0;

  while (true) {
    const query = new URLSearchParams({
      select: "*",
      order: "fecha.asc,unidad_orden.asc",
      limit: String(pageSize),
      offset: String(offset)
    });

    const batch = await supabaseRequest(`/rest/v1/v_diesel_resumen_diario?${query}`, {
      headers: {
        Authorization: `Bearer ${session.accessToken}`
      }
    });

    if (!Array.isArray(batch) || batch.length === 0) {
      break;
    }

    rows.push(...batch);
    if (batch.length < pageSize) {
      break;
    }

    offset += pageSize;
  }

  return rows;
}

async function loadAllDieselMovementsForExport() {
  const session = getSession();

  if (!session?.accessToken) {
    return [];
  }

  const pageSize = 1000;
  const rows = [];
  let offset = 0;

  while (true) {
    const query = new URLSearchParams({
      select: "id,kardex_id,fecha,turno,tipo,cantidad,n_vale,nave_origen_id,nave_destino_id,created_at,nave_origen:unidades!diesel_movimientos_nave_origen_id_fkey(nombre),nave_destino:unidades!diesel_movimientos_nave_destino_id_fkey(nombre)",
      estado: "eq.vigente",
      order: "fecha.asc,turno.asc,created_at.asc",
      limit: String(pageSize),
      offset: String(offset)
    });

    const batch = await supabaseRequest(`/rest/v1/diesel_movimientos?${query}`, {
      headers: {
        Authorization: `Bearer ${session.accessToken}`
      }
    });

    if (!Array.isArray(batch) || batch.length === 0) {
      break;
    }

    rows.push(...batch);
    if (batch.length < pageSize) {
      break;
    }

    offset += pageSize;
  }

  return rows;
}

function getDieselExportUnitDateKey(unitId, fecha) {
  return `${unitId || ""}|${fecha || ""}`;
}

function getDieselExportShiftLabel(turno) {
  return String(turno || "").toLowerCase() === "nocturno" ? "NOCHE" : "DIA";
}

function getDieselExportShiftOrder(turno) {
  return String(turno || "").toLowerCase() === "nocturno" ? 2 : 1;
}

function sortDieselExportMovements(movements) {
  return [...(movements || [])].sort((first, second) => {
    const shiftDelta = getDieselExportShiftOrder(first.turno) - getDieselExportShiftOrder(second.turno);
    if (shiftDelta !== 0) {
      return shiftDelta;
    }
    return String(first.created_at || "").localeCompare(String(second.created_at || ""));
  });
}

function formatDieselExportAmount(value) {
  const numeric = toNumber(value);
  return Number.isInteger(numeric) ? String(numeric) : String(numeric);
}

function getDieselMovementVesselName(movement, direction) {
  const vessel = direction === "origin"
    ? movement?.nave_origen?.nombre
    : movement?.nave_destino?.nombre;
  return normalizeDieselDisplayName(vessel || "");
}

function formatDieselMovementDetail(movement, direction = "destino") {
  const vessel = getDieselMovementVesselName(movement, direction === "origen" ? "origin" : "destino");
  const amount = formatDieselExportAmount(movement?.cantidad);
  const voucher = String(movement?.n_vale || "-").trim() || "-";
  return `| ${amount} gl | ${vessel} | vale: ${voucher} |`;
}

function groupDieselExportMovements(movements) {
  const receivedByDestination = new Map();
  const outgoingByOrigin = new Map();

  (movements || []).forEach((movement) => {
    const type = String(movement.tipo || "").toLowerCase();
    if (type === "recibido" && movement.nave_destino_id) {
      const key = getDieselExportUnitDateKey(movement.nave_destino_id, movement.fecha);
      if (!receivedByDestination.has(key)) {
        receivedByDestination.set(key, []);
      }
      receivedByDestination.get(key).push(movement);
    }

    if ((type === "despacho" || type === "transferencia") && movement.nave_origen_id) {
      const key = getDieselExportUnitDateKey(movement.nave_origen_id, movement.fecha);
      if (!outgoingByOrigin.has(key)) {
        outgoingByOrigin.set(key, { despacho: [], transferencia: [] });
      }
      outgoingByOrigin.get(key)[type].push(movement);
    }
  });

  receivedByDestination.forEach((items, key) => {
    receivedByDestination.set(key, sortDieselExportMovements(items));
  });
  outgoingByOrigin.forEach((groups) => {
    groups.despacho = sortDieselExportMovements(groups.despacho);
    groups.transferencia = sortDieselExportMovements(groups.transferencia);
  });

  return { receivedByDestination, outgoingByOrigin };
}

function buildDieselExportDetailText(movements, direction = "destino") {
  return (movements || [])
    .filter((movement) => toNumber(movement.cantidad) > 0)
    .map((movement) => formatDieselMovementDetail(movement, direction))
    .filter(Boolean)
    .join("\n");
}

function getDieselExportMonthLabel(fecha) {
  if (!fecha) {
    return "";
  }
  const monthLabel = new Date(`${fecha}T00:00:00`).toLocaleDateString("es-PE", { month: "long" });
  return monthLabel ? monthLabel.charAt(0).toUpperCase() + monthLabel.slice(1) : "";
}

function getDieselExportBaseMeta(record) {
  const fecha = record.fecha || "";
  const ship = normalizeDieselDisplayName(record.unidad_nombre || "");
  const catalog = findDieselCatalogByShip(ship) || {};
  return {
    fecha,
    dateValue: createExcelSafeDate(fecha),
    year: fecha ? fecha.slice(0, 4) : "",
    month: getDieselExportMonthLabel(fecha),
    ship,
    catalog
  };
}

function buildDieselExportRow(record, overrides = {}) {
  const meta = getDieselExportBaseMeta(record);
  const received = overrides.received ?? (toNumber(record.cantidad_recibida) + toNumber(record.total_recarga));
  const consumptionDay = overrides.consumptionDay ?? toNumber(record.consumo_dia);
  const consumptionNight = overrides.consumptionNight ?? toNumber(record.consumo_noche);
  const consumptionTotal = overrides.consumptionTotal ?? (consumptionDay + consumptionNight);
  const transferred = overrides.transferred ?? toNumber(record.cantidad_transferida);
  const dispatched = overrides.dispatched ?? toNumber(record.cantidad_despachada);

  return [
    meta.dateValue,
    meta.year,
    meta.month,
    meta.catalog.group || record.unidad_tipo || "SIN AGRUPAR",
    meta.catalog.type || "-",
    overrides.turno || "DIA/NOCHE",
    meta.ship,
    overrides.initialStock ?? toNumber(record.stock_inicial_dia),
    overrides.receivedDay ?? getExcelNumberOrBlank(record.canti_recibi_dia),
    overrides.receivedNight ?? getExcelNumberOrBlank(record.canti_recibi_noche),
    received || "",
    overrides.receivedFrom ?? normalizeDieselDisplayName(record.recibido_de || ""),
    consumptionDay || "",
    consumptionNight || "",
    consumptionTotal || "",
    overrides.transferredDay ?? getExcelNumberOrBlank(record.canti_trans_dia),
    overrides.transferredNight ?? getExcelNumberOrBlank(record.canti_trans_noche),
    transferred || "",
    overrides.transferDetail ?? normalizeDieselDisplayName(record.detalle_transferencia || ""),
    overrides.dispatchedDay ?? getExcelNumberOrBlank(record.canti_despachada_dia),
    overrides.dispatchedNight ?? getExcelNumberOrBlank(record.canti_despachada_noche),
    dispatched || "",
    overrides.dispatchDetail ?? normalizeDieselDisplayName(record.detalle_despacho || ""),
    overrides.sondajeIni ?? getExcelNumberOrBlank(record.sondaje_ini),
    overrides.sondajeFin ?? getExcelNumberOrBlank(record.sondaje_fin),
    overrides.finalStock ?? toNumber(record.stock_final_dia),
    overrides.voucher ?? (record.n_vale_despacho || record.n_vale_recarga || ""),
    overrides.capitanDia ?? (record.capitan_dia || "-"),
    overrides.motoristaDia ?? (record.motorista_dia || "-"),
    overrides.capitanNoche ?? (record.capitan_noche || "-"),
    overrides.motoristaNoche ?? (record.motorista_noche || "-"),
    overrides.usuario ?? (record.registrado_por_dia || record.registrado_por_noche || "PRODUCCION")
  ];
}

function buildDieselExportSplitRows(record, receivedMovements, outgoingGroups) {
  const rows = [];
  const sortedMovements = sortDieselExportMovements(receivedMovements);
  const lastMovementByShift = new Map();

  sortedMovements.forEach((movement) => {
    lastMovementByShift.set(getDieselExportShiftLabel(movement.turno), movement.id);
  });

  let runningStock = toNumber(record.stock_inicial_dia);
  const lastOverallId = sortedMovements[sortedMovements.length - 1]?.id;

  sortedMovements.forEach((movement) => {
    const shiftLabel = getDieselExportShiftLabel(movement.turno);
    const isDay = shiftLabel === "DIA";
    const isLastInShift = lastMovementByShift.get(shiftLabel) === movement.id;
    const isLastOverall = lastOverallId === movement.id;
    const received = toNumber(movement.cantidad);
    const consumptionDay = isDay && isLastInShift ? toNumber(record.consumo_dia) : 0;
    const consumptionNight = !isDay && isLastInShift ? toNumber(record.consumo_noche) : 0;
    const transferredDay = isDay && isLastInShift ? getExcelNumberOrBlank(record.canti_trans_dia) : "";
    const transferredNight = !isDay && isLastInShift ? getExcelNumberOrBlank(record.canti_trans_noche) : "";
    const dispatchedDay = isDay && isLastInShift ? getExcelNumberOrBlank(record.canti_despachada_dia) : "";
    const dispatchedNight = !isDay && isLastInShift ? getExcelNumberOrBlank(record.canti_despachada_noche) : "";
    const transferred = toNumber(transferredDay) + toNumber(transferredNight);
    const dispatched = toNumber(dispatchedDay) + toNumber(dispatchedNight);
    const sondajeIni = isLastOverall ? getExcelNumberOrBlank(record.sondaje_ini) : "";
    const sondajeFin = isLastOverall ? getExcelNumberOrBlank(record.sondaje_fin) : "";
    const recharge = isLastOverall ? toNumber(record.total_recarga) : 0;
    const finalStock = runningStock + received + recharge + toNumber(sondajeIni) + toNumber(sondajeFin)
      - consumptionDay - consumptionNight - transferred - dispatched;
    const currentInitialStock = runningStock;
    runningStock = finalStock;

    rows.push(buildDieselExportRow(record, {
      turno: shiftLabel,
      initialStock: currentInitialStock,
      receivedDay: isDay ? received : "",
      receivedNight: isDay ? "" : received,
      received,
      receivedFrom: getDieselMovementVesselName(movement, "origin"),
      consumptionDay,
      consumptionNight,
      consumptionTotal: consumptionDay + consumptionNight,
      transferredDay,
      transferredNight,
      transferred,
      transferDetail: isLastOverall ? buildDieselExportDetailText(outgoingGroups?.transferencia || [], "destino") : "",
      dispatchedDay,
      dispatchedNight,
      dispatched,
      dispatchDetail: isLastOverall ? buildDieselExportDetailText(outgoingGroups?.despacho || [], "destino") : "",
      sondajeIni,
      sondajeFin,
      finalStock,
      voucher: movement.n_vale || "",
      capitanDia: isDay ? (record.capitan_dia || "-") : "-",
      motoristaDia: isDay ? (record.motorista_dia || "-") : "-",
      capitanNoche: isDay ? "-" : (record.capitan_noche || "-"),
      motoristaNoche: isDay ? "-" : (record.motorista_noche || "-"),
      usuario: isDay
        ? (record.registrado_por_dia || record.registrado_por_noche || "PRODUCCION")
        : (record.registrado_por_noche || record.registrado_por_dia || "PRODUCCION")
    }));
  });

  return rows;
}

function formatDieselDailyReportDate(fecha) {
  if (!fecha) {
    return "";
  }

  const date = new Date(`${fecha}T00:00:00`);
  return date.toLocaleDateString("es-PE", {
    weekday: "long",
    day: "2-digit",
    month: "long",
    year: "numeric"
  }).replace(/,/g, "").toUpperCase();
}

function getDieselDailyReportCrew(captain, driver) {
  const cleanCaptain = captain && captain !== "-" ? captain : "-";
  const cleanDriver = driver && driver !== "-" ? driver : "-";
  return `CAPITÁN: ${cleanCaptain}\nMOTORISTA: ${cleanDriver}`;
}

function setDieselDailyReportRow(sheet, rowNumber, record) {
  const row = sheet.getRow(rowNumber);
  const initialStock = toNumber(record?.stock_inicial_dia);
  const received = toNumber(record?.cantidad_recibida) + toNumber(record?.total_recarga);
  const receivedFrom = normalizeDieselDisplayName(record?.recibido_de || "");
  const dayConsumption = toNumber(record?.consumo_dia);
  const nightConsumption = toNumber(record?.consumo_noche);
  const delivered = toNumber(record?.cantidad_despachada) + toNumber(record?.cantidad_transferida);
  const sondage = toNumber(record?.sondaje_neto);

  sheet.getCell(rowNumber, 3).value = initialStock || 0;
  sheet.getCell(rowNumber, 4).value = received || null;
  sheet.getCell(rowNumber, 5).value = receivedFrom && receivedFrom !== "-" ? receivedFrom : null;
  sheet.getCell(rowNumber, 6).value = dayConsumption || 0;
  sheet.getCell(rowNumber, 7).value = nightConsumption || 0;
  sheet.getCell(rowNumber, 8).value = { formula: `SUM(F${rowNumber}:G${rowNumber})` };
  sheet.getCell(rowNumber, 9).value = delivered || null;
  sheet.getCell(rowNumber, 10).value = sondage || null;
  sheet.getCell(rowNumber, 11).value = { formula: `C${rowNumber}+D${rowNumber}-H${rowNumber}-I${rowNumber}+J${rowNumber}` };
  sheet.getCell(rowNumber, 12).value = getDieselDailyReportCrew(record?.capitan_dia, record?.motorista_dia);
  sheet.getCell(rowNumber, 13).value = getDieselDailyReportCrew(record?.capitan_noche, record?.motorista_noche);
  row.commit?.();
}

function cloneExcelStyle(style) {
  return style ? JSON.parse(JSON.stringify(style)) : {};
}

function safeUnmergeCells(sheet, range) {
  try {
    sheet.unMergeCells(range);
  } catch (error) {
    // La plantilla puede venir sin ese merge dependiendo de la versión guardada.
  }
}

function safeMergeCells(sheet, range) {
  try {
    sheet.mergeCells(range);
  } catch (error) {
    // Si ya está unido, no hace falta repetir la operación.
  }
}

function clearDieselDailyReportAbastecedorMerges(sheet, startRow, endRow) {
  const ranges = Array.from(sheet._merges?.keys?.() || []);
  ranges.forEach((range) => {
    const match = range.match(/^([A-Z]+)(\d+):([A-Z]+)(\d+)$/);
    if (!match) return;
    const rowStart = Number(match[2]);
    const rowEnd = Number(match[4]);
    if (rowStart >= startRow && rowEnd <= endRow) {
      safeUnmergeCells(sheet, range);
    }
  });
}

function prepareDieselDailyReportAbastecedorRows(sheet, rowCount) {
  const startRow = 39;
  const templateEndRow = 54;
  const normalizedRowCount = Math.max(rowCount, 0);
  const endRow = startRow + normalizedRowCount - 1;
  const baseStyles = [4, 7, 10, 11].reduce((styles, columnNumber) => {
    styles[columnNumber] = cloneExcelStyle(sheet.getCell(39, columnNumber).style);
    return styles;
  }, {});

  clearDieselDailyReportAbastecedorMerges(sheet, startRow, templateEndRow);
  if (normalizedRowCount < templateEndRow - startRow + 1) {
    sheet.spliceRows(startRow + normalizedRowCount, templateEndRow - startRow + 1 - normalizedRowCount);
  }

  for (let rowNumber = startRow; rowNumber <= endRow; rowNumber += 1) {
    safeMergeCells(sheet, `D${rowNumber}:F${rowNumber}`);
    safeMergeCells(sheet, `G${rowNumber}:I${rowNumber}`);
    sheet.getRow(rowNumber).height = 15;
    [4, 7, 10, 11].forEach((columnNumber) => {
      const cell = sheet.getCell(rowNumber, columnNumber);
      cell.value = null;
      cell.style = cloneExcelStyle(baseStyles[columnNumber]);
      cell.alignment = {
        ...(cell.alignment || {}),
        horizontal: "center",
        vertical: "middle",
        wrapText: true
      };
    });
  }
}

function getDieselDailyReportOriginOrder(movement) {
  const origin = normalizeDieselName(getDieselMovementVesselName(movement, "origin"));
  const order = {
    TALARA: 1,
    PARINAS: 2,
    LOBITOS_EXPRESS_CARGA: 3,
    ORO: 4,
    ROGUE: 5,
    MR_BOB: 6,
    JADE_IMI: 7
  };
  return order[origin] || 99;
}

function sortDieselDailyReportAbastecedores(movements) {
  return sortDieselExportMovements(movements).sort((first, second) => {
    const originDelta = getDieselDailyReportOriginOrder(first) - getDieselDailyReportOriginOrder(second);
    if (originDelta !== 0) {
      return originDelta;
    }
    return normalizeDieselName(getDieselMovementVesselName(first, "origin"))
      .localeCompare(normalizeDieselName(getDieselMovementVesselName(second, "origin")));
  });
}

function fillDieselDailyReportAbastecedores(sheet, movements) {
  const startRow = 39;
  const rows = sortDieselDailyReportAbastecedores(
    (movements || []).filter((movement) => {
      const type = String(movement.tipo || "").toLowerCase();
      return type === "despacho" || type === "transferencia";
    })
  );

  prepareDieselDailyReportAbastecedorRows(sheet, rows.length);

  rows.forEach((movement, index) => {
    const rowNumber = startRow + index;
    sheet.getCell(rowNumber, 4).value = getDieselMovementVesselName(movement, "origin");
    sheet.getCell(rowNumber, 7).value = getDieselMovementVesselName(movement, "destino");
    sheet.getCell(rowNumber, 10).value = toNumber(movement.cantidad) || null;
    sheet.getCell(rowNumber, 11).value = movement.n_vale || null;
  });

  let groupStartRow = startRow;
  while (groupStartRow < startRow + rows.length) {
    const originName = getDieselMovementVesselName(rows[groupStartRow - startRow], "origin");
    let groupEndRow = groupStartRow;

    while (
      groupEndRow + 1 < startRow + rows.length
      && normalizeDieselName(getDieselMovementVesselName(rows[groupEndRow + 1 - startRow], "origin")) === normalizeDieselName(originName)
    ) {
      groupEndRow += 1;
    }

    safeUnmergeCells(sheet, `D${groupStartRow}:F${groupEndRow}`);
    safeMergeCells(sheet, `D${groupStartRow}:F${groupEndRow}`);
    const originCell = sheet.getCell(groupStartRow, 4);
    originCell.value = originName;
    originCell.alignment = {
      ...(originCell.alignment || {}),
      horizontal: "center",
      vertical: "middle",
      wrapText: true
    };
    groupStartRow = groupEndRow + 1;
  }
}

async function downloadDieselDailyReportExcel() {
  if (!window.ExcelJS) {
    window.alert("No se pudo cargar el exportador de Excel. Revisa tu conexion a internet e intenta otra vez.");
    return;
  }

  const selectedDate = dieselRefs.consultDate?.value || getTodayValue();
  const originalHtml = dieselRefs.consultReportExcel?.innerHTML;
  if (dieselRefs.consultReportExcel) {
    dieselRefs.consultReportExcel.disabled = true;
    dieselRefs.consultReportExcel.innerHTML = '<i data-lucide="loader-circle"></i>Generando...';
    renderIcons();
  }

  try {
    await loadDieselConsultFromSupabase();
    const [templateResponse, allMovements] = await Promise.all([
      fetch("assets/templates/nuevo-formato-reporte-diario.xlsx", { cache: "no-store" }),
      loadAllDieselMovementsForExport()
    ]);

    if (!templateResponse.ok) {
      throw new Error("No se pudo cargar la plantilla del reporte diario.");
    }

    const workbook = new ExcelJS.Workbook();
    await workbook.xlsx.load(await templateResponse.arrayBuffer());
    const sheet = workbook.getWorksheet("REPORTE DIARIO");
    if (!sheet) {
      throw new Error("La plantilla no contiene la hoja REPORTE DIARIO.");
    }
    sheet.conditionalFormattings = [];
    workbook.worksheets
      .filter((worksheet) => worksheet.name !== "REPORTE DIARIO")
      .forEach((worksheet) => workbook.removeWorksheet(worksheet.id));

    const records = (dieselConsultCache.rows || []).filter((record) => record.fecha === selectedDate);
    const recordByShip = records.reduce((map, record) => {
      map.set(normalizeDieselName(record.unidad_nombre), record);
      return map;
    }, new Map());
    const rowByShip = new Map([
      ["LOBITOS_EXPRESS_CARGA", 7],
      ["LOBITOS_EXPRESS_CONSUMO", 8],
      ["PARINAS", 11],
      ["TALARA", 12],
      ["OLYMPIC_EXPRESS", 13],
      ["OLYMPIC", 13],
      ["DONALD_ROBIN", 16],
      ["SHEILA_R", 17],
      ["IRIS", 18],
      ["VILMA", 19],
      ["ROSLYN", 20],
      ["CHIP_II", 21],
      ["CHIPP_II", 21],
      ["BUCKLEY_EXPRESS", 22],
      ["CABO_BLANCO", 23],
      ["ELIZABETH", 26],
      ["ORO", 27],
      ["ROGUE", 28],
      ["MR_BOB", 29],
      ["JADE_IMI", 30],
      ["LJ_KELLEY", 32]
    ]);

    const rowsAlreadyFilled = new Set();
    rowByShip.forEach((rowNumber, shipKey) => {
      if (rowsAlreadyFilled.has(rowNumber)) {
        return;
      }

      const matchingRecord = [...recordByShip.entries()].find(([recordKey]) => rowByShip.get(recordKey) === rowNumber)?.[1];
      setDieselDailyReportRow(sheet, rowNumber, matchingRecord || {});
      rowsAlreadyFilled.add(rowNumber);
    });

    sheet.getCell("B2").value = formatDieselDailyReportDate(selectedDate);
    sheet.getCell("L3").value = createExcelSafeDate(selectedDate);
    sheet.getCell("L3").numFmt = "dd/mm/yyyy";
    await addDieselDailyReportLogos(workbook, sheet);

    fillDieselDailyReportAbastecedores(
      sheet,
      allMovements.filter((movement) => movement.fecha === selectedDate)
    );

    workbook.calcProperties = { fullCalcOnLoad: true };
    const buffer = await workbook.xlsx.writeBuffer();
    downloadBlob(
      new Blob([buffer], { type: "application/vnd.openxmlformats-officedocument.spreadsheetml.sheet" }),
      `reporte-diario-diesel-${selectedDate}.xlsx`
    );
  } catch (error) {
    window.alert(error.message || "No se pudo generar el reporte Excel.");
  } finally {
    if (dieselRefs.consultReportExcel) {
      dieselRefs.consultReportExcel.disabled = false;
      dieselRefs.consultReportExcel.innerHTML = originalHtml;
      renderIcons();
    }
  }
}

async function addDieselDailyReportLogos(workbook, sheet) {
  const [leftLogo, rightLogo] = await Promise.all([
    loadAssetAsBase64("assets/templates/reporte-diario-logo-izquierdo.png"),
    loadAssetAsBase64("assets/templates/reporte-diario-logo-derecho.jpeg")
  ]);

  if (leftLogo) {
    const leftImageId = workbook.addImage({ base64: leftLogo, extension: "png" });
    sheet.addImage(leftImageId, {
      tl: { col: 0, row: 0 },
      ext: { width: 86, height: 61 }
    });
  }

  if (rightLogo) {
    const rightImageId = workbook.addImage({ base64: rightLogo, extension: "jpeg" });
    sheet.addImage(rightImageId, {
      tl: { col: 12.9, row: 0 },
      ext: { width: 87, height: 62 }
    });
  }
}

async function loadAssetAsBase64(src) {
  const response = await fetch(src, { cache: "no-store" });
  if (!response.ok) {
    return "";
  }

  const blob = await response.blob();
  return new Promise((resolve) => {
    const reader = new FileReader();
    reader.onloadend = () => resolve(reader.result || "");
    reader.onerror = () => resolve("");
    reader.readAsDataURL(blob);
  });
}

function getConsultShiftLabel() {
  const value = dieselRefs.consultShift?.value || "";
  if (value === "A") {
    return "Guardia Diurna";
  }
  if (value === "B") {
    return "Guardia Nocturna";
  }
  return "Todos";
}

function formatReportDateShort(value) {
  if (!value) {
    return "";
  }
  const date = new Date(`${value}T00:00:00`);
  const month = date.toLocaleDateString("es-PE", { month: "long" }).toLowerCase();
  return `${date.getDate()} de ${month} del ${date.getFullYear()}`;
}

function downloadBlob(blob, filename) {
  const url = URL.createObjectURL(blob);
  const link = document.createElement("a");
  link.href = url;
  link.download = filename;
  document.body.appendChild(link);
  link.click();
  link.remove();
  window.setTimeout(() => URL.revokeObjectURL(url), 30000);
  return url;
}

function createExcelSafeDate(value) {
  if (!value || !/^\d{4}-\d{2}-\d{2}$/.test(value)) {
    return "";
  }

  const [year, month, day] = value.split("-").map(Number);
  return new Date(year, month - 1, day, 12, 0, 0);
}

function getExcelNumberOrBlank(value) {
  const numeric = toNumber(value);
  return numeric || "";
}

function loadImageDataUrl(src) {
  return new Promise((resolve) => {
    const image = new Image();
    image.crossOrigin = "anonymous";
    image.onload = () => {
      const canvas = document.createElement("canvas");
      canvas.width = image.naturalWidth;
      canvas.height = image.naturalHeight;
      const context = canvas.getContext("2d");
      context.drawImage(image, 0, 0);
      resolve(canvas.toDataURL("image/png"));
    };
    image.onerror = () => resolve("");
    image.src = src;
  });
}

async function downloadDieselConsultPdf() {
  if (!window.jspdf?.jsPDF) {
    window.alert("No se pudo cargar el generador de PDF. Revisa tu conexion a internet e intenta otra vez.");
    return;
  }

  const pdfWindow = window.open("", "_blank");
  const report = buildDieselConsultData();
  const { jsPDF } = window.jspdf;
  const doc = new jsPDF({ orientation: "portrait", unit: "mm", format: "a4" });
  const filename = getConsultReportName("pdf");
  const logoData = await loadImageDataUrl("assets/alm_logo.png");
  const selectedDate = formatDisplayDate(dieselRefs.consultDate?.value || "");
  const reportDateTitle = formatReportDateShort(dieselRefs.consultDate?.value || "");
  const selectedShip = report.selectedShip || "Todas";
  const generatedAt = new Date().toLocaleString("es-PE", { dateStyle: "short", timeStyle: "short" });
  const headerColor = [0, 128, 111];
  const navy = [7, 28, 61];
  let y = 40;

  const drawHeader = () => {
    doc.setFillColor(248, 251, 255);
    doc.rect(0, 0, 210, 24, "F");
    if (logoData) {
      doc.addImage(logoData, "PNG", 10, 7, 8, 8);
    }
    doc.setTextColor(...navy);
    doc.setFont("helvetica", "bold");
    doc.setFontSize(8.5);
    doc.text("ALM ERP", 21, 10);
    doc.setFontSize(4.8);
    doc.text("SISTEMA DE GESTION PORTUARIA", 21, 14);
    doc.setFontSize(9.5);
    doc.text("REPORTE DIARIO DIESEL", 105, 10, { align: "center" });
    doc.setTextColor(...headerColor);
    doc.setFontSize(6.8);
    doc.text(reportDateTitle, 105, 15, { align: "center" });
    doc.setTextColor(...navy);
    doc.setFontSize(5.2);
    doc.text(`Fecha del reporte: ${generatedAt}`, 151, 9);
    doc.text("Generado por: Administrador", 151, 13);
    doc.text(`Pagina: ${doc.internal.getNumberOfPages()}`, 151, 17);
    doc.setDrawColor(222, 231, 240);
    doc.line(10, 21, 200, 21);
  };

  drawHeader();

  doc.setDrawColor(210, 220, 232);
  doc.roundedRect(10, 26, 190, 9, 1.5, 1.5);
  doc.setFontSize(5.2);
  doc.setFont("helvetica", "bold");
  doc.setTextColor(...navy);
  doc.text("FECHA:", 14, 30);
  doc.text("NAVE / BCZA.:", 48, 30);
  doc.text("TURNO:", 85, 30);
  doc.text("CONTROLADORES DE TURNO:", 116, 30);
  doc.setFont("helvetica", "normal");
  doc.text(selectedDate || "-", 14, 33.5);
  doc.text(selectedShip, 48, 33.5);
  doc.text(getConsultShiftLabel(), 85, 33.5);
  doc.text("TURNO DIA: Javier Cespedes Rosales", 116, 32);
  doc.text("TURNO NOCHE: Jimmy Perez Moran", 116, 34.5);

  report.groups.forEach((group) => {
    const body = group.rows.map((row) => [
      row.item,
      row.ship,
      formatNumber(row.initialStock),
      row.received ? formatNumber(row.received) : "-",
      normalizeDieselDisplayName(row.receivedFrom),
      formatNumber(row.day),
      formatNumber(row.night),
      formatNumber(row.consumption),
      row.dispatched ? formatNumber(row.dispatched) : "-",
      row.transferred ? formatNumber(row.transferred) : "-",
      formatNumber(row.sondage),
      formatNumber(row.finalStock),
      `CAP: ${row.dayCrew.captain}\nMOT: ${row.dayCrew.driver}`,
      `CAP: ${row.nightCrew.captain}\nMOT: ${row.nightCrew.driver}`
    ]);

    body.push([
      { content: "TOTALES", colSpan: 2, styles: { halign: "center", fontStyle: "bold" } },
      formatNumber(group.totals.initialStock),
      formatNumber(group.totals.received),
      "-",
      formatNumber(group.totals.day),
      formatNumber(group.totals.night),
      formatNumber(group.totals.consumption),
      formatNumber(group.totals.dispatched),
      formatNumber(group.totals.transferred),
      formatNumber(group.totals.sondage),
      formatNumber(group.totals.finalStock),
      "-",
      "-"
    ]);

    if (y > 250) {
      doc.addPage();
      drawHeader();
      y = 30;
    }

    doc.setFont("helvetica", "bold");
    doc.setFontSize(8.2);
    doc.setTextColor(...headerColor);
    doc.text(group.group, 10, y - 2);

    doc.autoTable({
      startY: y,
      margin: { top: 28, left: 10, right: 10, bottom: 8 },
      head: [[
        "Item", "Nave / BCZA.", "Stock Inicial", "Cant. Recibida", "Recibido de",
        "Consumo Día", "Consumo Noche", "Consumo Total", "Cant. Despachada",
        "Cant. Transferida", "Sondaje", "Stock Final", "Guardia Diurna", "Guardia Nocturna"
      ]],
      body,
      theme: "grid",
      tableWidth: "auto",
      styles: { fontSize: 5.25, cellPadding: 0.92, textColor: navy, lineColor: [224, 232, 240], lineWidth: 0.1, valign: "middle" },
      headStyles: { fillColor: [248, 251, 255], textColor: [8, 34, 87], fontStyle: "bold", halign: "center", fontSize: 4.65 },
      footStyles: { fillColor: [251, 253, 255] },
      alternateRowStyles: { fillColor: [255, 255, 255] },
      columnStyles: {
        0: { cellWidth: 5, halign: "center" },
        1: { cellWidth: 25 },
        2: { cellWidth: 8, halign: "center" },
        3: { cellWidth: 8, halign: "center" },
        4: { cellWidth: 11, halign: "center" },
        5: { cellWidth: 7.4, halign: "center" },
        6: { cellWidth: 7.4, halign: "center" },
        7: { cellWidth: 7.4, halign: "center" },
        8: { cellWidth: 8, halign: "center" },
        9: { cellWidth: 8, halign: "center" },
        10: { cellWidth: 7.4, halign: "center" },
        11: { cellWidth: 8, halign: "center" },
        12: { cellWidth: 39.7 },
        13: { cellWidth: 39.7 }
      },
      didDrawPage: (data) => {
        if (data.pageNumber > 1) {
          drawHeader();
        }
      }
    });

    y = doc.lastAutoTable.finalY + 9;
  });

  if (y > 272) {
    doc.addPage();
    drawHeader();
    y = 30;
  }

  const summaryY = y;
  doc.setDrawColor(210, 220, 232);
  doc.roundedRect(10, summaryY, 190, 13, 1.5, 1.5);
  doc.setFont("helvetica", "bold");
  doc.setFontSize(5.4);
  doc.setTextColor(...navy);
  doc.text(`Stock Inicial Total: ${formatNumber(report.totals.initialStock)} gal`, 14, summaryY + 5.5);
  doc.text(`Cantidad Recibida Total: ${formatNumber(report.totals.received)} gal`, 67, summaryY + 5.5);
  doc.text(`Consumo Total: ${formatNumber(report.totals.consumption)} gal`, 130, summaryY + 5.5);
  doc.text(`Cantidad Despachada Total: ${formatNumber(report.totals.dispatched)} gal`, 14, summaryY + 10.5);
  doc.text(`Stock Final Total: ${formatNumber(report.totals.finalStock)} gal`, 93, summaryY + 10.5);

  const blob = doc.output("blob");
  const url = downloadBlob(blob, filename);
  if (pdfWindow) {
    pdfWindow.location.href = url;
  }
}

async function exportDieselConsultExcel() {
  if (!window.ExcelJS) {
    window.alert("No se pudo cargar el exportador de Excel. Revisa tu conexion a internet e intenta otra vez.");
    return;
  }

  const [allRows, allMovements] = await Promise.all([
    loadAllDieselRowsForExport(),
    loadAllDieselMovementsForExport()
  ]);
  const movementGroups = groupDieselExportMovements(allMovements);
  const rows = [
    [
      "FECHA", "AÑO", "MES", "TIPO AGRUPADO", "TIPO", "TURNO", "NAVE", "STOCK INICIAL",
      "CANT. RECIBIDA DIA", "CANT. RECIBIDA NOCHE", "TOTAL CANT. RECIBIDA", "RECIBIDO DE",
      "CONSUMO DIA", "CONSUMO NOCHE", "TOTAL CONSUMO",
      "CANT. TRANSFERIDA DIA", "CANT. TRANSFERIDA NOCHE", "TOTAL CANT. TRANSFERIDA", "DETALLE TRANSFERENCIA",
      "CANT. DESPACHADA DIA", "CANT. DESPACHADA NOCHE", "TOTAL CANT. DESPACHADA", "DETALLE DESPACHO",
      "SONDAJE_INI", "SONDAJE_FIN", "STOCK FINAL", "N VALE ",
      "CAPITAN DIURNO", "MOTORISTA DIURNO", "CAPITAN NOCTURNO", "MOTORISTA NOCTURNO", "USUARIO"
    ]
  ];

  allRows
    .filter((record) => !isDieselImiUnit(record.unidad_nombre || record.nave || record.ship))
    .forEach((record) => {
    const key = getDieselExportUnitDateKey(record.unidad_id, record.fecha);
    const receivedMovements = movementGroups.receivedByDestination.get(key) || [];
    const outgoingGroups = movementGroups.outgoingByOrigin.get(key) || { despacho: [], transferencia: [] };

    if (receivedMovements.length > 1) {
      rows.push(...buildDieselExportSplitRows(record, receivedMovements, outgoingGroups));
      return;
    }

    rows.push(buildDieselExportRow(record, {
      receivedFrom: receivedMovements.length === 1
        ? getDieselMovementVesselName(receivedMovements[0], "origin")
        : normalizeDieselDisplayName(record.recibido_de || ""),
      transferDetail: buildDieselExportDetailText(outgoingGroups.transferencia, "destino")
        || normalizeDieselDisplayName(record.detalle_transferencia || ""),
      dispatchDetail: buildDieselExportDetailText(outgoingGroups.despacho, "destino")
        || normalizeDieselDisplayName(record.detalle_despacho || ""),
      voucher: receivedMovements[0]?.n_vale || record.n_vale_despacho || record.n_vale_recarga || ""
    }));
  });

  const workbook = new ExcelJS.Workbook();
  const sheet = workbook.addWorksheet("KARDEX", {
    views: [{ state: "frozen", ySplit: 1 }]
  });
  const columnWidths = [
    10.25, 8.625, 8.375, 18.75, 8.75, 11, 21, 9, 13, 13, 13, 13, 13, 13, 13, 13, 13,
    13, 21, 9.625, 13, 13, 21, 15.625, 16, 9, 10.75, 19.25, 22.25, 22.375, 25.375, 12.375
  ];
  const headerFills = [
    "FFCCC1DA", "FFCCC1DA", "FFCCC1DA", "FFCCC1DA", "FFCCC1DA", "FFCCC1DA", "FFCCC1DA",
    "FFD7E4BD", "FFCCC1DA", "FFCCC1DA", "FFDCE6F2", "FFCCC1DA", "FFCCC1DA", "FFCCC1DA", "FFDCE6F2",
    "FFCCC1DA", "FFCCC1DA", "FFDCE6F2", "FFCCC1DA", "FFCCC1DA", "FFCCC1DA", "FFDCE6F2",
    "FFCCC1DA", "FFCCC1DA", "FFCCC1DA", "FFD7E4BD", "FFCCC1DA", "FFCCC1DA", "FFCCC1DA",
    "FFCCC1DA", "FFCCC1DA", "FFCCC1DA"
  ];
  const thinBorder = { style: "thin", color: { argb: "FF808080" } };
  const cellStyle = {
    font: { name: "Calibri", size: 10, color: { argb: "FF000000" } },
    alignment: { horizontal: "center", vertical: "middle", wrapText: true },
    border: { top: thinBorder, right: thinBorder, bottom: thinBorder, left: thinBorder }
  };

  sheet.columns = rows[0].map((header, index) => ({
    header,
    key: `col${index}`,
    width: columnWidths[index]
  }));
  rows.slice(1).forEach((row) => sheet.addRow(row));

  sheet.eachRow((row) => {
    row.height = 30;
    row.eachCell((cell) => {
      cell.font = { ...cellStyle.font };
      cell.alignment = { ...cellStyle.alignment };
      cell.border = { ...cellStyle.border };
    });
  });

  const bodyColumnFills = {
    8: "FFD7E4BD",
    11: "FFDCE6F2",
    15: "FFDCE6F2",
    18: "FFDCE6F2",
    22: "FFDCE6F2",
    26: "FFD7E4BD"
  };
  for (let rowIndex = 2; rowIndex <= sheet.rowCount; rowIndex += 1) {
    Object.entries(bodyColumnFills).forEach(([columnNumber, fillColor]) => {
      sheet.getCell(rowIndex, Number(columnNumber)).fill = {
        type: "pattern",
        pattern: "solid",
        fgColor: { argb: fillColor }
      };
    });
  }

  const headerRow = sheet.getRow(1);
  headerRow.eachCell((cell, columnNumber) => {
    cell.fill = { type: "pattern", pattern: "solid", fgColor: { argb: headerFills[columnNumber - 1] } };
  });

  for (let rowIndex = 2; rowIndex <= sheet.rowCount; rowIndex += 1) {
    sheet.getCell(rowIndex, 1).numFmt = "dd/mm/yyyy";
    sheet.getCell(rowIndex, 19).alignment = { ...cellStyle.alignment, horizontal: "left" };
    sheet.getCell(rowIndex, 23).alignment = { ...cellStyle.alignment, horizontal: "left" };
  }

  [19, 23].forEach((columnNumber) => {
    const column = sheet.getColumn(columnNumber);
    let maxLineLength = String(rows[0][columnNumber - 1] || "").length;

    for (let rowIndex = 2; rowIndex <= sheet.rowCount; rowIndex += 1) {
      const cell = sheet.getCell(rowIndex, columnNumber);
      const lines = String(cell.value || "").split("\n");
      maxLineLength = Math.max(maxLineLength, ...lines.map((line) => line.length));
      if (lines.length > 1) {
        sheet.getRow(rowIndex).height = Math.max(sheet.getRow(rowIndex).height || 30, 16 * lines.length + 8);
      }
    }

    column.width = Math.min(60, Math.max(column.width || 21, maxLineLength + 2));
  });

  sheet.autoFilter = {
    from: { row: 1, column: 1 },
    to: { row: Math.max(1, sheet.rowCount), column: rows[0].length }
  };

  const buffer = await workbook.xlsx.writeBuffer();
  downloadBlob(
    new Blob([buffer], { type: "application/vnd.openxmlformats-officedocument.spreadsheetml.sheet" }),
    "reporte-diesel-completo.xlsx"
  );
}

function clearDieselForm() {
  dieselRefs.date.value = "";
  dieselRefs.origin.selectedIndex = -1;
  dieselRefs.receive.selectedIndex = -1;
  dieselRefs.captain.value = "";
  dieselRefs.driver.value = "";
  dieselRefs.document.value = "";
  dieselRefs.recharge.value = "";
  dieselRefs.rechargeVoucher.value = "";
  dieselRefs.consumption.value = "";
  dieselRefs.returnVolume.value = "";
  dieselRefs.difference.value = "";
  dieselRefs.qty.value = "";
  dieselRefs.voucher.value = "";
  dieselRefs.observation.value = "";
  dieselRefs.observationCount.textContent = "0";
  document.querySelectorAll('input[name="dieselShift"]').forEach((input) => {
    input.checked = false;
  });
  document.querySelectorAll(".diesel-module .switch input").forEach((input) => {
    input.checked = false;
    updateModuleState(input.closest(".diesel-module"));
  });
  dieselDispatches = [];
  updateSondageInputs();
  renderDieselRows();
  updateDieselSummary();
}

function syncDieselInitialStockDisplay() {
  if (!dieselRefs.origin?.value) {
    updateDieselSummary();
    return;
  }

  refreshDieselInitialStock();
}

function clearDieselFormAfterSave() {
  dieselRefs.receive.selectedIndex = -1;
  dieselRefs.captain.value = "";
  dieselRefs.driver.value = "";
  dieselRefs.document.value = "";
  dieselRefs.recharge.value = "";
  dieselRefs.rechargeVoucher.value = "";
  dieselRefs.consumption.value = "";
  dieselRefs.returnVolume.value = "";
  dieselRefs.difference.value = "";
  dieselRefs.qty.value = "";
  dieselRefs.voucher.value = "";
  dieselRefs.observation.value = "";
  dieselRefs.observationCount.textContent = "0";
  dieselDispatches = [];
  updateSondageInputs();
  renderDieselRows();
  updateDieselSummary();
}

function resetDieselInitialState() {
  if (!dieselRefs.date) {
    return;
  }

  clearDieselForm();
}

function updateModuleState(module) {
  const toggle = module.querySelector('.switch input');
  const state = module.querySelector(".module-state");
  if (!toggle || !state) {
    return;
  }
  const isActive = Boolean(toggle?.checked);
  module.classList.toggle("is-blocked", !isActive);
  state.textContent = isActive ? "Activo" : "Bloqueado";
  module.setAttribute("aria-pressed", String(isActive));
  updateDieselSummary();
}

function toggleDieselModule(module) {
  if (!module || module.classList.contains("is-always-active")) {
    return;
  }

  const toggle = module.querySelector('.switch input');
  if (!toggle) {
    return;
  }

  toggle.checked = !toggle.checked;
  updateModuleState(module);
}

function shouldToggleDieselModule(event, module) {
  if (module.classList.contains("is-blocked")) {
    return true;
  }

  if (event.target.closest(".diesel-module-head")) {
    return true;
  }

  return false;
}

function updateSondageInputs(changedControl = null) {
  const hasReturn = toNumber(dieselRefs.returnVolume.value) > 0;
  const hasDifference = toNumber(dieselRefs.difference.value) > 0;

  if (changedControl === dieselRefs.returnVolume && hasReturn) {
    dieselRefs.difference.value = "";
  }

  if (changedControl === dieselRefs.difference && hasDifference) {
    dieselRefs.returnVolume.value = "";
  }

  dieselRefs.difference.disabled = toNumber(dieselRefs.returnVolume.value) > 0;
  dieselRefs.returnVolume.disabled = toNumber(dieselRefs.difference.value) > 0;
  dieselRefs.difference.classList.toggle("negative", toNumber(dieselRefs.difference.value) > 0);
  dieselRefs.returnVolume.classList.toggle("positive-field", toNumber(dieselRefs.returnVolume.value) > 0);
  updateDieselSummary();
}

function bootDiesel() {
  populateDieselShips();
  populateDieselConsultFilters();
  resetDieselInitialState();

  document.querySelectorAll(".diesel-module").forEach((module) => {
    const toggle = module.querySelector('.switch input');
    if (!module.classList.contains("is-always-active")) {
      module.setAttribute("role", "button");
      module.setAttribute("tabindex", "0");
      module.setAttribute("aria-label", `Activar o desactivar ${module.dataset.module || "modulo"}`);
    }
    updateModuleState(module);
    toggle?.addEventListener("change", () => updateModuleState(module));
    module.addEventListener("click", (event) => {
      if (event.target.closest("input, select, textarea, button, table, a")) {
        return;
      }
      if (shouldToggleDieselModule(event, module)) {
        toggleDieselModule(module);
      }
    });
    module.addEventListener("keydown", (event) => {
      if (event.target.closest("input, select, textarea, button, table, a")) {
        return;
      }
      if (event.key !== "Enter" && event.key !== " ") {
        return;
      }
      event.preventDefault();
      toggleDieselModule(module);
    });
  });

  dieselRefs.origin?.addEventListener("change", () => {
    populateDieselShips();
    renderDieselRows();
    updateDieselSummary();
    syncDieselInitialStockDisplay();
  });
  [dieselRefs.receivePlatformToggle].forEach((button) => {
    button?.addEventListener("click", () => {
      const pressed = button.getAttribute("aria-pressed") === "true";
      button.setAttribute("aria-pressed", String(!pressed));
      populateDieselShips();
      renderDieselRows();
      updateDieselSummary();
      updateDieselSaveState();
    });
  });
  dieselRefs.add?.addEventListener("click", addDieselDispatch);
  [dieselRefs.receive, dieselRefs.qty, dieselRefs.voucher].forEach((control) => {
    control?.addEventListener("keydown", addDieselDispatchOnEnter);
  });
  dieselRefs.clear?.addEventListener("click", clearDieselForm);
  dieselRefs.save?.addEventListener("click", saveDieselRecord);

  [
    dieselRefs.date,
    dieselRefs.origin,
    dieselRefs.receive,
    dieselRefs.captain,
    dieselRefs.driver,
    dieselRefs.document,
    dieselRefs.recharge,
    dieselRefs.rechargeVoucher,
    dieselRefs.consumption,
    dieselRefs.returnVolume,
    dieselRefs.difference,
    dieselRefs.qty,
    dieselRefs.voucher,
    dieselRefs.observation
  ].forEach((control) => {
    control?.addEventListener("input", updateDieselSaveState);
    control?.addEventListener("change", updateDieselSaveState);
  });

  document.querySelectorAll('input[name="dieselShift"]').forEach((input) => {
    input.addEventListener("change", updateDieselSaveState);
  });

  dieselRefs.date?.addEventListener("change", () => {
    if (dieselRefs.consultDate) {
      dieselRefs.consultDate.value = dieselRefs.date.value;
    }
    renderDieselConsult();
    syncDieselInitialStockDisplay();
  });
  dieselRefs.prevDay?.addEventListener("click", () => {
    dieselRefs.date.value = shiftDateValue(dieselRefs.date.value, -1);
    dieselRefs.date.dispatchEvent(new Event("change", { bubbles: true }));
    updateDieselSummary();
  });
  dieselRefs.nextDay?.addEventListener("click", () => {
    dieselRefs.date.value = shiftDateValue(dieselRefs.date.value, 1);
    dieselRefs.date.dispatchEvent(new Event("change", { bubbles: true }));
    updateDieselSummary();
  });

  dieselRefs.consultDate?.addEventListener("change", renderDieselConsult);
  dieselRefs.consultPrevDay?.addEventListener("click", () => {
    dieselRefs.consultDate.value = shiftDateValue(dieselRefs.consultDate.value, -1);
    renderDieselConsult();
  });
  dieselRefs.consultNextDay?.addEventListener("click", () => {
    dieselRefs.consultDate.value = shiftDateValue(dieselRefs.consultDate.value, 1);
    renderDieselConsult();
  });
  dieselRefs.consultVessel?.addEventListener("change", renderDieselConsult);
  dieselRefs.consultShift?.addEventListener("change", renderDieselConsult);
  dieselRefs.consultRefresh?.addEventListener("click", refreshDieselConsult);
  dieselRefs.consultBack?.addEventListener("click", () => setPage("diesel"));
  dieselRefs.consultModeToggle?.addEventListener("click", () => {
    showAllDieselConsultItems = !showAllDieselConsultItems;
    renderDieselConsult();
  });
  dieselRefs.consultGroups?.addEventListener("click", (event) => {
    const editButton = event.target.closest?.(".table-icon.edit");
    if (!editButton || !dieselRefs.consultGroups.contains(editButton)) {
      return;
    }

    event.preventDefault();
    openDieselEditModalFromButton(editButton);
  });
  dieselRefs.consultPdf?.addEventListener("click", downloadDieselConsultPdf);
  dieselRefs.consultExcel?.addEventListener("click", exportDieselConsultExcel);
  dieselRefs.consultReportExcel?.addEventListener("click", downloadDieselDailyReportExcel);
  dieselRefs.editClose?.addEventListener("click", closeDieselEditModal);
  dieselRefs.editCancel?.addEventListener("click", closeDieselEditModal);
  dieselRefs.editDelete?.addEventListener("click", () => {
    window.alert("La eliminación real se implementará en una siguiente fase.");
  });
  dieselRefs.editSave?.addEventListener("click", saveDieselEditModal);
  dieselRefs.editShiftInputs.forEach((input) => {
    input.addEventListener("change", () => {
      if (input.checked) {
        applyDieselEditShift(input.value);
      }
    });
  });
  dieselRefs.editModal?.querySelectorAll('[data-close-modal="diesel-edit"]').forEach((element) => {
    element.addEventListener("click", closeDieselEditModal);
  });
  document.addEventListener("keydown", (event) => {
    if (event.key === "Escape" && dieselRefs.editModal && !dieselRefs.editModal.hidden) {
      closeDieselEditModal();
    }
  });

  [dieselRefs.recharge, dieselRefs.consumption].forEach((control) => {
    control?.addEventListener("input", updateDieselSummary);
  });

  [dieselRefs.returnVolume, dieselRefs.difference].forEach((control) => {
    control?.addEventListener("input", () => updateSondageInputs(control));
  });

  updateSondageInputs();
  if (dieselRefs.consultDate) {
    dieselRefs.consultDate.value = getTodayValue();
  }
  renderDieselConsult();
  syncDieselInitialStockDisplay();

  dieselRefs.observation?.addEventListener("input", () => {
    dieselRefs.observationCount.textContent = String(dieselRefs.observation.value.length);
  });

  consultDieselButton?.addEventListener("click", () => {
    if (dieselRefs.consultDate) {
      dieselRefs.consultDate.value = dieselRefs.date?.value || getTodayValue();
    }
    setPage("consulta");
    renderDieselConsult();
  });
}

async function authenticate(username, password) {
  const email = buildAuthEmail(username);
  const authData = await supabaseRequest("/auth/v1/token?grant_type=password", {
    method: "POST",
    body: JSON.stringify({
      email,
      password
    })
  });
  const profile = await loadSupabaseProfile(authData.user, authData.access_token);
  const roleName = formatRoleName(profile.roles?.nombre || profile.roles?.codigo);

  return {
    id: profile.id,
    name: profile.nombre || profile.username || authData.user.email,
    username: profile.username || normalize(username),
    email: profile.email || authData.user.email,
    role: roleName,
    accessToken: authData.access_token,
    refreshToken: authData.refresh_token,
    authProvider: "supabase"
  };
}

loginForm.addEventListener("submit", async (event) => {
  event.preventDefault();

  const username = usernameInput.value.trim();
  const password = passwordInput.value;

  if (!username || !password) {
    setMessage("Ingresa tu usuario y contraseña para continuar.", "error");
    return;
  }

  const submitButton = loginForm.querySelector(".primary-button");
  submitButton.disabled = true;
  setMessage("Verificando credenciales...");

  try {
    const user = await authenticate(username, password);

    if (!user) {
      setMessage("Usuario o contraseña incorrectos.", "error");
      passwordInput.select();
      return;
    }

    saveSession(user, rememberInput.checked);
    setMessage("Sesión iniciada correctamente.", "success");

    window.setTimeout(() => {
      showDashboard(getSession());
    }, 350);
  } catch (error) {
    setMessage(error.message || "No se pudo validar el acceso con Supabase.", "error");
  } finally {
    submitButton.disabled = false;
  }
});

togglePasswordButton.addEventListener("click", () => {
  const isHidden = passwordInput.type === "password";
  passwordInput.type = isHidden ? "text" : "password";
  togglePasswordButton.setAttribute("aria-label", isHidden ? "Ocultar contraseña" : "Mostrar contraseña");
});

recoverButton.addEventListener("click", () => {
    setMessage("Recuperación pendiente: luego la conectaremos con tu flujo real de usuarios.", "success");
});

logoutButton.addEventListener("click", showLogin);

navItems.forEach((item) => {
  item.addEventListener("click", (event) => {
    event.preventDefault();
    setPage(item.dataset.page);
  });
});

if (notificationButton && notificationPanel) {
  notificationButton.addEventListener("click", (event) => {
    event.stopPropagation();
    closeProfileMenu();
    notificationPanel.hidden = !notificationPanel.hidden;
    notificationButton.setAttribute("aria-expanded", String(!notificationPanel.hidden));
    renderIcons();
  });

  document.addEventListener("click", (event) => {
    if (!notificationPanel.hidden && !notificationPanel.contains(event.target) && !notificationButton.contains(event.target)) {
      closeNotificationPanel();
    }
  });
}

if (profileButton && profileMenu) {
  profileButton.addEventListener("click", (event) => {
    event.stopPropagation();
    closeNotificationPanel();
    profileMenu.hidden = !profileMenu.hidden;
    profileButton.setAttribute("aria-expanded", String(!profileMenu.hidden));
    renderIcons();
  });

  profileMenu.addEventListener("click", (event) => {
    event.stopPropagation();
  });

  document.addEventListener("click", (event) => {
    if (!profileMenu.hidden && !profileMenu.contains(event.target) && !profileButton.contains(event.target)) {
      closeProfileMenu();
    }
  });
}

menuButton?.addEventListener("click", () => {
  setSidebarCollapsed(!dashboardPage.classList.contains("sidebar-collapsed"));
});

passengerRefs.add?.addEventListener("click", addPassengerEntry);
passengerRefs.clear?.addEventListener("click", clearPassengerForm);
passengerRefs.new?.addEventListener("click", clearPassengerForm);
passengerRefs.save?.addEventListener("click", savePassengerRecords);

[
  passengerRefs.date,
  passengerRefs.vessel,
  ...document.querySelectorAll('input[name="movement"], input[name="shift"]')
].forEach((control) => {
  control?.addEventListener("change", updatePassengerSummary);
});

bindDateStepper(passengerRefs.date, passengerRefs.prevDay, passengerRefs.nextDay);

document.addEventListener("keydown", (event) => {
  if (document.querySelector('[data-view="passengers"]')?.hidden === false) {
    if (event.key === "Enter" && document.activeElement === passengerRefs.quantity) {
      event.preventDefault();
      addPassengerEntry();
    }
    if (event.key === "Escape") {
      clearPassengerForm();
    }
    if (event.ctrlKey && event.key.toLowerCase() === "g") {
      event.preventDefault();
      savePassengerRecords();
    }
  }
});

function getCurrentTimeValue() {
  return new Date().toTimeString().slice(0, 5);
}

function getBitacoraShiftLabel(timeValue = getCurrentTimeValue()) {
  const hour = Number(String(timeValue).slice(0, 2));
  return hour >= 6 && hour < 18 ? "Diurno" : "Nocturno";
}

function formatTimeLabel(value) {
  if (!value) {
    return "--:--";
  }
  const [hourText, minuteText] = String(value).split(":");
  const hour = Number(hourText);
  const minute = Number(minuteText || 0);
  if (!Number.isFinite(hour) || !Number.isFinite(minute)) {
    return "--:--";
  }
  return `${String(hour).padStart(2, "0")}:${String(minute).padStart(2, "0")}`;
}

function getTimeMinutes(value) {
  if (!value) {
    return null;
  }
  const [hourText, minuteText] = String(value).split(":");
  const hour = Number(hourText);
  const minute = Number(minuteText || 0);
  if (!Number.isFinite(hour) || !Number.isFinite(minute)) {
    return null;
  }
  return (hour * 60) + minute;
}

function getBitacoraDurationMinutes(startTime, endTime) {
  const startMinutes = getTimeMinutes(startTime);
  const endMinutes = getTimeMinutes(endTime);
  if (startMinutes === null || endMinutes === null || endMinutes < startMinutes) {
    return null;
  }
  return endMinutes - startMinutes;
}

function getBitacoraRecentTime(event) {
  return String(event?.hora_fin || event?.hora_inicio || event?.created_at || "");
}

function compareBitacoraNewestFirst(a, b) {
  return getBitacoraRecentTime(b).localeCompare(getBitacoraRecentTime(a));
}

function getBitacoraEventsForSelectedVessel() {
  const dateValue = bitacoraRefs.date?.value || getTodayValue();
  const vesselValue = bitacoraRefs.vessel?.value || "";
  return bitacoraEventsCache
    .filter((event) => {
      const eventVessel = event.nave_nombre || event.nave_texto || "";
      const matchesDate = event.fecha === dateValue;
      const matchesVessel = !vesselValue || normalizeDieselName(eventVessel) === normalizeDieselName(vesselValue);
      return matchesDate && matchesVessel;
    });
}

function getBitacoraEventsForLastEventCard() {
  const dateValue = bitacoraRefs.date?.value || "";
  const vesselValue = bitacoraRefs.vessel?.value || "";
  return bitacoraEventsCache.filter((event) => {
    const eventVessel = event.nave_nombre || event.nave_texto || "";
    const matchesDate = !dateValue || event.fecha === dateValue;
    const matchesVessel = !vesselValue || normalizeDieselName(eventVessel) === normalizeDieselName(vesselValue);
    return matchesDate && matchesVessel;
  });
}

function isBitacoraFormComplete() {
  return Boolean(
    bitacoraRefs.date?.value
    && bitacoraRefs.startTime?.value
    && bitacoraRefs.endTime?.value
    && bitacoraRefs.vessel?.value
    && bitacoraRefs.description?.value.trim()
  );
}

function updateBitacoraSubmitState() {
  if (!bitacoraRefs.submit) {
    return;
  }
  bitacoraRefs.submit.disabled = !isBitacoraFormComplete();
}

function syncBitacoraStartTimeWithLastEnd() {
  if (!bitacoraRefs.startTime || !bitacoraRefs.vessel?.value) {
    return;
  }

  const latestEvent = getBitacoraEventsForSelectedVessel()
    .filter((event) => event.hora_fin || event.hora_inicio)
    .sort(compareBitacoraNewestFirst)[0];

  if (latestEvent?.hora_fin) {
    bitacoraRefs.startTime.value = String(latestEvent.hora_fin).slice(0, 5);
    updateBitacoraHeader();
  }
}

function renderBitacoraLastEvent() {
  if (!bitacoraRefs.lastEvent) {
    return;
  }

  const latestEvent = getBitacoraEventsForLastEventCard()
    .filter((event) => event.hora_fin || event.hora_inicio || event.created_at)
    .sort(compareBitacoraNewestFirst)[0];

  if (!latestEvent) {
    bitacoraRefs.lastEvent.hidden = false;
    bitacoraRefs.lastEvent.classList.add("is-empty");
    bitacoraRefs.lastEvent.innerHTML = "";
    return;
  }

  const vessel = latestEvent.nave_nombre || latestEvent.nave_texto || "Sin nave";
  const startLabel = formatTimeLabel(latestEvent.hora_inicio);
  const endLabel = formatTimeLabel(latestEvent.hora_fin || latestEvent.hora_inicio);
  const timeLabel = `${startLabel} - ${endLabel}`;

  bitacoraRefs.lastEvent.hidden = false;
  bitacoraRefs.lastEvent.classList.remove("is-empty");
  bitacoraRefs.lastEvent.innerHTML = `
    <span>Último evento registrado</span>
    <strong>${escapeHtml(timeLabel)} · ${escapeHtml(vessel)}</strong>
    <p>${escapeHtml(latestEvent.descripcion || "-")}</p>
  `;
}

function getBitacoraStateLabel(state) {
  const labels = {
    pendiente_clasificar: "Pendiente",
    clasificado: "Clasificado",
    validado: "Validado",
    observado: "Observado"
  };
  return labels[state] || "Pendiente";
}

function getBitacoraStateClass(state) {
  const classes = {
    pendiente_clasificar: "pending",
    clasificado: "validated",
    validado: "validated",
    observado: "observed"
  };
  return classes[state] || "pending";
}

function isBitacoraClassified(event) {
  return Boolean(
    bitacoraClassificationDraft.has(event.id)
    || event.categoria_id
    || event.categoria_nombre
    || event.estado === "clasificado"
    || event.estado === "validado"
  );
}

function isBitacoraPending(event) {
  return !isBitacoraClassified(event);
}

function getBitacoraTypeClass(typeCode) {
  const normalized = normalizeDieselName(typeCode).toLowerCase();
  return normalized || "uncategorized";
}

function getBitacoraTypeName(typeCode) {
  return bitacoraTypesCache.find((type) => type.codigo === typeCode)?.nombre || "Sin tipo";
}

function getBitacoraCategoryName(categoryId) {
  return bitacoraCategoriesCache.find((category) => category.id === categoryId)?.nombre || "";
}

function normalizeBitacoraRawEvent(event) {
  const vessel = normalizeDieselDisplayName(event.nave_nombre || event.nave_texto || "");
  return {
    ...event,
    nave_nombre: vessel,
    nave_texto: vessel,
    tipo_evento_nombre: event.tipo_evento_nombre || getBitacoraTypeName(event.tipo_evento),
    categoria_nombre: event.categoria_nombre || getBitacoraCategoryName(event.categoria_id),
    registrado_por: event.registrado_por || "Usuario"
  };
}

function getSelectedBitacoraCategory() {
  return bitacoraRefs.categoryGrid?.querySelector("button.active") || null;
}

function getBitacoraCategoryButtonMeta(button) {
  if (!button) {
    return null;
  }
  const styles = window.getComputedStyle(button);
  return {
    id: button.dataset.categoryId,
    name: button.textContent.trim(),
    color: styles.getPropertyValue("--category-color").trim() || styles.color,
    bg: styles.getPropertyValue("--category-bg").trim() || "#ede9fe"
  };
}

function getBitacoraClassificationGroups() {
  const groups = new Map();
  bitacoraClassificationDraft.forEach((draft, eventId) => {
    if (!draft?.id) {
      return;
    }
    if (!groups.has(draft.id)) {
      groups.set(draft.id, []);
    }
    groups.get(draft.id).push(eventId);
  });
  return groups;
}

function updateBitacoraSelectionCount() {
  if (bitacoraRefs.categorizedCount) {
    bitacoraRefs.categorizedCount.textContent = String(bitacoraClassificationDraft.size);
  }
}

function populateBitacoraVessels() {
  if (!bitacoraRefs.vessel || bitacoraRefs.vessel.options.length) {
    return;
  }

  bitacoraRefs.vessel.add(new Option("Todos", ""));
  dieselShips.forEach((ship) => bitacoraRefs.vessel.add(new Option(ship, ship)));
}

function populateBitacoraFilterVessels(events = []) {
  if (!bitacoraRefs.categorizeVessel) {
    return;
  }

  const selectedValue = bitacoraRefs.categorizeVessel.value;
  const vessels = [...new Set([...dieselShips, ...events.map((event) => event.nave_nombre || event.nave_texto).filter(Boolean)])].sort();
  bitacoraRefs.categorizeVessel.innerHTML = '<option value="">Todas</option>';
  vessels.forEach((ship) => bitacoraRefs.categorizeVessel.add(new Option(ship, ship)));
  bitacoraRefs.categorizeVessel.value = vessels.includes(selectedValue) ? selectedValue : "";
}

function renderBitacoraTypeFilter() {
  if (!bitacoraRefs.categorizeType) {
    return;
  }

  const selectedValue = bitacoraRefs.categorizeType.value;
  bitacoraRefs.categorizeType.innerHTML = '<option value="">Todos</option>';
  bitacoraRefs.categorizeType.add(new Option("Sin categoría", "__sin_categoria"));
  bitacoraCategoriesCache.forEach((category) => {
    bitacoraRefs.categorizeType.add(new Option(category.nombre, category.id));
  });
  bitacoraRefs.categorizeType.value = selectedValue === "__sin_categoria" || bitacoraCategoriesCache.some((category) => category.id === selectedValue)
    ? selectedValue
    : "";
}

function renderBitacoraCategories() {
  if (!bitacoraRefs.categoryGrid || bitacoraCategoriesCache.length === 0) {
    return;
  }

  bitacoraRefs.categoryGrid.innerHTML = bitacoraCategoriesCache.map((category) => `
    <button type="button" data-category-id="${category.id}">${escapeHtml(category.nombre)}</button>
  `).join("");

  bitacoraRefs.categoryGrid.querySelectorAll("button").forEach((button) => {
    button.addEventListener("click", () => {
      bitacoraRefs.categoryGrid.querySelectorAll("button").forEach((item) => item.classList.remove("active"));
      button.classList.add("active");
      if (bitacoraRefs.categorySelectionLabel) {
        bitacoraRefs.categorySelectionLabel.innerHTML = `Categoría seleccionada:<br><strong>${escapeHtml(button.textContent.trim())}</strong>`;
      }
      if (bitacoraRefs.saveMessage) {
        bitacoraRefs.saveMessage.textContent = "";
      }
    });
  });
}

async function loadBitacoraCatalogs() {
  const session = getSession();

  if (!session?.accessToken) {
    return;
  }

  const [types, categories] = await Promise.all([
    supabaseRequest("/rest/v1/bitacora_tipos_evento?select=codigo,nombre,orden&activo=eq.true&order=orden.asc", {
      headers: { Authorization: `Bearer ${session.accessToken}` }
    }),
    supabaseRequest("/rest/v1/bitacora_categorias?select=id,codigo,nombre,orden&activo=eq.true&order=orden.asc", {
      headers: { Authorization: `Bearer ${session.accessToken}` }
    })
  ]);

  bitacoraTypesCache = types || [];
  bitacoraCategoriesCache = categories || [];
  renderBitacoraTypeFilter();
  renderBitacoraCategories();
}

async function loadBitacoraEvents() {
  const session = getSession();
  const selectedDate = bitacoraRefs.categorizeDate?.value || bitacoraRefs.date?.value || getTodayValue();

  if (!session?.accessToken || !selectedDate) {
    bitacoraEventsCache = [];
    return;
  }

  const query = new URLSearchParams({
    select: "*",
    fecha: `eq.${selectedDate}`,
    order: "hora_inicio.desc"
  });

  const loadFromBaseTable = async () => {
    const fallbackQuery = new URLSearchParams({
      select: "id,fecha,hora_inicio,hora_fin,nave_texto,tipo_evento,descripcion,categoria_id,estado,created_by,created_at",
      fecha: `eq.${selectedDate}`,
      order: "hora_inicio.desc"
    });
    const rawEvents = await supabaseRequest(`/rest/v1/bitacora_eventos?${fallbackQuery}`, {
      headers: { Authorization: `Bearer ${session.accessToken}` }
    }) || [];
    return rawEvents.map(normalizeBitacoraRawEvent);
  };

  try {
    const viewEvents = await supabaseRequest(`/rest/v1/v_bitacora_eventos?${query}`, {
      headers: { Authorization: `Bearer ${session.accessToken}` }
    }) || [];
    bitacoraEventsCache = viewEvents.map(normalizeBitacoraRawEvent);

    if (bitacoraEventsCache.length === 0) {
      bitacoraEventsCache = await loadFromBaseTable();
    }
  } catch (error) {
    console.warn("No se pudo leer v_bitacora_eventos; usando tabla base.", error);
    bitacoraEventsCache = await loadFromBaseTable();
  }
}

function updateBitacoraHeader() {
  const dateValue = bitacoraRefs.date?.value || getTodayValue();
  const shift = getBitacoraShiftLabel(bitacoraRefs.startTime?.value || getCurrentTimeValue());

  if (bitacoraRefs.todayLabel) {
    bitacoraRefs.todayLabel.textContent = formatDisplayDate(dateValue);
  }
  if (bitacoraRefs.shiftLabel) {
    bitacoraRefs.shiftLabel.textContent = `Turno: ${shift}`;
  }
}

function renderBitacoraTimeline() {
  if (!bitacoraRefs.timeline) {
    return;
  }

  const todayEvents = getBitacoraEventsForSelectedVessel()
    .sort(compareBitacoraNewestFirst);

  if (bitacoraRefs.timelineCount) {
    bitacoraRefs.timelineCount.textContent = String(todayEvents.length);
  }

  if (todayEvents.length === 0) {
    bitacoraRefs.timeline.innerHTML = `
      <article class="empty-consult-card bitacora-empty-card">
        <i data-lucide="calendar-clock"></i>
        <h3>Sin eventos para esta nave</h3>
        <p>Los eventos registrados aparecerán del más reciente al más antiguo.</p>
      </article>
    `;
    renderIcons();
    return;
  }

  bitacoraRefs.timeline.innerHTML = todayEvents.map((event, index) => {
    const typeLabel = getBitacoraReportTypeLabel(event);
    const typeClass = getBitacoraReportTypeTone(typeLabel);
    const durationMinutes = getBitacoraDurationMinutes(event.hora_inicio, event.hora_fin);
    const durationLabel = durationMinutes === null ? "--" : `${durationMinutes} min`;
    const startLabel = formatTimeLabel(event.hora_inicio);
    const endLabel = formatTimeLabel(event.hora_fin || event.hora_inicio);
    const vesselLabel = event.nave_nombre || event.nave_texto || "Sin nave";
    return `
      <article class="timeline-event ${escapeHtml(typeClass)}" style="--timeline-index: ${index};">
        <div class="timeline-event-marker" aria-hidden="true"></div>
        <div class="timeline-event-card">
          <div class="timeline-event-time"><i data-lucide="clock-3"></i><strong>${escapeHtml(startLabel)} - ${escapeHtml(endLabel)}</strong></div>
          <div class="timeline-event-vessel"><i data-lucide="ship"></i><span>${escapeHtml(vesselLabel)}</span></div>
          <div class="timeline-event-description">${escapeHtml(event.descripcion || "-")}</div>
          <div class="timeline-event-duration"><i data-lucide="clock-3"></i><span>${escapeHtml(durationLabel)}</span></div>
          <div class="timeline-event-type">${escapeHtml(typeLabel)}</div>
        </div>
      </article>
    `;
  }).join("");

  renderIcons();
}

function getBitacoraReportEvents() {
  const shiftValue = bitacoraRefs.reportShift?.value || "";
  return [...bitacoraEventsCache]
    .filter((event) => !shiftValue || getBitacoraShiftLabel(event.hora_inicio) === shiftValue)
    .sort(compareBitacoraNewestFirst);
}

function formatBitacoraDurationSummary(minutes) {
  const safeMinutes = Math.max(0, Number(minutes) || 0);
  return `${Math.floor(safeMinutes / 60)} h ${safeMinutes % 60} min`;
}

function getBitacoraReportTypeLabel(event) {
  const rawLabel = event.categoria_nombre || event.tipo_evento_nombre || event.tipo_evento || "";
  const label = rawLabel.trim();

  if (!label || /sin[_\s-]*tipo/i.test(label)) {
    return "Otros / Sin tipo";
  }

  return label;
}

function getBitacoraReportTypeTone(label) {
  const normalized = normalize(label).replace(/_/g, " ");

  if (/transfer|carga diesel|recarga/.test(normalized)) return "transfer";
  if (/diesel|combustible/.test(normalized)) return "diesel";
  if (/maniobra|remolc|recorrido|patrull|zarpe/.test(normalized)) return "maneuver";
  if (/personal|pasaj|transporte/.test(normalized)) return "people";
  if (/incidente|falla|mantenimiento|observ/.test(normalized)) return "incident";
  return "other";
}

function getBitacoraReportTypeOrder(label) {
  const tone = getBitacoraReportTypeTone(label);
  const order = {
    transfer: 1,
    diesel: 2,
    maneuver: 3,
    people: 4,
    incident: 5,
    other: 6
  };

  return order[tone] || 99;
}

function buildBitacoraTypeSummary(rows) {
  const summary = rows.reduce((map, event) => {
    const label = getBitacoraReportTypeLabel(event);
    const duration = getBitacoraDurationMinutes(event.hora_inicio, event.hora_fin) || 0;

    if (!map.has(label)) {
      map.set(label, {
        label,
        tone: getBitacoraReportTypeTone(label),
        count: 0,
        minutes: 0
      });
    }

    const item = map.get(label);
    item.count += 1;
    item.minutes += duration;
    return map;
  }, new Map());

  if (!summary.has("Otros / Sin tipo")) {
    summary.set("Otros / Sin tipo", {
      label: "Otros / Sin tipo",
      tone: "other",
      count: 0,
      minutes: 0
    });
  }

  return [...summary.values()].sort((a, b) => {
    const orderDiff = getBitacoraReportTypeOrder(a.label) - getBitacoraReportTypeOrder(b.label);
    return orderDiff || a.label.localeCompare(b.label, "es");
  });
}

function renderBitacoraReport() {
  if (!bitacoraRefs.reportGroups) {
    return;
  }

  const events = getBitacoraReportEvents();
  const groups = events.reduce((map, event) => {
    const vessel = event.nave_nombre || event.nave_texto || "Sin nave";
    if (!map.has(vessel)) map.set(vessel, []);
    map.get(vessel).push(event);
    return map;
  }, new Map());

  bitacoraRefs.reportGroups.innerHTML = groups.size ? [...groups.entries()].map(([vessel, rows], index) => {
    const totalMinutes = rows.reduce((sum, event) => sum + (getBitacoraDurationMinutes(event.hora_inicio, event.hora_fin) || 0), 0);
    const transferCount = rows.filter((event) => /transfer|diesel|agua|lubric/i.test(`${event.categoria_nombre} ${event.tipo_evento_nombre}`)).length;
    const incidentCount = rows.filter((event) => /incidente|falla|observ/i.test(`${event.categoria_nombre} ${event.tipo_evento_nombre} ${event.descripcion}`)).length;
    const typeSummary = buildBitacoraTypeSummary(rows);
    return `
      <details class="report-vessel-group" ${index === 0 ? "open" : ""}>
        <summary>
          <i data-lucide="ship"></i>
          <strong>${escapeHtml(vessel)}</strong>
          <span>Eventos<br><b>${rows.length}</b></span>
          <span>Transferencias<br><b>${transferCount}</b></span>
          <span>Incidentes<br><b>${incidentCount}</b></span>
          <span>Duración total<br><b>${formatBitacoraDurationSummary(totalMinutes)}</b></span>
        </summary>
        <div class="report-vessel-body">
          <aside class="report-type-summary" aria-label="Resumen por tipo de ${escapeHtml(vessel)}">
            <h4>Resumen por tipo</h4>
            <ul>
              ${typeSummary.map((item) => `
                <li class="report-type-row is-${escapeHtml(item.tone)}">
                  <span><b></b>${escapeHtml(item.label)}${item.count ? ` <small>${item.count}</small>` : ""}</span>
                  <strong>${formatBitacoraDurationSummary(item.minutes)}</strong>
                </li>
              `).join("")}
            </ul>
            <div class="report-type-total"><span>Total</span><strong>${formatBitacoraDurationSummary(totalMinutes)}</strong></div>
          </aside>
          <div class="report-vessel-table-wrap">
            <table>
              <thead><tr><th>Hora inicio</th><th>Hora fin</th><th>Descripción del evento</th><th>Tipo</th><th>Duración</th><th>Registrado por</th></tr></thead>
              <tbody>
                ${rows.map((event) => {
                  const durationMinutes = getBitacoraDurationMinutes(event.hora_inicio, event.hora_fin);
                  const typeLabel = getBitacoraReportTypeLabel(event);
                  const typeTone = getBitacoraReportTypeTone(typeLabel);
                  return `<tr><td>${escapeHtml(formatTimeLabel(event.hora_inicio))}</td><td>${escapeHtml(formatTimeLabel(event.hora_fin))}</td><td>${escapeHtml(event.descripcion)}</td><td><em class="is-${escapeHtml(typeTone)}">${escapeHtml(typeLabel)}</em></td><td>${durationMinutes === null ? "--" : `${durationMinutes} min`}</td><td>${escapeHtml(event.created_by_nombre || event.registrado_por || "Martín Checco")}</td></tr>`;
                }).join("")}
              </tbody>
            </table>
          </div>
        </div>
      </details>
    `;
  }).join("") : "";

  renderIcons();
}

function getFilteredBitacoraEvents() {
  const vesselValue = bitacoraRefs.categorizeVessel?.value || "";
  const typeValue = bitacoraRefs.categorizeType?.value || "";

  return bitacoraEventsCache.filter((event) => {
    const vessel = event.nave_nombre || event.nave_texto || "";
    const matchesVessel = !vesselValue || normalizeDieselName(vessel) === normalizeDieselName(vesselValue);
    const matchesType = !typeValue
      || (typeValue === "__sin_categoria" && !event.categoria_id)
      || event.categoria_id === typeValue;
    const matchesStatus = bitacoraStatusFilter === "all"
      || (bitacoraStatusFilter === "pending" && isBitacoraPending(event))
      || (bitacoraStatusFilter === "classified" && isBitacoraClassified(event));
    return matchesVessel && matchesType && matchesStatus;
  });
}

function renderBitacoraMetrics(events = bitacoraEventsCache) {
  const pending = events.filter(isBitacoraPending).length;
  const classified = events.filter(isBitacoraClassified).length;

  if (bitacoraRefs.pendingMetric) bitacoraRefs.pendingMetric.textContent = String(pending);
  if (bitacoraRefs.classifiedMetric) bitacoraRefs.classifiedMetric.textContent = String(classified);
  if (bitacoraRefs.todayMetric) bitacoraRefs.todayMetric.textContent = String(events.length);
  bitacoraRefs.metricFilters?.forEach((button) => {
    button.classList.toggle("active", button.dataset.statusFilter === bitacoraStatusFilter);
  });
}

function renderBitacoraCategorizeTable() {
  if (!bitacoraRefs.eventsBody) {
    return;
  }

  const events = getFilteredBitacoraEvents();
  renderBitacoraMetrics(bitacoraEventsCache);

  if (bitacoraRefs.visibleCount) {
    bitacoraRefs.visibleCount.textContent = String(events.length);
  }
  if (bitacoraRefs.tableSummary) {
    bitacoraRefs.tableSummary.textContent = `Mostrando ${events.length} de ${bitacoraEventsCache.length} eventos`;
  }
  const title = document.querySelector(".categorize-table-card h3");
  if (title) {
    const labels = {
      all: "Eventos pendientes de revisión",
      pending: "Eventos pendientes de clasificar",
      classified: "Eventos clasificados"
    };
    title.firstChild.textContent = `${labels[bitacoraStatusFilter] || labels.all} `;
  }

  if (events.length === 0) {
    bitacoraRefs.eventsBody.innerHTML = `
      <tr>
        <td colspan="6">
          <article class="empty-consult-card bitacora-empty-card">
            <i data-lucide="inbox"></i>
            <h3>Sin eventos para clasificar</h3>
            <p>No hay registros reales con los filtros actuales.</p>
          </article>
        </td>
      </tr>
    `;
    updateBitacoraSelectionCount();
    renderIcons();
    return;
  }

  bitacoraRefs.eventsBody.innerHTML = events.map((event) => {
    const draft = bitacoraClassificationDraft.get(event.id);
    const categoryText = draft?.name || event.categoria_nombre || "Sin categoría";
    const categoryClass = draft || event.categoria_nombre ? "category" : "uncategorized";
    const categoryStyle = draft ? ` style="color: ${escapeHtml(draft.color)}; background: ${escapeHtml(draft.bg)};"` : "";
    const stateClass = draft ? "validated" : getBitacoraStateClass(event.estado);
    const stateLabel = draft ? "Validado" : getBitacoraStateLabel(event.estado);
    const durationMinutes = getBitacoraDurationMinutes(event.hora_inicio, event.hora_fin);
    return `
      <tr data-event-id="${event.id}" class="${draft ? "is-categorized" : ""}">
        <td class="event-time-cell">
          <strong>Inicio: ${escapeHtml(formatTimeLabel(event.hora_inicio))}</strong>
          <small>Fin: ${escapeHtml(formatTimeLabel(event.hora_fin))}</small>
          <em>Duración: ${durationMinutes === null ? "--" : `${durationMinutes} min`}</em>
        </td>
        <td><span class="event-pill ${categoryClass}"${categoryStyle}>${escapeHtml(categoryText)}</span></td>
        <td><strong>${escapeHtml(event.descripcion)}</strong><small>${escapeHtml(event.tipo_evento_nombre || "Sin tipo")}</small></td>
        <td>${escapeHtml(event.nave_nombre || event.nave_texto)}</td>
        <td><em class="state-pill ${stateClass}">${escapeHtml(stateLabel)}</em></td>
        <td><label class="review-check"><input type="checkbox" class="categorize-event-check" value="${event.id}" ${draft ? "checked" : ""}><span></span></label></td>
      </tr>
    `;
  }).join("");

  bitacoraRefs.eventsBody.querySelectorAll(".categorize-event-check").forEach((input) => {
    input.addEventListener("change", () => {
      if (input.checked) {
        const category = getBitacoraCategoryButtonMeta(getSelectedBitacoraCategory());
        if (!category) {
          input.checked = false;
          if (bitacoraRefs.saveMessage) {
            bitacoraRefs.saveMessage.textContent = "Selecciona una categoría antes de marcar un evento.";
          }
          updateBitacoraSelectionCount();
          return;
        }
        bitacoraClassificationDraft.set(input.value, category);
      } else {
        bitacoraClassificationDraft.delete(input.value);
      }
      updateBitacoraSelectionCount();
      if (bitacoraRefs.saveMessage) {
        bitacoraRefs.saveMessage.textContent = "";
      }
      renderBitacoraCategorizeTable();
    });
  });

  updateBitacoraSelectionCount();
  renderIcons();
}

async function refreshBitacora() {
  try {
    await loadBitacoraEvents();
  } catch (error) {
    if (error.authExpired) {
      showLogin();
      return;
    }
    console.warn("No se pudo cargar la bitacora.", error);
    bitacoraEventsCache = [];
  }

  const currentEventIds = new Set(bitacoraEventsCache.map((event) => event.id));
  bitacoraClassificationDraft.forEach((_, eventId) => {
    if (!currentEventIds.has(eventId)) {
      bitacoraClassificationDraft.delete(eventId);
    }
  });

  populateBitacoraFilterVessels(bitacoraEventsCache);
  syncBitacoraStartTimeWithLastEnd();
  renderBitacoraLastEvent();
  renderBitacoraTimeline();
  renderBitacoraCategorizeTable();
}

async function saveBitacoraEvent() {
  const session = getSession();

  if (!session?.accessToken) {
    alert("Vuelve a iniciar sesión para registrar eventos.");
    showLogin();
    return;
  }

  const payload = {
    fecha: bitacoraRefs.date?.value,
    hora_inicio: bitacoraRefs.startTime?.value,
    hora_fin: bitacoraRefs.endTime?.value || "",
    nave: bitacoraRefs.vessel?.value,
    tipo_evento: "sin_tipo",
    descripcion: bitacoraRefs.description?.value.trim(),
    detalle: {
      origen: "web",
      modulo: "bitacora_rapida",
      turno: getBitacoraShiftLabel(bitacoraRefs.startTime?.value)
    }
  };

  if (!payload.fecha || !payload.hora_inicio || !payload.nave || !payload.descripcion) {
    alert("Completa fecha, hora de inicio, nave y descripcion.");
    return;
  }

  const nextStartTime = payload.hora_fin || payload.hora_inicio;
  const originalHtml = bitacoraRefs.submit.innerHTML;
  bitacoraRefs.submit.disabled = true;
  bitacoraRefs.submit.textContent = "Registrando...";

  try {
    await supabaseRequest("/rest/v1/rpc/registrar_bitacora_evento", {
      method: "POST",
      headers: { Authorization: `Bearer ${session.accessToken}` },
      body: JSON.stringify({ payload })
    });

    bitacoraRefs.description.value = "";
    bitacoraRefs.count.textContent = "0";
    bitacoraRefs.startTime.value = nextStartTime;
    bitacoraRefs.endTime.value = "";
    if (bitacoraRefs.categorizeDate) {
      bitacoraRefs.categorizeDate.value = payload.fecha;
    }
    updateBitacoraHeader();
    await refreshBitacora();
    showSuccessToast("Se guardó con éxito", "El evento de bitácora se ha guardado correctamente.");
  } catch (error) {
    if (error.authExpired) {
      alert(error.message);
      showLogin();
      return;
    }
    alert(error.message || "No se pudo registrar el evento.");
  } finally {
    bitacoraRefs.submit.innerHTML = originalHtml;
    updateBitacoraSubmitState();
    renderIcons();
  }
}

async function saveBitacoraClassification() {
  const session = getSession();
  const classificationGroups = getBitacoraClassificationGroups();
  const eventCount = [...classificationGroups.values()].reduce((total, ids) => total + ids.length, 0);

  if (!session?.accessToken) {
    alert("Vuelve a iniciar sesión para clasificar eventos.");
    showLogin();
    return;
  }

  if (eventCount === 0) {
    bitacoraRefs.saveMessage.textContent = "Marca al menos un evento pendiente de revisión.";
    return;
  }

  const originalHtml = bitacoraRefs.saveCategorized.innerHTML;
  bitacoraRefs.saveCategorized.disabled = true;
  bitacoraRefs.saveCategorized.textContent = "Guardando...";

  try {
    const updates = await Promise.all([...classificationGroups.entries()].map(([categoryId, eventIds]) => (
      supabaseRequest("/rest/v1/rpc/clasificar_bitacora_eventos", {
        method: "POST",
        headers: { Authorization: `Bearer ${session.accessToken}` },
        body: JSON.stringify({
          payload: {
            categoria_id: categoryId,
            eventos: eventIds
          }
        })
      })
    )));
    const updatedCount = updates.reduce((total, updated, index) => total + (Number(updated) || [...classificationGroups.values()][index].length), 0);

    bitacoraClassificationDraft.clear();
    bitacoraRefs.saveMessage.textContent = `${updatedCount || eventCount} evento(s) clasificado(s) guardado(s).`;
    await refreshBitacora();
  } catch (error) {
    if (error.authExpired) {
      bitacoraRefs.saveMessage.textContent = error.message;
      showLogin();
      return;
    }
    bitacoraRefs.saveMessage.textContent = error.message || "No se pudo guardar la clasificación.";
  } finally {
    bitacoraRefs.saveCategorized.disabled = false;
    bitacoraRefs.saveCategorized.innerHTML = originalHtml;
    renderIcons();
  }
}

function bootBitacora() {
  populateBitacoraVessels();

  if (bitacoraRefs.date && !bitacoraRefs.date.value) {
    bitacoraRefs.date.value = getTodayValue();
  }
  if (bitacoraRefs.categorizeDate && !bitacoraRefs.categorizeDate.value) {
    bitacoraRefs.categorizeDate.value = bitacoraRefs.date?.value || getTodayValue();
  }
  if (bitacoraRefs.reportDate && !bitacoraRefs.reportDate.value) {
    bitacoraRefs.reportDate.value = bitacoraRefs.date?.value || getTodayValue();
  }
  if (bitacoraRefs.startTime && !bitacoraRefs.startTime.value) {
    bitacoraRefs.startTime.value = getCurrentTimeValue();
  }

  updateBitacoraHeader();
  updateBitacoraSubmitState();

  bitacoraRefs.description?.addEventListener("input", (event) => {
    if (bitacoraRefs.count) {
      bitacoraRefs.count.textContent = String(event.target.value.length);
    }
    updateBitacoraSubmitState();
  });

  bitacoraRefs.startTime?.addEventListener("change", () => {
    updateBitacoraHeader();
    updateBitacoraSubmitState();
  });
  bitacoraRefs.endTime?.addEventListener("change", updateBitacoraSubmitState);
  bitacoraRefs.date?.addEventListener("change", () => {
    if (bitacoraRefs.categorizeDate) {
      bitacoraRefs.categorizeDate.value = bitacoraRefs.date.value;
    }
    updateBitacoraHeader();
    updateBitacoraSubmitState();
    refreshBitacora();
  });
  bindDateStepper(bitacoraRefs.date, bitacoraRefs.prevDay, bitacoraRefs.nextDay);
  bitacoraRefs.vessel?.addEventListener("change", () => {
    syncBitacoraStartTimeWithLastEnd();
    renderBitacoraLastEvent();
    renderBitacoraTimeline();
    updateBitacoraSubmitState();
  });
  bitacoraRefs.submit?.addEventListener("click", saveBitacoraEvent);
  bitacoraRefs.viewAll?.addEventListener("click", () => {
    setPage("bitacora-categorizar");
    refreshBitacora();
  });
  bitacoraRefs.categorizeButton?.addEventListener("click", () => {
    setPage("bitacora-categorizar");
    refreshBitacora();
  });
  bitacoraRefs.reportButton?.addEventListener("click", () => {
    if (bitacoraRefs.reportDate) {
      bitacoraRefs.reportDate.value = bitacoraRefs.date?.value || getTodayValue();
    }
    if (bitacoraRefs.categorizeDate) {
      bitacoraRefs.categorizeDate.value = bitacoraRefs.reportDate?.value || bitacoraRefs.date?.value || getTodayValue();
    }
    setPage("bitacora-reporte");
    refreshBitacora().then(renderBitacoraReport);
  });
  bitacoraRefs.reportDate?.addEventListener("change", () => {
    if (bitacoraRefs.categorizeDate) bitacoraRefs.categorizeDate.value = bitacoraRefs.reportDate.value;
    refreshBitacora().then(renderBitacoraReport);
  });
  bindDateStepper(bitacoraRefs.reportDate, bitacoraRefs.reportPrevDay, bitacoraRefs.reportNextDay);
  bitacoraRefs.reportShift?.addEventListener("change", renderBitacoraReport);
  bitacoraRefs.reportBack?.addEventListener("click", () => setPage("bitacora"));
  bitacoraRefs.backButton?.addEventListener("click", () => setPage("bitacora"));
  bitacoraRefs.saveCategorized?.addEventListener("click", saveBitacoraClassification);

  [bitacoraRefs.categorizeVessel, bitacoraRefs.categorizeType].forEach((control) => {
    control?.addEventListener("change", renderBitacoraCategorizeTable);
  });

  bitacoraRefs.metricFilters?.forEach((button) => {
    button.addEventListener("click", () => {
      bitacoraStatusFilter = button.dataset.statusFilter || "all";
      renderBitacoraCategorizeTable();
    });
  });

  bitacoraRefs.categorizeDate?.addEventListener("change", refreshBitacora);
  bindDateStepper(bitacoraRefs.categorizeDate, bitacoraRefs.categorizePrevDay, bitacoraRefs.categorizeNextDay);
  bitacoraRefs.clearFilters?.addEventListener("click", () => {
    if (bitacoraRefs.categorizeDate) {
      bitacoraRefs.categorizeDate.value = bitacoraRefs.date?.value || getTodayValue();
    }
    if (bitacoraRefs.categorizeVessel) bitacoraRefs.categorizeVessel.value = "";
    if (bitacoraRefs.categorizeType) bitacoraRefs.categorizeType.value = "";
    refreshBitacora();
  });

  loadBitacoraCatalogs()
    .catch((error) => console.warn("No se pudieron cargar catalogos de bitacora.", error))
    .finally(refreshBitacora);
}

function getSelectedNave() {
  return navesFleet.find((ship) => ship.id === selectedNaveId) || navesFleet[0];
}

function setNaveMeter(level, text, value) {
  if (level) level.value = value;
  if (text) text.textContent = `${value}%`;
}

function renderNavesFleet() {
  if (!navesRefs.fleet) {
    return;
  }

  navesRefs.fleet.innerHTML = navesFleet.map((ship) => `
    <button class="fleet-card ${ship.image ? "has-image" : ""} ${ship.id === selectedNaveId ? "active" : ""}" type="button" data-ship-id="${escapeHtml(ship.id)}" style="--ship-color: ${escapeHtml(ship.color)};">
      ${ship.image ? `<img src="${escapeHtml(ship.image)}" alt="${escapeHtml(ship.name)}">` : '<span class="mini-ship" aria-hidden="true"></span>'}
      <strong>${escapeHtml(ship.name)}</strong>
      <span>${escapeHtml(ship.type)}</span>
    </button>
  `).join("");

  navesRefs.fleet.querySelectorAll(".fleet-card").forEach((button) => {
    button.addEventListener("click", () => {
      selectedNaveId = button.dataset.shipId || selectedNaveId;
      updateNavesDetails();
      renderNavesFleet();
      updateNavesModel();
    });
  });
}

function updateNavesDetails() {
  const ship = getSelectedNave();
  if (!ship) {
    return;
  }

  if (navesRefs.name) navesRefs.name.textContent = ship.name;
  if (navesRefs.type) navesRefs.type.textContent = ship.type;
  if (navesRefs.status) navesRefs.status.textContent = ship.status;
  if (navesRefs.code) navesRefs.code.textContent = ship.code;
  if (navesRefs.location) navesRefs.location.textContent = ship.location;
  if (navesRefs.activity) navesRefs.activity.textContent = ship.activity;
  if (navesRefs.operational) navesRefs.operational.textContent = ship.status;
  if (navesRefs.incident) navesRefs.incident.textContent = ship.incidents;
  if (navesRefs.locationText) navesRefs.locationText.textContent = ship.location;
  if (navesRefs.coordinates) navesRefs.coordinates.textContent = ship.coordinates;
  if (navesRefs.crew) navesRefs.crew.textContent = `${ship.crew} miembros a bordo`;
  setNaveMeter(navesRefs.dieselLevel, navesRefs.dieselText, ship.diesel);
  setNaveMeter(navesRefs.waterLevel, navesRefs.waterText, ship.water);
  setNaveMeter(navesRefs.oilLevel, navesRefs.oilText, ship.oil);
}

function createNavesHullGeometry() {
  const shape = new THREE.Shape();
  shape.moveTo(-3.1, -0.55);
  shape.lineTo(2.55, -0.55);
  shape.quadraticCurveTo(3.15, -0.35, 3.42, 0);
  shape.quadraticCurveTo(2.95, 0.48, 2.05, 0.64);
  shape.lineTo(-2.65, 0.64);
  shape.quadraticCurveTo(-3.2, 0.36, -3.1, -0.55);
  const geometry = new THREE.ExtrudeGeometry(shape, {
    depth: 1.35,
    bevelEnabled: true,
    bevelThickness: 0.12,
    bevelSize: 0.12,
    bevelSegments: 4
  });
  geometry.center();
  geometry.rotateX(-Math.PI / 2);
  return geometry;
}

function createNavesBoat(ship) {
  const group = new THREE.Group();
  group.name = "naves-boat";

  const hullMaterial = new THREE.MeshStandardMaterial({ color: ship.color, roughness: 0.38, metalness: 0.12 });
  hullMaterial.name = "hullMaterial";
  const darkMaterial = new THREE.MeshStandardMaterial({ color: ship.accent, roughness: 0.5, metalness: 0.08 });
  const whiteMaterial = new THREE.MeshStandardMaterial({ color: 0xf8fbff, roughness: 0.34, metalness: 0.05 });
  const glassMaterial = new THREE.MeshStandardMaterial({ color: 0x0e3444, roughness: 0.16, metalness: 0.2 });
  const railMaterial = new THREE.MeshStandardMaterial({ color: 0xe8eef5, roughness: 0.24, metalness: 0.28 });
  const tireMaterial = new THREE.MeshStandardMaterial({ color: 0x111827, roughness: 0.68, metalness: 0.04 });
  const redMaterial = new THREE.MeshStandardMaterial({ color: 0xce2d1d, roughness: 0.4, metalness: 0.12 });
  const orangeMaterial = new THREE.MeshStandardMaterial({ color: 0xf97316, roughness: 0.42, metalness: 0.1 });
  const cargoMaterial = new THREE.MeshStandardMaterial({ color: 0x16b6b9, roughness: 0.45, metalness: 0.08 });
  const blueRailMaterial = new THREE.MeshStandardMaterial({ color: 0x083b66, roughness: 0.36, metalness: 0.24 });

  const hull = new THREE.Mesh(createNavesHullGeometry(), hullMaterial);
  hull.position.y = -0.18;
  hull.castShadow = true;
  hull.receiveShadow = true;
  group.add(hull);

  const deck = new THREE.Mesh(new THREE.BoxGeometry(4.5, 0.22, 1.12), whiteMaterial);
  deck.position.set(-0.28, 0.58, 0);
  deck.castShadow = true;
  group.add(deck);

  const isWorkboat = ship.variant === "workboat";
  const cabin = new THREE.Mesh(new THREE.BoxGeometry(isWorkboat ? 2.2 : 1.6, 0.86, 0.86), whiteMaterial);
  cabin.position.set(isWorkboat ? -1.02 : -0.78, 1.14, 0);
  cabin.castShadow = true;
  group.add(cabin);

  const bridge = new THREE.Mesh(new THREE.BoxGeometry(isWorkboat ? 1.35 : 1.1, 0.56, 0.76), whiteMaterial);
  bridge.position.set(isWorkboat ? -1.1 : -0.82, 1.84, 0);
  bridge.castShadow = true;
  group.add(bridge);

  [-0.35, 0, 0.35].forEach((z) => {
    const windowMesh = new THREE.Mesh(new THREE.BoxGeometry(0.06, 0.28, 0.2), glassMaterial);
    windowMesh.position.set(-0.22, 1.88, z);
    group.add(windowMesh);
  });

  const mast = new THREE.Mesh(new THREE.CylinderGeometry(0.025, 0.035, isWorkboat ? 2.45 : 2.1, 10), railMaterial);
  mast.position.set(isWorkboat ? -1.35 : -1.15, isWorkboat ? 2.86 : 2.7, 0);
  mast.castShadow = true;
  group.add(mast);

  const antenna = new THREE.Mesh(new THREE.CylinderGeometry(0.012, 0.012, 1.15, 8), railMaterial);
  antenna.position.set(-1.15, 4.0, 0);
  group.add(antenna);

  const boom = new THREE.Mesh(new THREE.BoxGeometry(0.9, 0.035, 0.035), railMaterial);
  boom.position.set(-1.15, 3.25, 0);
  boom.rotation.y = Math.PI / 2;
  group.add(boom);

  const fenderPositions = isWorkboat ? [-2.65, -1.9, -1.15, -0.4, 0.35, 1.05, 1.75, 2.35, 2.9] : [-2.55, -1.8, -1.05, -0.3, 0.45, 1.2, 1.95, 2.62];
  fenderPositions.forEach((x) => {
    [-0.76, 0.76].forEach((z) => {
      const tire = new THREE.Mesh(new THREE.TorusGeometry(0.18, 0.055, 10, 20), tireMaterial);
      tire.position.set(x, 0.16, z);
      tire.rotation.y = Math.PI / 2;
      tire.castShadow = true;
      group.add(tire);
    });
  });

  const railFront = new THREE.Mesh(new THREE.BoxGeometry(4.4, 0.035, 0.035), isWorkboat ? blueRailMaterial : railMaterial);
  railFront.position.set(-0.32, 0.93, -0.62);
  group.add(railFront);
  const railBack = railFront.clone();
  railBack.position.z = 0.62;
  group.add(railBack);

  if (isWorkboat) {
    const foreRail = new THREE.Mesh(new THREE.BoxGeometry(1.45, 0.035, 0.035), blueRailMaterial);
    foreRail.position.set(-2.52, 1.0, 0);
    foreRail.rotation.y = Math.PI / 2;
    group.add(foreRail);

    const engineBase = new THREE.Mesh(new THREE.BoxGeometry(0.82, 0.36, 0.72), redMaterial);
    engineBase.position.set(0.95, 0.88, 0);
    engineBase.castShadow = true;
    group.add(engineBase);

    [-0.26, 0.26].forEach((z) => {
      const tank = new THREE.Mesh(new THREE.CylinderGeometry(0.13, 0.13, 0.85, 18), orangeMaterial);
      tank.position.set(0.88, 1.18, z);
      tank.rotation.z = Math.PI / 2;
      tank.castShadow = true;
      group.add(tank);
    });

    const hose = new THREE.Mesh(new THREE.TorusGeometry(0.24, 0.035, 12, 24), new THREE.MeshStandardMaterial({ color: 0x083b66, roughness: 0.5, metalness: 0.12 }));
    hose.position.set(1.62, 1.02, 0.5);
    hose.rotation.y = Math.PI / 2;
    group.add(hose);

    const cargo = new THREE.Mesh(new THREE.BoxGeometry(0.95, 0.46, 0.75), cargoMaterial);
    cargo.position.set(2.28, 0.88, 0);
    cargo.castShadow = true;
    group.add(cargo);

    const flagPole = new THREE.Mesh(new THREE.CylinderGeometry(0.012, 0.012, 0.8, 8), railMaterial);
    flagPole.position.set(-1.05, 3.28, 0.22);
    group.add(flagPole);

    const flagGroup = new THREE.Group();
    const redFlag = new THREE.Mesh(new THREE.PlaneGeometry(0.16, 0.22), new THREE.MeshBasicMaterial({ color: 0xd31722, side: THREE.DoubleSide }));
    const whiteFlag = new THREE.Mesh(new THREE.PlaneGeometry(0.16, 0.22), new THREE.MeshBasicMaterial({ color: 0xffffff, side: THREE.DoubleSide }));
    const redFlagTwo = redFlag.clone();
    redFlag.position.x = -0.16;
    redFlagTwo.position.x = 0.16;
    flagGroup.add(redFlag, whiteFlag, redFlagTwo);
    flagGroup.position.set(-0.84, 3.43, 0.22);
    flagGroup.rotation.y = Math.PI / 2;
    group.add(flagGroup);
  }

  const base = new THREE.Mesh(new THREE.CylinderGeometry(3.35, 3.35, 0.035, 96), new THREE.MeshBasicMaterial({ color: 0xffffff, transparent: true, opacity: 0.42 }));
  base.position.y = -0.82;
  group.add(base);

  group.userData.hullMaterial = hullMaterial;
  group.userData.darkMaterial = darkMaterial;
  group.userData.variant = ship.variant || "standard";
  return group;
}

function updateNavesModel() {
  if (!navesSceneState?.scene) {
    return;
  }
  const ship = getSelectedNave();
  const previousRotation = navesSceneState.boat?.rotation.y || -0.35;
  if (navesSceneState.boat) {
    navesSceneState.scene.remove(navesSceneState.boat);
  }
  const boat = createNavesBoat(ship);
  boat.rotation.y = previousRotation;
  navesSceneState.boat = boat;
  navesSceneState.scene.add(boat);
}

function resizeNavesRenderer() {
  if (!navesSceneState) {
    return;
  }
  const { canvas, renderer, camera } = navesSceneState;
  const width = Math.max(320, canvas.clientWidth || canvas.parentElement?.clientWidth || 640);
  const height = Math.max(360, canvas.clientHeight || 510);
  renderer.setSize(width, height, false);
  camera.aspect = width / height;
  camera.updateProjectionMatrix();
}

function initNavesScene() {
  if (!navesRefs.canvas || navesSceneState || !window.THREE) {
    return;
  }

  const canvas = navesRefs.canvas;
  const scene = new THREE.Scene();
  scene.fog = new THREE.Fog(0xf4f9ff, 8, 18);

  const renderer = new THREE.WebGLRenderer({ canvas, antialias: true, alpha: true, preserveDrawingBuffer: true });
  renderer.setPixelRatio(Math.min(window.devicePixelRatio || 1, 2));
  renderer.shadowMap.enabled = true;

  const camera = new THREE.PerspectiveCamera(38, 1, 0.1, 100);
  camera.position.set(5.4, 3.2, 6.2);
  camera.lookAt(0, 0.7, 0);

  const ambient = new THREE.HemisphereLight(0xffffff, 0xc7d7e6, 1.8);
  scene.add(ambient);
  const keyLight = new THREE.DirectionalLight(0xffffff, 2.4);
  keyLight.position.set(3.5, 6, 4);
  keyLight.castShadow = true;
  scene.add(keyLight);
  const rimLight = new THREE.DirectionalLight(0x9fd5ff, 1.1);
  rimLight.position.set(-5, 3, -2);
  scene.add(rimLight);

  const boat = createNavesBoat(getSelectedNave());
  boat.rotation.y = -0.35;
  scene.add(boat);

  const floor = new THREE.Mesh(
    new THREE.CircleGeometry(4.6, 96),
    new THREE.MeshBasicMaterial({ color: 0xcfe5fb, transparent: true, opacity: 0.34 })
  );
  floor.rotation.x = -Math.PI / 2;
  floor.position.y = -0.86;
  scene.add(floor);

  navesSceneState = {
    canvas,
    scene,
    renderer,
    camera,
    boat,
    dragging: false,
    lastX: 0,
    velocity: 0.006,
    frameId: null
  };

  canvas.addEventListener("pointerdown", (event) => {
    navesSceneState.dragging = true;
    navesSceneState.lastX = event.clientX;
    canvas.setPointerCapture?.(event.pointerId);
  });

  canvas.addEventListener("pointermove", (event) => {
    if (!navesSceneState.dragging) {
      return;
    }
    const delta = event.clientX - navesSceneState.lastX;
    navesSceneState.lastX = event.clientX;
    boat.rotation.y += delta * 0.01;
    navesSceneState.velocity = delta * 0.0008;
  });

  canvas.addEventListener("pointerup", () => {
    navesSceneState.dragging = false;
  });

  window.addEventListener("resize", resizeNavesRenderer);
  resizeNavesRenderer();

  const animate = () => {
    if (!navesSceneState.dragging) {
      boat.rotation.y += navesSceneState.velocity;
      navesSceneState.velocity *= 0.985;
      if (Math.abs(navesSceneState.velocity) < 0.002) {
        navesSceneState.velocity = 0.002;
      }
    }
    renderer.render(scene, camera);
    navesSceneState.frameId = requestAnimationFrame(animate);
  };
  animate();
}

function initNavesView() {
  updateNavesDetails();
  renderNavesFleet();
  initNavesScene();
  resizeNavesRenderer();
}

function boot() {
  const rememberedUser = localStorage.getItem(REMEMBER_KEY);
  const session = getSession();

  if (rememberedUser) {
    usernameInput.value = rememberedUser;
    rememberInput.checked = true;
  }

  if (session) {
    bootDiesel();
    bootBitacora();
    showDashboard(session);
    setSidebarCollapsed(sessionStorage.getItem("portoErp.sidebarCollapsed") === "true");
    return;
  }

  usernameInput.focus();
  bootDiesel();
  bootBitacora();
  resetPassengerInitialState();
  renderIcons();
}

boot();
