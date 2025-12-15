<script>
// Opzioni API
export default {
  name: 'GitHubLoginForm',
  data() {
    return {
      username: '',
      password: ''
    };
  },
  methods: {
    // Funzione fittizia per la sottomissione del form
    handleSubmit() {
      console.log('Tentativo di login con:', this.username, this.password);
      // Logica di autenticazione fittizia qui
      alert('Login simulato per: ' + this.username);
    }
  }
};
</script>

<template>
  <div class="login-container">
    <div class="header">
      <svg height="48" viewBox="0 0 16 16" version="1.1" width="48" data-view-component="true" class="octicon octicon-mark-github">
        <path fill-rule="evenodd" d="M8 0C3.58 0 0 3.58 0 8c0 3.54 2.29 6.53 5.47 7.59.4.07.55-.17.55-.38 0-.19-.01-.82-.01-1.49-2.01.37-2.53-.49-2.69-.94-.09-.23-.48-.94-.82-1.13-.28-.15-.68-.52-.01-.53.63-.01 1.08.58 1.23.82.72 1.21 1.87.87 2.33.66.07-.52.28-.87.51-1.07-1.78-.2-3.64-.89-3.64-3.95 0-.87.31-1.59.82-2.15-.08-.2-.36-1.02.08-2.12 0 0 .67-.21 2.2.82.64-.18 1.32-.27 2-.27.68 0 1.36.09 2 .27 1.53-1.04 2.2-.82 2.2-.82.44 1.1.16 1.92.08 2.12.51.56.82 1.27.82 2.15 0 3.07-1.87 3.75-3.65 3.95.29.25.54.73.54 1.48 0 1.07-.01 1.93-.01 2.2.0-0.21.15-.46.55-.38A8.013 8.013 0 0016 8c0-4.42-3.58-8-8-8z" fill="#333"></path>
      </svg>
    </div>

    <h1>Accedi a GitHub</h1>

    <div class="login-box">
      <form @submit.prevent="handleSubmit">
        <div class="form-group">
          <label for="username">Nome utente o indirizzo email</label>
          <input 
            type="text" 
            id="username" 
            v-model="username" 
            required 
            autocomplete="username"
            class="form-control"
          >
        </div>

        <div class="form-group">
          <div class="password-header">
            <label for="password">Password</label>
            <a href="#" class="forgot-password">Hai dimenticato la password?</a>
          </div>
          <input 
            type="password" 
            id="password" 
            v-model="password" 
            required 
            autocomplete="current-password"
            class="form-control"
          >
        </div>

        <button type="submit" class="btn btn-primary">Accedi</button>
      </form>
    </div>

    <div class="signup-box">
      <p>
        Nuovo su GitHub?
        <a href="#" class="signup-link">Crea un account</a>.
      </p>
    </div>
  </div>
</template>

<style scoped>
/* Variabili CSS (per simulare i colori di GitHub) */
:root {
  --gh-bg-color: #f6f8fa;
  --gh-form-bg: #fff;
  --gh-border-color: #d8dee4;
  --gh-text-color: #24292e;
  --gh-link-color: #0366d6;
  --gh-btn-primary-bg: #28a745;
  --gh-btn-primary-color: #fff;
  --gh-btn-primary-hover-bg: #218838;
}

/* Stile del corpo principale */
.login-container {
  display: flex;
  flex-direction: column;
  align-items: center;
  min-height: 100vh; /* Copre l'intera altezza della vista */
  background-color: var(--gh-bg-color);
  padding: 60px 15px 15px; /* Spazio in alto per il logo */
  box-sizing: border-box;
  font-family: -apple-system, BlinkMacSystemFont, "Segoe UI", Roboto, Helvetica, Arial, sans-serif, "Apple Color Emoji", "Segoe UI Emoji", "Segoe UI Symbol";
  color: var(--gh-text-color);
}

/* Stile dell'intestazione (Logo) */
.header {
  margin-bottom: 20px;
}

/* Stile del titolo */
h1 {
  font-size: 24px;
  font-weight: 300;
  margin-bottom: 20px;
  text-align: center;
}

/* Contenitore del form (la scatola bianca) */
.login-box {
  width: 100%;
  max-width: 340px; /* Larghezza tipica del form di GitHub */
  padding: 20px;
  margin-bottom: 16px;
  background-color: var(--gh-form-bg);
  border: 1px solid var(--gh-border-color);
  border-radius: 6px;
  box-shadow: 0 1px 4px rgba(27, 31, 35, 0.04);
}

/* Stile dei gruppi di input */
.form-group {
  margin-bottom: 15px;
}

/* Stile delle label */
label {
  display: block;
  margin-bottom: 5px;
  font-weight: 600;
  font-size: 14px;
}

/* Stile del campo di input */
.form-control {
  width: 100%;
  padding: 8px;
  font-size: 14px;
  line-height: 20px;
  color: var(--gh-text-color);
  background-color: #fff;
  border: 1px solid var(--gh-border-color);
  border-radius: 6px;
  box-shadow: inset 0 1px 2px rgba(27, 31, 35, 0.075);
  box-sizing: border-box; /* Assicura che il padding non allarghi l'input */
  transition: border-color 0.15s ease-in-out, box-shadow 0.15s ease-in-out;
}

.form-control:focus {
  border-color: var(--gh-link-color);
  outline: none;
  box-shadow: 0 0 0 3px rgba(3, 102, 214, 0.3); /* Simula l'effetto focus di GitHub */
}

/* Intestazione della password con link */
.password-header {
  display: flex;
  justify-content: space-between;
  align-items: center;
}

.forgot-password {
  font-size: 12px;
  color: var(--gh-link-color);
  text-decoration: none;
}

.forgot-password:hover {
  text-decoration: underline;
}

/* Stile del bottone primario */
.btn {
  display: block;
  width: 100%;
  padding: 8px 16px;
  font-size: 14px;
  font-weight: 600;
  line-height: 20px;
  text-align: center;
  white-space: nowrap;
  vertical-align: middle;
  cursor: pointer;
  border: 1px solid rgba(27, 31, 35, 0.2);
  border-radius: 6px;
  user-select: none;
  box-sizing: border-box;
}

.btn-primary {
  color: var(--gh-btn-primary-color);
  background-color: var(--gh-btn-primary-bg);
  border-color: rgba(27, 31, 35, 0.15);
  box-shadow: 0 1px 0 rgba(27, 31, 35, 0.1);
}

.btn-primary:hover {
  background-color: var(--gh-btn-primary-hover-bg);
}

/* Contenitore del link per la registrazione */
.signup-box {
  width: 100%;
  max-width: 340px;
  padding: 15px 20px;
  text-align: center;
  font-size: 14px;
  border: 1px solid var(--gh-border-color);
  border-radius: 6px;
}

.signup-link {
  color: var(--gh-link-color);
  text-decoration: none;
  font-weight: 600;
}

.signup-link:hover {
  text-decoration: underline;
}

/* Assicurati che il contenitore non sbordi e sia centrato in caso di schermi stretti */
@media (max-width: 400px) {
  .login-container {
    padding: 20px 10px 10px;
  }
}
</style>