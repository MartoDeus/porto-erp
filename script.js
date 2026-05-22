const SESSION_KEY = "portoErp.session";
const REMEMBER_KEY = "portoErp.rememberedUser";
const DIESEL_KARDEX_KEY = "portoErp.dieselKardex";

const loginForm = document.querySelector("#loginForm");
const authPage = document.querySelector("#authPage");
const dashboardPage = document.querySelector("#dashboardPage");
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
const notificationButton = document.querySelector("#notificationButton");
const notificationPanel = document.querySelector("#notificationPanel");
const profileButton = document.querySelector("#profileButton");
const profileMenu = document.querySelector("#profileMenu");
const consultDieselButton = document.querySelector("#consultDieselButton");
const profileName = document.querySelector("#profileName");
const profileMenuName = document.querySelector("#profileMenuName");
const profileMenuRole = document.querySelector("#profileMenuRole");

const passengerRefs = {
  date: document.querySelector("#passengerDate"),
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
  statTotalPassengers: document.querySelector("#statTotalPassengers")
};

const dieselRefs = {
  date: document.querySelector("#dieselDate"),
  origin: document.querySelector("#dieselOriginSelect"),
  receive: document.querySelector("#dieselReceiveSelect"),
  registeredBy: document.querySelector("#dieselRegisteredBy"),
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
  consultRefresh: document.querySelector("#refreshDieselConsult")
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
  { item: 12, group: "NAVE RECORRIDO", tab: "Naves Recorrido", icon: "route", ship: "CHIPP II", initialStock: 233, type: "Desp.", dayCrew: "CARLOS LEYTON DIAZ", nightCrew: "VICTOR SAAVEDRA SOCOLA", received: 0, receivedFrom: "-", day: 51, night: 0, dispatched: 0, transferred: 0 },
  { item: 13, group: "NAVE RECORRIDO", tab: "Naves Recorrido", icon: "route", ship: "BUCKLEY EXPRESS", initialStock: 475, type: "Desp.", dayCrew: "MARIO PAIBA", nightCrew: "HERNAN CHULLI", received: 150, receivedFrom: "-", day: 67, night: 0, dispatched: 0, transferred: 0 },
  { item: 14, group: "NAVE RECORRIDO", tab: "Naves Recorrido", icon: "route", ship: "CABO BLANCO", initialStock: 720, type: "Desp.", dayCrew: "JORGE MORAN", nightCrew: "GUILLERMO LOPEZ", received: 0, receivedFrom: "-", day: 60, night: 0, dispatched: 0, transferred: 0 },
  { item: 15, group: "BARCAZA", tab: "Barcaza", icon: "ship", ship: "ELIZABETH", initialStock: 1983, type: "Barge", dayCrew: "LUIS ZAPATA BAYONA / MARTIN VASQUEZ MORALES", nightCrew: "LUIS ZAPATA BAYONA / MARTIN VASQUEZ MORALES", received: 0, receivedFrom: "-", day: 3, night: 18, dispatched: 0, transferred: 0 },
  { item: 16, group: "BARCAZA", tab: "Barcaza", icon: "ship", ship: "ORO", initialStock: 2228, type: "Barge", dayCrew: "ALFREDO CAVERO / FERNANDO SUAREZ", nightCrew: "RODOLFO CRUZ / FRANCISCO CHUNGA", received: 0, receivedFrom: "-", day: 36, night: 36, dispatched: 0, transferred: 0 },
  { item: 17, group: "BARCAZA", tab: "Barcaza", icon: "ship", ship: "ROGUE", initialStock: 1970, type: "Barge", dayCrew: "EDGAR FERNANDEZ SEMINARIO / JOSE VALVERDE ESPINOZA", nightCrew: "EDGAR FERNANDEZ SEMINARIO / JUAN MAYO LIZARBE", received: 0, receivedFrom: "-", day: 33, night: 38, dispatched: 0, transferred: 0 },
  { item: 18, group: "BARCAZA", tab: "Barcaza", icon: "ship", ship: "MR BOB", initialStock: 2086, type: "Barge", dayCrew: "CARLOS MORE / DIEGO NIZAMA MORE", nightCrew: "JAIME ROJAS / GERMAN CHUNGA", received: 0, receivedFrom: "-", day: 15, night: 40, dispatched: 0, transferred: 0 },
  { item: 19, group: "FLOTA TALARA", tab: "Flota Talara", icon: "ship-wheel", ship: "LJ KELLEY", initialStock: 678, type: "Field", dayCrew: "RAMON JACINTO TUME / PERCY NAVARRO MARTINEZ", nightCrew: "T.DIA", received: 0, receivedFrom: "-", day: 0, night: 0, dispatched: 0, transferred: 0 }
];

