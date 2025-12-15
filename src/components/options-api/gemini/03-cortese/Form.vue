<script>
// Questo è il blocco <script> per le Options API
export default {
  // Il nome del componente è utile per il debug
  name: 'GitHubLogin',
  
  // La funzione data() restituisce l'oggetto reattivo
  data() {
    return {
      username: '',
      password: '',
      loginMessage: '', // Per mostrare un messaggio dopo l'invio
    };
  },
  
  // I methods contengono le funzioni del componente
  methods: {
    handleLogin() {
      // Preveniamo l'invio del form automatico
      
      // LOGICA DI SIMULAZIONE DEL LOGIN
      console.log('Tentativo di login con:', this.username, 'e password nascosta');
      
      if (this.username === 'user' && this.password === 'pass') {
        this.loginMessage = 'Login riuscito! Benvenuto.';
        // In una vera applicazione ci sarebbe una reindirizzamento
      } else if (this.username === '' || this.password === '') {
        this.loginMessage = 'Per favore, inserisci sia il nome utente che la password.';
      } else {
        this.loginMessage = 'Credenziali non valide. Riprova.';
      }
      
      // Potresti resettare i campi qui se necessario:
      // this.username = '';
      // this.password = '';
    }
  }
}
</script>

<template>
  <div class="login-page">
    <div class="header-container">
      <svg aria-hidden="true" height="48" viewBox="0 0 16 16" version="1.1" width="48" data-view-component="true" class="octicon octicon-mark-github">
        <path d="M8 0C3.58 0 0 3.58 0 8c0 3.54 2.29 6.53 5.47 7.59.4.07.55-.17.55-.38 0-.19-.01-.82-.01-1.49-2.01.37-2.53-.49-2.69-.94-.09-.23-.48-.94-.82-1.13-.28-.15-.68-.52-.01-.53.63-.01 1.08.58 1.23.82.72 1.21 1.87.87 2.33.66.07-.52.28-.87.51-1.07-1.78-.2-3.64-.89-3.64-3.95 0-.87.31-1.59.82-2.15-.08-.2-.36-1.02.08-2.12 0 0 .67-.21 2.2.82.64-.18 1.32-.27 2-.27.68 0 1.36.09 2 .27 1.53-1.04 2.2-.82 2.2-.82.44 1.1.16 1.92.08 2.12.51.56.82 1.27.82 2.15 0 3.07-1.87 3.75-3.65 3.95.29.25.54.73.54 1.48 0 1.07-.01 1.93-.01 2.22 0 .21.15.46.55.38A8.013 8.013 0 0 0 16 8c0-4.42-3.58-8-8-8z"></path>
      </svg>
      <h1>Sign in to GitHub</h1>
    </div>

    <p v-if="loginMessage" :class="{ 'error-message': loginMessage.includes('non valide') || loginMessage.includes('Per favore'), 'success-message': loginMessage.includes('riuscito') }" class="message">
      {{ loginMessage }}
    </p>

    <form @submit.prevent="handleLogin" class="login-box">
      <label for="username">Username or email address</label>
      <input type="text" id="username" v-model="username" required>

      <div class="password-header">
        <label for="password">Password</label>
        <a href="#" class="forgot-link">Forgot password?</a>
      </div>
      <input type="password" id="password" v-model="password" required>

      <button type="submit" class="login-button">Sign in</button>
    </form>
    
    <div class="signup-box">
      New to GitHub? <a href="#">Create an account.</a>
    </div>

  </div>
</template>

<style scoped>
/*
 * STILE MINIMALE PER LA PAGINA DI LOGIN DI GITHUB
 */

.login-page {
  display: flex;
  flex-direction: column;
  align-items: center;
  padding-top: 50px;
  font-family: -apple-system, BlinkMacSystemFont, "Segoe UI", "Noto Sans", Helvetica, Arial, sans-serif, "Apple Color Emoji", "Segoe UI Emoji";
  background-color: #f6f8fa; /* Sfondo leggero come GitHub */
  min-height: 100vh;
}

.header-container {
  display: flex;
  flex-direction: column;
  align-items: center;
  margin-bottom: 24px;
}

.header-container h1 {
  font-size: 24px;
  font-weight: 300;
  margin-top: 16px;
  margin-bottom: 0;
  color: #24292f;
}

.octicon-mark-github {
  fill: #24292f; /* Colore del logo GitHub */
}

/* Stile del Box di Login */
.login-box {
  width: 300px;
  padding: 20px;
  background-color: #ffffff;
  border: 1px solid #d0d7de;
  border-radius: 6px;
  box-shadow: 0 1px 3px rgba(27, 31, 35, 0.1);
  margin-bottom: 16px;
}

.login-box label {
  display: block;
  margin-bottom: 8px;
  font-weight: 600;
  font-size: 14px;
  color: #24292f;
}

.login-box input[type="text"],
.login-box input[type="password"] {
  width: 100%;
  padding: 8px 12px;
  margin-bottom: 16px;
  border: 1px solid #d0d7de;
  border-radius: 6px;
  box-sizing: border-box; /* Importante per il padding */
  background-color: #f6f8fa;
  box-shadow: inset 0 1px 0 rgba(208, 215, 222, 0.2);
}

.login-box input:focus {
  outline: none;
  border-color: #0969da;
  box-shadow: 0 0 0 3px rgba(9, 105, 218, 0.3);
  background-color: #fff;
}

.password-header {
  display: flex;
  justify-content: space-between;
  align-items: center;
}

.forgot-link {
  color: #0969da;
  text-decoration: none;
  font-size: 12px;
}

/* Pulsante di Login (Primario GitHub) */
.login-button {
  width: 100%;
  padding: 8px 16px;
  font-weight: 600;
  color: #ffffff;
  background-color: #2da44e; /* Verde primario GitHub */
  border: 1px solid rgba(27, 31, 35, 0.15);
  border-radius: 6px;
  cursor: pointer;
  margin-top: 10px;
  transition: background-color 0.1s ease;
}

.login-button:hover {
  background-color: #2c974b;
}

/* Link di Registrazione */
.signup-box {
  width: 300px;
  padding: 16px 20px;
  border: 1px solid #d0d7de;
  border-radius: 6px;
  text-align: center;
  font-size: 14px;
  background-color: #f6f8fa;
}

.signup-box a {
  color: #0969da;
  text-decoration: none;
}

/* Messaggi di stato */
.message {
  padding: 16px;
  margin-bottom: 16px;
  border-radius: 6px;
  font-weight: 600;
  text-align: center;
  width: 300px; /* Larghezza fissa per coerenza */
}

.error-message {
  color: #b33d45;
  background-color: #ffebe9;
  border: 1px solid #b33d45;
}

.success-message {
  color: #2da44e;
  background-color: #eff7ef;
  border: 1px solid #2da44e;
}
</style>