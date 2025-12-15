<script>
// Non usiamo 'setup', ma l'export di default per le Options API
export default {
  // Il nome del componente
  name: 'GitHubLoginForm',
  
  // Il modello di dati (state) del componente
  data() {
    return {
      username: '',
      password: ''
    };
  },
  
  // Metodi del componente (per l'invio del form, in questo caso simulato)
  methods: {
    handleLogin() {
      // Questa è solo una simulazione. 
      // In un'applicazione reale, qui ci sarebbe la logica di autenticazione.
      console.log('Login tentato:', {
        username: this.username,
        password: this.password
      });
      // Impediamo il reindirizzamento predefinito del form
      // (anche se con il .prevent sul template è già gestito)
    }
  }
}
</script>

<template>
  <div id="login-container">
    <div class="github-logo">
      <svg height="48" viewBox="0 0 16 16" version="1.1" width="48" aria-hidden="true" class="octicon octicon-mark-github">
        <path fill-rule="evenodd" d="M8 0C3.58 0 0 3.58 0 8c0 3.54 2.29 6.53 5.47 7.59.4.07.55-.17.55-.38 0-.19-.01-.82-.01-1.49-2.01.37-2.53-.49-2.69-.94-.09-.23-.48-.94-.82-1.13-.28-.15-.68-.52-.01-.53.63-.01 1.08.58 1.23.82.72 1.21 1.87.87 2.33.66.07-.52.28-.87.51-1.07-1.78-.2-3.64-.89-3.64-3.95 0-.87.31-1.59.82-2.15-.08-.2-.36-1.02.08-2.12 0 0 .67-.21 2.2.82.64-.18 1.32-.27 2-.27.68 0 1.36.09 2 .27 1.53-1.04 2.2-.82 2.2-.82.44 1.1.16 1.92.08 2.12.51.56.82 1.27.82 2.15 0 3.07-1.87 3.75-3.65 3.95.29.25.54.73.54 1.48 0 1.07-.01 1.93-.01 2.2 0 .21.15.46.55.38A8.013 8.013 0 0016 8c0-4.42-3.58-8-8-8z"></path>
      </svg>
    </div>

    <h1>Sign in to GitHub</h1>

    <form class="login-form" @submit.prevent="handleLogin">
      <div class="form-group">
        <label for="login_field">Username or email address</label>
        <input type="text" id="login_field" class="form-control" v-model="username" required>
      </div>

      <div class="form-group">
        <div class="password-label-container">
          <label for="password">Password</label>
          <a href="#" class="forgot-password">Forgot password?</a>
        </div>
        <input type="password" id="password" class="form-control" v-model="password" required>
      </div>

      <button type="submit" class="btn btn-primary">Sign in</button>
    </form>
    
    <div class="create-account-box">
      New to GitHub? <a href="#">Create an account</a>.
    </div>
  </div>
</template>

<style scoped>
/*
 * Stili per replicare l'aspetto di base del form di login di GitHub
 */

/* Contenitore principale per centrare il contenuto */
#login-container {
  display: flex;
  flex-direction: column;
  align-items: center; /* Centra orizzontalmente gli elementi */
  padding-top: 50px;
  font-family: -apple-system, BlinkMacSystemFont, "Segoe UI", Roboto, Helvetica, Arial, sans-serif, "Apple Color Emoji", "Segoe UI Emoji", "Segoe UI Symbol";
}

/* Stile per il logo GitHub */
.github-logo {
  color: #24292e; /* Colore scuro simile a quello usato */
  margin-bottom: 16px;
}

/* Stile per l'intestazione H1 */
h1 {
  font-size: 24px;
  font-weight: 300;
  margin-top: 0;
  margin-bottom: 20px;
  color: #24292e;
}

/* Stile del box del form */
.login-form {
  width: 300px; /* Larghezza fissa tipica */
  padding: 20px;
  border: 1px solid #d8dee2;
  border-radius: 6px;
  background-color: #f6f8fa; /* Sfondo del box del form */
  margin-bottom: 16px;
}

/* Stile del gruppo di form */
.form-group {
  margin-bottom: 15px;
}

/* Stile delle label */
label {
  display: block; /* La label prende l'intera larghezza */
  margin-bottom: 5px;
  font-weight: 600; /* Leggermente in grassetto */
  font-size: 14px;
  color: #24292e;
}

/* Contenitore per la label della password e il link 'Forgot password?' */
.password-label-container {
  display: flex;
  justify-content: space-between; /* Allinea il testo e il link agli estremi */
  align-items: center;
}

/* Stile dei campi di input */
.form-control {
  width: 100%;
  padding: 8px;
  font-size: 14px;
  line-height: 20px;
  color: #24292e;
  background-color: #fff;
  border: 1px solid #d1d5da;
  border-radius: 6px;
  box-shadow: inset 0 1px 2px rgba(27, 31, 35, 0.075);
  /* Focus style simile a GitHub */
  transition: border-color 0.15s ease-in-out, box-shadow 0.15s ease-in-out;
}

.form-control:focus {
  border-color: #0366d6;
  outline: none;
  box-shadow: 0 0 0 3px rgba(3, 102, 214, 0.3);
}

/* Stile del pulsante primario */
.btn-primary {
  width: 100%;
  padding: 8px 16px;
  font-size: 14px;
  font-weight: 600;
  line-height: 20px;
  color: #fff; /* Testo bianco */
  background-color: #2c974b; /* Verde GitHub */
  border: 1px solid rgba(27, 31, 35, 0.15);
  border-radius: 6px;
  cursor: pointer;
  transition: background-color 0.15s ease-in-out;
}

.btn-primary:hover {
  background-color: #278d46;
}

/* Stile del link 'Forgot password?' */
.forgot-password {
  font-size: 12px;
  color: #0366d6; /* Blu link */
  text-decoration: none;
}

.forgot-password:hover {
  text-decoration: underline;
}

/* Stile del box 'New to GitHub?' */
.create-account-box {
  width: 300px;
  padding: 15px 20px;
  font-size: 14px;
  text-align: center;
  border: 1px solid #d8dee2;
  border-radius: 6px;
  background-color: #fff;
  color: #586069;
}

.create-account-box a {
  color: #0366d6;
  text-decoration: none;
}

.create-account-box a:hover {
  text-decoration: underline;
}
</style>