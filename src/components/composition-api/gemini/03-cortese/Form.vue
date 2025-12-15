<script setup>
import { ref } from 'vue';

// Definizione delle variabili reattive per i campi del form
const username = ref('');
const password = ref('');

// Funzione simulata di login
const handleLogin = () => {
  if (!username.value || !password.value) {
    alert("Per favore, inserisci username e password.");
    return;
  }
  
  // Qui andrebbe la chiamata al backend
  console.log("Tentativo di login con:", {
    user: username.value,
    pass: password.value
  });
  
  alert(`Login simulato per: ${username.value}`);
};
</script>

<template>
  <div class="login-container">
    
    <div class="logo-area">
      <svg height="48" aria-hidden="true" viewBox="0 0 16 16" version="1.1" width="48" data-view-component="true" class="github-logo">
        <path fill-rule="evenodd" d="M8 0C3.58 0 0 3.58 0 8c0 3.54 2.29 6.53 5.47 7.59.4.07.55-.17.55-.38 0-.19-.01-.82-.01-1.49-2.01.37-2.53-.49-2.69-.94-.09-.23-.48-.94-.82-1.13-.28-.15-.68-.52-.01-.53.63-.01 1.08.58 1.23.82.72 1.21 1.87.87 2.33.66.07-.52.28-.87.51-1.07-1.78-.2-3.64-.89-3.64-3.95 0-.87.31-1.59.82-2.15-.08-.2-.36-1.02.08-2.12 0 0 .67-.21 2.2.82.64-.18 1.32-.27 2-.27.68 0 1.36.09 2 .27 1.53-1.04 2.2-.82 2.2-.82.44 1.1.16 1.92.08 2.12.51.56.82 1.27.82 2.15 0 3.07-1.87 3.75-3.65 3.95.29.25.54.73.54 1.48 0 1.07-.01 1.93-.01 2.2 0 .21.15.46.55.38A8.013 8.013 0 0016 8c0-4.42-3.58-8-8-8z"></path>
      </svg>
    </div>

    <h1 class="page-title">Sign in to GitHub</h1>

    <div class="login-card">
      <form @submit.prevent="handleLogin">
        
        <div class="form-group">
          <label for="login_field">Username or email address</label>
          <input 
            type="text" 
            id="login_field" 
            v-model="username" 
            class="form-control"
            autofocus
          />
        </div>

        <div class="form-group">
          <div class="label-row">
            <label for="password">Password</label>
            <a href="#" class="forgot-link">Forgot password?</a>
          </div>
          <input 
            type="password" 
            id="password" 
            v-model="password" 
            class="form-control" 
          />
        </div>

        <button type="submit" class="btn-primary">
          Sign in
        </button>
      </form>
    </div>

    <div class="create-account-box">
      New to GitHub? <a href="#">Create an account</a>.
    </div>

  </div>
</template>

<style scoped>
/* Reset di base e Font simil-GitHub */
* {
  box-sizing: border-box;
}

.login-container {
  font-family: -apple-system, BlinkMacSystemFont, "Segoe UI", Helvetica, Arial, sans-serif, "Apple Color Emoji", "Segoe UI Emoji";
  background-color: #f6f8fa; /* Colore sfondo GitHub */
  min-height: 100vh;
  display: flex;
  flex-direction: column;
  align-items: center;
  padding-top: 32px;
  color: #24292f;
}

/* Stile Logo */
.logo-area {
  margin-bottom: 24px;
}
.github-logo {
  fill: #24292f;
}

/* Titolo */
.page-title {
  font-size: 24px;
  font-weight: 300;
  letter-spacing: -0.5px;
  margin-bottom: 15px;
  text-align: center;
}

/* La Card bianca centrale */
.login-card {
  background-color: #ffffff;
  border: 1px solid #d8dee4;
  border-radius: 6px;
  padding: 20px;
  width: 100%;
  max-width: 308px; /* Larghezza standard del box login GitHub */
  margin-bottom: 16px;
  box-shadow: 0 8px 24px rgba(140,149,159,0.2); /* Leggera ombra */
}

/* Gestione dei campi input */
.form-group {
  margin-bottom: 15px;
}

.form-group label {
  display: block;
  margin-bottom: 8px;
  font-weight: 400;
  font-size: 14px;
}

.form-control {
  width: 100%;
  padding: 5px 12px;
  font-size: 14px;
  line-height: 20px;
  color: #24292f;
  background-color: #ffffff;
  border: 1px solid #d0d7de;
  border-radius: 6px;
  outline: none;
  box-shadow: inset 0 1px 0 rgba(208,215,222,0.2);
  transition: 80ms cubic-bezier(0.33, 1, 0.68, 1);
  transition-property: color,background-color,box-shadow,border-color;
  height: 32px;
}

.form-control:focus {
  border-color: #0969da;
  box-shadow: 0 0 0 3px rgba(9,105,218,0.3);
}

/* Link Forgot Password */
.label-row {
  display: flex;
  justify-content: space-between;
}

.forgot-link {
  font-size: 12px;
  color: #0969da;
  text-decoration: none;
}
.forgot-link:hover {
  text-decoration: underline;
}

/* Bottone Verde */
.btn-primary {
  width: 100%;
  background-color: #2da44e;
  color: #ffffff;
  border: 1px solid rgba(27,31,35,0.15);
  border-radius: 6px;
  padding: 5px 16px;
  font-size: 14px;
  font-weight: 600;
  cursor: pointer;
  line-height: 20px;
  margin-top: 4px;
}

.btn-primary:hover {
  background-color: #2c974b;
}

/* Box Footer "Create account" */
.create-account-box {
  border: 1px solid #d8dee4;
  border-radius: 6px;
  padding: 15px 20px;
  font-size: 14px;
  text-align: center;
  width: 100%;
  max-width: 308px;
  background-color: white; /* A volte è trasparente, qui mettiamo bianco per pulizia */
}

.create-account-box a {
  color: #0969da;
  text-decoration: none;
}
.create-account-box a:hover {
  text-decoration: underline;
}
</style>