const dieselShips = dieselCatalog.map((unit) => unit.ship);

const dieselShifts = ["Diurno", "Nocturno"];
const dieselInitialStockByShip = {
  TALARA: 7006,
  PARINAS: 2800,
  SHEYLA: 1450,
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
let passengerEntries = [
  { id: crypto.randomUUID(), contractor: "PetroPeru", routine: "MT-LOBITOS", quantity: 4 },
  { id: crypto.randomUUID(), contractor: "Confipetrol", routine: "MT-LOBITOS", quantity: 2 },
  { id: crypto.randomUUID(), contractor: "IMI", routine: "MT-PROVIDENCIA", quantity: 2 },
  { id: crypto.randomUUID(), contractor: "IPCO", routine: "MT-PLAYA TORTUGA", quantity: 5 }
];
let dieselDispatches = [
  { id: crypto.randomUUID(), vessel: "PARIÑAS", quantity: 1000, voucher: "005" },
  { id: crypto.randomUUID(), vessel: "SHEILA R", quantity: 100, voucher: "006" },
  { id: crypto.randomUUID(), vessel: "BUCKLEY EXPRESS", quantity: 200, voucher: "007" },
  { id: crypto.randomUUID(), vessel: "LOBITOS EXPRESS (CARGA)", quantity: 2000, voucher: "008" }
];

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

function saveSession(user, remember) {
  const session = {
    id: user.id,
    name: user.name,
    username: user.username,
    role: user.role,
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

function showDashboard(session) {
  authPage.hidden = true;
  dashboardPage.hidden = false;
  setPage("dashboard");
  welcomeText.textContent = session.role;
  profileName.textContent = session.name;
  profileMenuName.textContent = session.name;
  profileMenuRole.textContent = session.role === "Administrador" ? "Administrador General" : session.role;
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

function renderIcons() {
  if (window.lucide) {
    window.lucide.createIcons({
      attrs: {
        "stroke-width": 1.9
      }
    });
  }
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
    item.classList.toggle("active", item.dataset.page === pageName);
  });

  if (topbarTitle) {
    const pageTitles = {
      dashboard: "Dashboard",
      passengers: "Pasajeros",
      diesel: "Registro de Diesel",
      consulta: "Consulta"
    };
    topbarTitle.textContent = pageTitles[pageName] || "Dashboard";
  }

  closeNotificationPanel();
  closeProfileMenu();

  renderIcons();
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
  passengerRefs.statTotalPassengers.textContent = String(143 + total);
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

function clearPassengerForm() {
  passengerEntries = [];
  passengerRefs.quantity.value = "";
  passengerRefs.contractor.value = "PetroPeru";
  passengerRefs.routine.value = "MT-LOBITOS";
  renderPassengerRows();
  updatePassengerSummary();
}

function toNumber(value) {
  const numeric = Number(String(value).replace(/[,+]/g, ""));
  return Number.isFinite(numeric) ? numeric : 0;
}

function formatNumber(value) {
  return new Intl.NumberFormat("en-US", { maximumFractionDigits: 0 }).format(value);
}

function isDieselTransfer(origin, receive) {
  return origin === "TALARA" && ["PARIÑAS", "LOBITOS EXPRESS (CARGA)"].includes(receive);
}

function shiftDateValue(value, days) {
  const date = value ? new Date(`${value}T00:00:00`) : new Date();
  date.setDate(date.getDate() + days);
  return date.toISOString().slice(0, 10);
}

function getDieselKardex() {
  const rawKardex = localStorage.getItem(DIESEL_KARDEX_KEY);
  return rawKardex ? JSON.parse(rawKardex) : [];
}

function setDieselKardex(records) {
  localStorage.setItem(DIESEL_KARDEX_KEY, JSON.stringify(records));
}

function getDieselInitialStock(ship) {
  return dieselCatalog.find((unit) => unit.ship === ship)?.initialStock || 0;
}

function getDieselRecordId(date, ship, shift) {
  return `${date}__${ship}__${shift}`;
}

function buildEmptyDieselRecord(date, ship, shift) {
  const initialStock = getDieselInitialStock(ship);
  return {
    id: getDieselRecordId(date, ship, shift),
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
  const origin = dieselRefs.origin.value;
  const initialStock = getDieselInitialStock(origin);
  const recharge = toNumber(dieselRefs.recharge.value);
  const consumption = toNumber(dieselRefs.consumption.value);
  const returnVolume = toNumber(dieselRefs.returnVolume.value);
  const differenceValue = toNumber(dieselRefs.difference.value);
  const sondage = returnVolume > 0 ? returnVolume : -differenceValue;
  const dispatched = dieselDispatches
    .filter((entry) => !isDieselTransfer(origin, entry.vessel))
    .reduce((sum, entry) => sum + entry.quantity, 0);
  const transferred = dieselDispatches
    .filter((entry) => isDieselTransfer(origin, entry.vessel))
    .reduce((sum, entry) => sum + entry.quantity, 0);
  const finalStock = initialStock + recharge - dispatched - transferred - consumption + sondage;

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

function populateDieselShips() {
  if (!dieselRefs.origin || !dieselRefs.receive) {
    return;
  }

  if (!dieselRefs.origin.options.length) {
    dieselShips.forEach((ship) => {
      dieselRefs.origin.add(new Option(ship, ship));
    });
    dieselRefs.origin.value = "TALARA";
  }

  const selectedReceive = dieselRefs.receive.value;
  dieselRefs.receive.innerHTML = "";
  dieselShips
    .filter((ship) => ship !== dieselRefs.origin.value)
    .forEach((ship) => dieselRefs.receive.add(new Option(ship, ship)));

  if (selectedReceive && selectedReceive !== dieselRefs.origin.value) {
    dieselRefs.receive.value = selectedReceive;
  }
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
}

function addDieselDispatch() {
  const quantity = toNumber(dieselRefs.qty.value);

  if (!dieselRefs.receive.value || quantity <= 0) {
    dieselRefs.qty.focus();
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

function buildDieselRecordFromForm() {
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
    registeredBy: dieselRefs.registeredBy.value || "",
    captain: dieselRefs.captain.value.trim(),
    driver: dieselRefs.driver.value.trim(),
    document: dieselRefs.document.value.trim(),
    recharge: totals.recharge,
    rechargeVoucher: dieselRefs.rechargeVoucher.value.trim(),
    consumption: totals.consumption,
    returnVolume: totals.returnVolume,
    difference: totals.difference,
    sondage: totals.sondage,
    dispatched: totals.dispatched,
    transferred: totals.transferred,
    initialStock: totals.initialStock,
    finalStock: totals.finalStock,
    dispatches: dieselDispatches.map((entry) => ({
      vessel: entry.vessel,
      quantity: entry.quantity,
      voucher: entry.voucher,
      type: isDieselTransfer(ship, entry.vessel) ? "Transferencia" : "Despacho"
    })),
    observation: dieselRefs.observation.value.trim(),
    moduleStates: getDieselModuleStates(),
    hasMovement,
    savedAt: new Date().toISOString()
  };
}

function saveDieselRecord() {
  if (!dieselRefs.date.value || !dieselRefs.origin.value || !getCheckedValue("dieselShift")) {
    dieselRefs.date.focus();
    return;
  }

  ensureDieselDaySkeleton(dieselRefs.date.value);
  const kardex = getDieselKardex();
  const record = buildDieselRecordFromForm();
  const existingIndex = kardex.findIndex((entry) => entry.id === record.id);

  if (existingIndex >= 0) {
    kardex[existingIndex] = record;
  } else {
    kardex.push(record);
  }

  setDieselKardex(kardex);
  renderDieselConsult();

  if (notificationPanel && notificationButton) {
    closeProfileMenu();
    notificationPanel.hidden = false;
    notificationButton.setAttribute("aria-expanded", "true");
  }
}

function renderDieselConsult() {
  if (!dieselRefs.consultGroups || !dieselRefs.consultTabs) {
    return;
  }

  const selectedShip = dieselRefs.consultVessel?.value || "";
  const selectedShift = dieselRefs.consultShift?.value || "";
  const groups = [...new Set(dieselCatalog.map((unit) => unit.group))];
  const tabs = [
    { tab: "Remolcador", icon: "anchor", count: 2 },
    { tab: "Naves", icon: "ship", count: 4 },
    { tab: "Pasajeros / Despachadores", icon: "users", count: 4 },
    { tab: "Naves Recorrido", icon: "route", count: 8 },
    { tab: "Barcaza", icon: "ship", count: 4 },
    { tab: "Flota Talara", icon: "ship-wheel", count: 1 }
  ];
  const visibleUnits = dieselCatalog.filter((unit) => !selectedShip || unit.ship === selectedShip);

  dieselRefs.consultTabs.innerHTML = "";

  dieselRefs.consultGroups.innerHTML = groups.map((group) => {
    const units = visibleUnits.filter((unit) => unit.group === group);
    if (!units.length) {
      return "";
    }
    const totals = units.reduce((sum, unit) => {
      const day = selectedShift === "B" ? 0 : unit.day;
      const night = selectedShift === "A" ? 0 : unit.night;
      const consumption = day + night;
      const finalStock = unit.initialStock + unit.received - consumption - unit.dispatched - unit.transferred;
      sum.initialStock += unit.initialStock;
      sum.received += unit.received;
      sum.day += day;
      sum.night += night;
      sum.consumption += consumption;
      sum.dispatched += unit.dispatched;
      sum.transferred += unit.transferred;
      sum.finalStock += finalStock;
      return sum;
    }, { initialStock: 0, received: 0, day: 0, night: 0, consumption: 0, dispatched: 0, transferred: 0, finalStock: 0 });

    const formatCrew = (crew) => {
      const [captain = "-", driver = "-"] = String(crew || "-").split("/").map((value) => value.trim());
      return `<span class="crew-lines"><b>CAP:</b> ${captain}<br><b>MOT:</b> ${driver}</span>`;
    };

    const rows = units.map((unit) => {
      const day = selectedShift === "B" ? 0 : unit.day;
      const night = selectedShift === "A" ? 0 : unit.night;
      const consumption = day + night;
      const finalStock = unit.initialStock + unit.received - consumption - unit.dispatched - unit.transferred;
      return `
        <tr>
          <td>${unit.item}</td>
          <td>${unit.ship}</td>
          <td>${formatNumber(unit.initialStock)}</td>
          <td>${unit.received ? formatNumber(unit.received) : "-"}</td>
          <td>${unit.receivedFrom}</td>
          <td>${formatNumber(day)}</td>
          <td>${formatNumber(night)}</td>
          <td>${formatNumber(consumption)}</td>
          <td>${unit.dispatched ? formatNumber(unit.dispatched) : "-"}</td>
          <td>${unit.transferred ? formatNumber(unit.transferred) : "-"}</td>
          <td>0</td>
          <td>${formatNumber(finalStock)}</td>
          <td>${formatCrew(unit.dayCrew)}</td>
          <td>${formatCrew(unit.nightCrew)}</td>
          <td>${unit.type}</td>
          <td><button class="table-icon edit" type="button" aria-label="Editar ${unit.ship}"><i data-lucide="pencil"></i></button></td>
          <td><button class="table-icon delete" type="button" aria-label="Eliminar ${unit.ship}"><i data-lucide="trash-2"></i></button></td>
        </tr>
      `;
    }).join("");

    return `
      <article class="consult-group-card">
        <h3><i data-lucide="${units[0].icon}"></i>${group}</h3>
        <div class="consult-table-scroll">
          <table class="consult-kardex-table">
            <thead>
              <tr>
                <th>Ítem</th>
                <th>Nave / BCZA.</th>
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
                <th>Tipo</th>
                <th>Editar</th>
                <th>Eliminar</th>
              </tr>
            </thead>
            <tbody>${rows}</tbody>
            <tfoot>
              <tr>
                <td colspan="2">TOTALES</td>
                <td>${formatNumber(totals.initialStock)}</td>
                <td>${formatNumber(totals.received)}</td>
                <td>-</td>
                <td>${formatNumber(totals.day)}</td>
                <td>${formatNumber(totals.night)}</td>
                <td>${formatNumber(totals.consumption)}</td>
                <td>${formatNumber(totals.dispatched)}</td>
                <td>${formatNumber(totals.transferred)}</td>
                <td>0</td>
                <td>${formatNumber(totals.finalStock)}</td>
                <td>-</td>
                <td>-</td>
                <td>-</td>
                <td></td>
                <td></td>
              </tr>
            </tfoot>
          </table>
        </div>
      </article>
    `;
  }).join("");

  if (dieselRefs.consultSummary) {
    dieselRefs.consultSummary.textContent = `Mostrando 1 a ${visibleUnits.length} de ${visibleUnits.length} registros`;
  }

  renderIcons();
}

function clearDieselForm() {
  dieselRefs.date.value = "";
  dieselRefs.origin.selectedIndex = -1;
  dieselRefs.receive.selectedIndex = -1;
  dieselRefs.registeredBy.selectedIndex = -1;
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
  dieselRefs.shiftDay.checked = true;
  dieselDispatches = [];
  updateSondageInputs();
  renderDieselRows();
  updateDieselSummary();
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
  renderDieselRows();
  updateDieselSummary();

  document.querySelectorAll(".diesel-module").forEach((module) => {
    const toggle = module.querySelector('.switch input');
    updateModuleState(module);
    toggle?.addEventListener("change", () => updateModuleState(module));
  });

  dieselRefs.origin?.addEventListener("change", () => {
    populateDieselShips();
    renderDieselRows();
    updateDieselSummary();
  });
  dieselRefs.add?.addEventListener("click", addDieselDispatch);
  dieselRefs.clear?.addEventListener("click", clearDieselForm);
  dieselRefs.save?.addEventListener("click", saveDieselRecord);

  dieselRefs.date?.addEventListener("change", () => {
    ensureDieselDaySkeleton(dieselRefs.date.value);
    if (dieselRefs.consultDate) {
      dieselRefs.consultDate.value = dieselRefs.date.value;
    }
    renderDieselConsult();
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
  dieselRefs.consultRefresh?.addEventListener("click", renderDieselConsult);

  [dieselRefs.recharge, dieselRefs.consumption].forEach((control) => {
    control?.addEventListener("input", updateDieselSummary);
  });

  [dieselRefs.returnVolume, dieselRefs.difference].forEach((control) => {
    control?.addEventListener("input", () => updateSondageInputs(control));
  });

  updateSondageInputs();
  if (dieselRefs.consultDate) {
    dieselRefs.consultDate.value = dieselRefs.date.value;
  }
  ensureDieselDaySkeleton(dieselRefs.date.value);
  renderDieselConsult();

  dieselRefs.observation?.addEventListener("input", () => {
    dieselRefs.observationCount.textContent = String(dieselRefs.observation.value.length);
  });

  consultDieselButton?.addEventListener("click", () => setPage("consulta"));
}

async function authenticate(username, password) {
  const users = await loadUsers();
  const userKey = normalize(username);
  const passwordHash = await sha256(password);

  return users.find((user) => {
    const matchesUser = normalize(user.username) === userKey || normalize(user.email) === userKey;
    return matchesUser && user.passwordHash === passwordHash && user.active;
  });
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
    setMessage("No se pudo validar el acceso. Abre la pagina desde un servidor local.", "error");
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

passengerRefs.add?.addEventListener("click", addPassengerEntry);
passengerRefs.clear?.addEventListener("click", clearPassengerForm);
passengerRefs.new?.addEventListener("click", clearPassengerForm);
passengerRefs.save?.addEventListener("click", () => {
  if (notificationPanel && notificationButton) {
    closeProfileMenu();
    notificationPanel.hidden = false;
    notificationButton.setAttribute("aria-expanded", "true");
  }
});

[
  passengerRefs.date,
  passengerRefs.vessel,
  ...document.querySelectorAll('input[name="movement"], input[name="shift"]')
].forEach((control) => {
  control?.addEventListener("change", updatePassengerSummary);
});

function boot() {
  const rememberedUser = localStorage.getItem(REMEMBER_KEY);
  const session = getSession();

  if (rememberedUser) {
    usernameInput.value = rememberedUser;
    rememberInput.checked = true;
  }

  if (session) {
    bootDiesel();
    showDashboard(session);
    renderPassengerRows();
    updatePassengerSummary();
    return;
  }

  usernameInput.focus();
  bootDiesel();
  renderPassengerRows();
  updatePassengerSummary();
  renderIcons();
}

boot();
