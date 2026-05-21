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

let usersCache = [];

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
  welcomeText.textContent = `${session.name} · ${session.role}`;
  renderIcons();
}

function showLogin() {
  sessionStorage.removeItem(SESSION_KEY);
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

function boot() {
  const rememberedUser = localStorage.getItem(REMEMBER_KEY);
  const session = getSession();

  if (rememberedUser) {
    usernameInput.value = rememberedUser;
    rememberInput.checked = true;
  }

  if (session) {
    showDashboard(session);
    return;
  }

  usernameInput.focus();
  renderIcons();
}

boot();
