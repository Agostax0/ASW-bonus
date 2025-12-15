<script setup>
import { ref } from 'vue';

// Stato reattivo per i campi del form
const username = ref('');
const password = ref('');

// Funzione simulata di submit
const handleSubmit = () => {
  if (username.value && password.value) {
    console.log('Tentativo di login con:', username.value);
    alert(`Login simulato per l'utente: ${username.value}`);
  } else {
    alert('Inserisci username e password.');
  }
};
</script>

<template>
  <div class="login-container">
    <div class="login-header">
      <a class="header-logo" href="https://github.com/">
        <svg height="48" viewBox="0 0 16 16" version="1.1" width="48" aria-hidden="true" class="octicon">
          <path fill-rule="evenodd" d="M8 0C3.58 0 0 3.58 0 8c0 3.54 2.29 6.53 5.47 7.59.4.07.55-.17.55-.38 0-.19-.01-.82-.01-1.49-2.01.37-2.53-.49-2.69-.94-.09-.23-.48-.94-.82-1.13-.28-.15-.68-.52-.01-.53.63-.01 1.08.58 1.23.82.72 1.21 1.87.87 2.33.66.07-.52.28-.87.51-1.07-1.78-.2-3.64-.89-3.64-3.95 0-.87.31-1.59.82-2.15-.08-.2-.36-1.02.08-2.12 0 0 .67-.21 2.2.82.64-.18 1.32-.27 2-.27.68 0 1.36.09 2 .27 1.53-1.04 2.2-.82 2.2-.82.44 1.1.16 1.92.08 2.12.51.56.82 1.27.82 2.15 0 3.07-1.87 3.75-3.65 3.95.29.25.54.73.54 1.48 0 1.07-.01 1.93-.01 2.2 0 .21.15.46.55.38A8.013 8.013 0 0016 8c0-4.42-3.58-8-8-8z"></path>
        </svg>
      </a>
      <h1>Sign in to GitHub</h1>
    </div>

    <div class="login-box">
      <div class="login-body">
        <form @submit.prevent="handleSubmit">
          
          <label for="login_field">Username or email address</label>
          <input 
            type="text" 
            id="login_field" 
            v-model="username" 
            class="form-control" 
            autofocus
          />

          <div class="position-relative">
            <label for="password">Password</label>
            <a href="#" class="label-link">Forgot password?</a>
            <input 
              type="password" 
              id="password" 
              v-model="password" 
              class="form-control" 
            />
          </div>

          <button type="submit" class="btn btn-primary btn-block">
            Sign in
          </button>
        </form>
      </div>
    </div>

    <p class="login-callout">
      New to GitHub? <a href="#">Create an account</a>.
    </p>

    <div class="site-footer">
      <ul class="site-footer-links">
        <li><a href="#">Terms</a></li>
        <li><a href="#">Privacy</a></li>
        <li><a href="#">Security</a></li>
        <li><a href="#">Contact GitHub</a></li>
      </ul>
    </div>
  </div>
</template>

<style scoped>
/* Reset di base e Font */
* {
  box-sizing: border-box;
}

.login-container {
  font-family: -apple-system, BlinkMacSystemFont, "Segoe UI", Helvetica, Arial, sans-serif, "Apple Color Emoji", "Segoe UI Emoji";
  background-color: #f6f8fa; /* Colore sfondo pagina GitHub */
  color: #24292e;
  min-height: 100vh;
  display: flex;
  flex-direction: column;
  align-items: center;
  padding-top: 32px;
  font-size: 14px;
}

/* Header & Logo */
.login-header {
  text-align: center;
  margin-bottom: 24px;
}

.octicon {
  fill: #24292e;
  margin-bottom: 24px;
}

.login-header h1 {
  font-size: 24px;
  font-weight: 300;
  letter-spacing: -0.5px;
  margin: 0;
}

/* Box Form (La "Card") */
.login-box {
  width: 340px; /* Larghezza standard GitHub login */
  margin-bottom: 15px;
}

.login-body {
  background-color: #fff;
  border: 1px solid #d1d5da;
  border-radius: 6px;
  padding: 20px;
  font-size: 14px;
}

/* Form Elements */
label {
  display: block;
  margin-bottom: 7px;
  font-weight: 600;
}

.form-control {
  width: 100%;
  padding: 5px 12px;
  font-size: 14px;
  line-height: 20px;
  color: #24292e;
  vertical-align: middle;
  background-color: #fff;
  background-repeat: no-repeat;
  background-position: right 8px center;
  border: 1px solid #e1e4e8;
  border-radius: 6px;
  box-shadow: inset 0 1px 0 rgba(225,228,232,0.2);
  margin-bottom: 15px;
  margin-top: 5px;
}

.form-control:focus {
  border-color: #0366d6;
  outline: none;
  box-shadow: 0 0 0 3px rgba(3,102,214,0.3);
}

/* Link "Forgot Password" posizionato a destra */
.position-relative {
  position: relative;
}

.label-link {
  float: right;
  font-size: 12px;
  color: #0366d6;
  text-decoration: none;
}

.label-link:hover, .login-callout a:hover, .site-footer-links a:hover {
  text-decoration: underline;
}

/* Bottone Verde */
.btn {
  display: block;
  width: 100%;
  text-align: center;
  cursor: pointer;
  padding: 5px 16px;
  font-size: 14px;
  font-weight: 500;
  line-height: 20px;
  white-space: nowrap;
  vertical-align: middle;
  user-select: none;
  border: 1px solid;
  border-radius: 6px;
  appearance: none;
}

.btn-primary {
  color: #fff;
  background-color: #2ea44f;
  border-color: rgba(27,31,35,0.15);
  box-shadow: 0 1px 0 rgba(27,31,35,0.1), inset 0 1px 0 rgba(255,255,255,0.03);
  font-weight: 600;
  margin-top: 20px;
}

.btn-primary:hover {
  background-color: #2c974b;
}

/* Footer "New to GitHub?" */
.login-callout {
  width: 340px;
  padding: 15px 20px;
  text-align: center;
  border: 1px solid #d1d5da;
  border-radius: 6px;
  margin-bottom: 40px;
  font-size: 14px;
}

.login-callout a {
  color: #0366d6;
  text-decoration: none;
}

/* Footer Links Bassi */
.site-footer {
  text-align: center;
  margin-top: 40px;
  font-size: 12px;
  color: #586069;
}

.site-footer-links {
  list-style: none;
  padding: 0;
  margin: 0;
}

.site-footer-links li {
  display: inline-block;
  margin-right: 10px;
}

.site-footer-links a {
  color: #0366d6;
  text-decoration: none;
}
</style>