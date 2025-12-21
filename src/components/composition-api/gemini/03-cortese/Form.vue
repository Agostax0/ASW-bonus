<script setup>
import { ref } from 'vue';

// Gestione dei dati del form
const email = ref('');
const password = ref('');

const handleLogin = () => {
  console.log("Tentativo di login con:", email.value);
  // Qui potresti aggiungere la logica per chiamare un'API
  alert("Login cliccato! Controlla la console.");
};
</script>

<template>
  <div class="login-page">
    <header class="header">
      <img 
        src="https://github.githubassets.com/images/modules/logos_page/GitHub-Mark.png" 
        alt="GitHub Logo" 
        class="logo"
      />
    </header>

    <main class="main-content">
      <h1>Sign in to GitHub</h1>

      <div class="login-card">
        <form @submit.prevent="handleLogin">
          <div class="form-group">
            <label for="login_field">Username or email address</label>
            <input 
              v-model="email" 
              type="text" 
              id="login_field" 
              class="form-control" 
              required
            />
          </div>

          <div class="form-group">
            <div class="label-wrapper">
              <label for="password">Password</label>
              <a href="#" class="forgot-link">Forgot password?</a>
            </div>
            <input 
              v-model="password" 
              type="password" 
              id="password" 
              class="form-control" 
              required
            />
          </div>

          <button type="submit" class="btn-primary">Sign in</button>
        </form>
      </div>

      <div class="create-account-card">
        New to GitHub? <a href="#">Create an account</a>.
      </div>
    </main>

    <footer class="footer-links">
      <a href="#">Terms</a>
      <a href="#">Privacy</a>
      <a href="#">Security</a>
      <a href="#">Contact GitHub</a>
    </footer>
  </div>
</template>

<style scoped>
/* Reset e Base - Tema Scuro */
.login-page {
  --bg-color: #0d1117;
  --card-bg: #161b22;
  --border-color: #30363d;
  --text-main: #c9d1d9;
  --btn-green: #238636;
  --btn-green-hover: #2ea043;
  --link-blue: #58a6ff;

  background-color: var(--bg-color);
  color: var(--text-main);
  min-height: 100vh;
  display: flex;
  flex-direction: column;
  align-items: center;
  font-family: -apple-system, BlinkMacSystemFont, "Segoe UI", Helvetica, Arial, sans-serif;
  padding-top: 40px;
  box-sizing: border-box;
}

/* Header & Logo */
.header {
  margin-bottom: 24px;
}

.logo {
  width: 48px;
  height: 48px;
  filter: invert(1); /* Rende il logo bianco per il tema scuro */
}

/* Layout Centrale */
.main-content {
  width: 100%;
  max-width: 300px; /* Larghezza tipica del login GitHub */
  padding: 0 16px;
  box-sizing: border-box;
}

h1 {
  font-size: 24px;
  font-weight: 300;
  text-align: center;
  margin-bottom: 16px;
}

/* Login Card */
.login-card {
  background-color: var(--card-bg);
  border: 1px solid var(--border-color);
  border-radius: 6px;
  padding: 20px;
  margin-bottom: 16px;
  box-sizing: border-box;
}

.form-group {
  margin-bottom: 15px;
}

.label-wrapper {
  display: flex;
  justify-content: space-between;
  align-items: center;
}

label {
  display: block;
  font-size: 14px;
  margin-bottom: 7px;
  text-align: left;
}

/* Input Styles - Qui sistemiamo lo "sbordamento" */
.form-control {
  width: 100%;
  padding: 5px 12px;
  font-size: 14px;
  background-color: var(--bg-color);
  border: 1px solid var(--border-color);
  border-radius: 6px;
  color: white;
  box-sizing: border-box; /* Fondamentale per non farlo uscire dai bordi */
  transition: border-color 0.2s;
}

.form-control:focus {
  border-color: var(--link-blue);
  outline: none;
  box-shadow: 0 0 0 3px rgba(88, 166, 255, 0.3);
}

/* Button Styles */
.btn-primary {
  width: 100%;
  background-color: var(--btn-green);
  color: white;
  border: 1px solid rgba(240, 246, 252, 0.1);
  border-radius: 6px;
  padding: 5px 16px;
  font-size: 14px;
  font-weight: 600;
  cursor: pointer;
  margin-top: 5px;
}

.btn-primary:hover {
  background-color: var(--btn-green-hover);
}

/* Link e Footer Card */
.create-account-card {
  border: 1px solid var(--border-color);
  border-radius: 6px;
  padding: 15px;
  text-align: center;
  font-size: 14px;
}

a {
  color: var(--link-blue);
  text-decoration: none;
}

a:hover {
  text-decoration: underline;
}

.forgot-link {
  font-size: 12px;
}

.footer-links {
  margin-top: 40px;
  display: flex;
  gap: 16px;
  font-size: 12px;
  padding-bottom: 40px;
}

.footer-links a {
  color: #8b949e;
}
</style>