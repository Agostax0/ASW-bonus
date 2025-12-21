<script setup>
import { ref } from 'vue'

// Stato reattivo per i campi del form
const login = ref('')
const password = ref('')

// Funzione di gestione (simulata)
const handleSubmit = () => {
  console.log('Tentativo di login con:', login.value)
  alert('Form inviato (simulazione)')
}
</script>

<template>
  <div class="login-wrapper">
    <header class="login-header">
      <svg height="48" viewBox="0 0 16 16" width="48" class="octicon-logo">
        <path fill="white" d="M8 0C3.58 0 0 3.58 0 8c0 3.54 2.29 6.53 5.47 7.59.4.07.55-.17.55-.38 0-.19-.01-.82-.01-1.49-2.01.37-2.53-.49-2.69-.94-.09-.23-.48-.94-.82-1.13-.28-.15-.68-.52-.01-.53.63-.01 1.08.58 1.23.82.72 1.21 1.87.87 2.33.66.07-.52.28-.87.51-1.07-1.78-.2-3.64-.89-3.64-3.95 0-.87.31-1.59.82-2.15-.08-.2-.36-1.02.08-2.12 0 0 .67-.21 2.2.82.64-.18 1.32-.27 2-.27.68 0 1.36.09 2 .27 1.53-1.04 2.2-.82 2.2-.82.44 1.1.16 1.92.08 2.12.51.56.82 1.27.82 2.15 0 3.07-1.87 3.75-3.65 3.95.29.25.54.73.54 1.48 0 1.07-.01 1.93-.01 2.2 0 .21.15.46.55.38A8.013 8.013 0 0016 8c0-4.42-3.58-8-8-8z"></path>
      </svg>
      <h1>Sign in to GitHub</h1>
    </header>

    <main class="login-card">
      <form @submit.prevent="handleSubmit">
        <div class="form-group">
          <label for="login_field">Username or email address</label>
          <input 
            v-model="login"
            type="text" 
            id="login_field" 
            class="form-control" 
            autofocus
          />
        </div>

        <div class="form-group">
          <div class="label-wrapper">
            <label for="password">Password</label>
            <a href="#" class="forgot-password">Forgot password?</a>
          </div>
          <input 
            v-model="password"
            type="password" 
            id="password" 
            class="form-control"
          />
        </div>

        <button type="submit" class="btn-primary">Sign in</button>
      </form>
    </main>

    <section class="create-account">
      <p>New to GitHub? <a href="#">Create an account</a>.</p>
    </section>

    <footer class="footer-links">
      <a href="#">Terms</a>
      <a href="#">Privacy</a>
      <a href="#">Docs</a>
      <a href="#">Contact GitHub Support</a>
    </footer>
  </div>
</template>

<style scoped>
/* Reset e stili base per il tema scuro */
.login-wrapper {
  display: flex;
  flex-direction: column;
  align-items: center;
  justify-content: center;
  min-height: 100vh;
  background-color: #0d1117; /* Sfondo ufficiale GitHub Dark */
  color: #c9d1d9;
  font-family: -apple-system, BlinkMacSystemFont, "Segoe UI", Helvetica, Arial, sans-serif;
  padding: 20px;
}

/* Header */
.login-header {
  text-align: center;
  margin-bottom: 24px;
}

.login-header h1 {
  font-size: 24px;
  font-weight: 300;
  letter-spacing: -0.5px;
  margin-top: 24px;
}

/* Card del Form */
.login-card {
  background-color: #161b22;
  border: 1px solid #30363d;
  border-radius: 6px;
  padding: 20px;
  width: 100%;
  max-width: 300px;
}

.form-group {
  margin-bottom: 15px;
}

.label-wrapper {
  display: flex;
  justify-content: space-between;
  align-items: center;
  margin-bottom: 8px;
}

label {
  display: block;
  font-size: 14px;
  font-weight: 400;
  margin-bottom: 8px;
}

/* Input */
.form-control {
  width: 100%;
  padding: 5px 12px;
  font-size: 14px;
  line-height: 20px;
  color: #c9d1d9;
  background-color: #0d1117;
  border: 1px solid #30363d;
  border-radius: 6px;
  box-sizing: border-box; /* Importante per il padding */
}

.form-control:focus {
  border-color: #58a6ff;
  outline: none;
  box-shadow: 0 0 0 3px rgba(31, 111, 235, 0.3);
}

/* Bottone Login */
.btn-primary {
  width: 100%;
  padding: 5px 16px;
  font-size: 14px;
  font-weight: 600;
  color: #ffffff;
  background-color: #238636;
  border: 1px solid rgba(240, 246, 252, 0.1);
  border-radius: 6px;
  cursor: pointer;
  margin-top: 5px;
}

.btn-primary:hover {
  background-color: #2ea043;
}

/* Link e testi extra */
.forgot-password, .create-account a, .footer-links a {
  color: #58a6ff;
  text-decoration: none;
  font-size: 12px;
}

.forgot-password:hover, .create-account a:hover, .footer-links a:hover {
  text-decoration: underline;
}

.create-account {
  margin-top: 15px;
  border: 1px solid #30363d;
  border-radius: 6px;
  padding: 15px;
  width: 100%;
  max-width: 300px;
  text-align: center;
  font-size: 14px;
}

/* Footer */
.footer-links {
  margin-top: 40px;
  display: flex;
  gap: 15px;
  flex-wrap: wrap;
  justify-content: center;
}

.footer-links a {
  color: #8b949e;
}
</style>