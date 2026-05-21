const SESSION_KEY = "portoErp.session";
const REMEMBER_KEY = "portoErp.rememberedUser";

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
  recharge: document.querySelector("#dieselRecharge"),
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
  observationCount: document.querySelector("#dieselObservationCount")
};

const dieselShips = [
  "TALARA",
  "PARIÑAS",
  "SHEYLA",
  "BUCKLEY EXPRESS",
  "LOBITOS EXPRESS CARGA",
  "OLYMPIC",
  "CABO BLANCO",
  "NEPTUNE",
  "LJ KELLEY"
];

let usersCache = [];
let passengerEntries = [
  { id: crypto.randomUUID(), contractor: "PetroPeru", routine: "MT-LOBITOS", quantity: 4 },
  { id: crypto.randomUUID(), contractor: "Confipetrol", routine: "MT-LOBITOS", quantity: 2 },
  { id: crypto.randomUUID(), contractor: "IMI", routine: "MT-PROVIDENCIA", quantity: 2 },
  { id: crypto.randomUUID(), contractor: "IPCO", routine: "MT-PLAYA TORTUGA", quantity: 5 }
];
let dieselDispatches = [
  { id: crypto.randomUUID(), vessel: "PARIÑAS", quantity: 1000, voucher: "005" },
  { id: crypto.randomUUID(), vessel: "SHEYLA", quantity: 100, voucher: "006" },
  { id: crypto.randomUUID(), vessel: "BUCKLEY EXPRESS", quantity: 200, voucher: "007" },
  { id: crypto.randomUUID(), vessel: "LOBITOS EXPRESS CARGA", quantity: 2000, voucher: "008" }
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
      diesel: "Registro de Diesel"
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
  return origin === "TALARA" && ["PARIÑAS", "LOBITOS EXPRESS CARGA"].includes(receive);
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
  const initialStock = 7006;
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

  dieselRefs.summaryVessel.textContent = origin;
  dieselRefs.summaryRecharge.textContent = formatNumber(recharge);
  dieselRefs.summaryDispatched.textContent = formatNumber(dispatched);
  dieselRefs.summaryTransferred.textContent = formatNumber(transferred);
  dieselRefs.summaryConsumption.textContent = formatNumber(consumption);
  dieselRefs.summaryDifference.textContent = `${sondage >= 0 ? "+" : "-"}${formatNumber(Math.abs(sondage))}`;
  dieselRefs.summaryDifference.classList.toggle("positive", sondage >= 0);
  dieselRefs.summaryDifference.classList.toggle("negative", sondage < 0);
  dieselRefs.summaryFinal.textContent = formatNumber(finalStock);
  dieselRefs.statFinal.textContent = formatNumber(finalStock);
  dieselRefs.statRecharge.textContent = formatNumber(recharge);
  dieselRefs.statDispatched.textContent = formatNumber(dispatched);
  dieselRefs.statTransferred.textContent = formatNumber(transferred);
  dieselRefs.statConsumption.textContent = formatNumber(consumption);
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

function clearDieselForm() {
  dieselRefs.recharge.value = "0";
  dieselRefs.consumption.value = "0";
  dieselRefs.returnVolume.value = "";
  dieselRefs.difference.value = "";
  dieselRefs.qty.value = "";
  dieselRefs.voucher.value = "";
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
  dieselRefs.save?.addEventListener("click", () => {
    if (notificationPanel && notificationButton) {
      closeProfileMenu();
      notificationPanel.hidden = false;
      notificationButton.setAttribute("aria-expanded", "true");
    }
  });

  [dieselRefs.recharge, dieselRefs.consumption].forEach((control) => {
    control?.addEventListener("input", updateDieselSummary);
  });

  [dieselRefs.returnVolume, dieselRefs.difference].forEach((control) => {
    control?.addEventListener("input", () => updateSondageInputs(control));
  });

  updateSondageInputs();

  dieselRefs.observation?.addEventListener("input", () => {
    dieselRefs.observationCount.textContent = String(dieselRefs.observation.value.length);
  });
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
    setMessage("Sesion iniciada correctamente.", "success");

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
  setMessage("Recuperacion pendiente: luego la conectaremos con tu flujo real de usuarios.", "success");
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
