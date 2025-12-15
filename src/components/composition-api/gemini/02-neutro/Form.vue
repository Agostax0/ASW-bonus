<script setup>
import { ref } from 'vue';

// Definizione dello stato reattivo per i campi del form
const username = ref('');
const password = ref('');

// Funzione placeholder per la gestione del submit
const handleSubmit = () => {
  console.log('Login attempt:', {
    username: username.value,
    password: password.value
  });
  alert('Simulazione Login: Controlla la console per i dati.');
};
</script>

<template>
  <div class="login-wrapper">
    <div class="header">
      <a href="#" class="logo-link">
        <svg height="48" viewBox="0 0 16 16" width="48" class="github-logo">
          <path fill-rule="evenodd" d="M8 0C3.58 0 0 3.58 0 8c0 3.54 2.29 6.53 5.47 7.59.4.07.55-.17.55-.38 0-.19-.01-.82-.01-1.49-2.01.37-2.53-.49-2.69-.94-.09-.23-.48-.94-.82-1.13-.28-.15-.68-.52-.01-.53.63-.01 1.08.58 1.23.82.72 1.21 1.87.87 2.33.66.07-.52.28-.87.51-1.07-1.78-.2-3.64-.89-3.64-3.95 0-.87.31-1.59.82-2.15-.08-.2-.36-1.02.08-2.12 0 0 .67-.21 2.2.82.64-.18 1.32-.27 2-.27.68 0 1.36.09 2 .27 1.53-1.04 2.2-.82 2.2-.82.44 1.1.16 1.92.08 2.12.51.56.82 1.27.82 2.15 0 3.07-1.87 3.75-3.65 3.95.29.25.54.73.54 1.48 0 1.07-.01 1.93-.01 2.2 0 .21.15.46.55.38A8.013 8.013 0 0016 8c0-4.42-3.58-8-8-8z"></path>
        </svg>
      </a>
      <h1>Sign in to GitHub</h1>
    </div>

    <div class="auth-form-body">
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
          <a href="#" class="forgot-password">Forgot password?</a>
        </div>
        <input 
          type="password" 
          id="password" 
          v-model="password" 
          class="form-control" 
        />

        <button type="submit" class="btn-primary">
          Sign in
        </button>
      </form>
    </div>

    <p class="create-account-callout">
      New to GitHub? <a href="#">Create an account</a>.
    </p>

    <footer class="site-footer">
      <ul>
        <li><a href="#">Terms</a></li>
        <li><a href="#">Privacy</a></li>
        <li><a href="#">Security</a></li>
        <li><a href="#">Contact GitHub</a></li>
      </ul>
    </footer>
  </div>
</template>

<style scoped>
/* Reset di base e Font ispirato a GitHub */
* {
  box-sizing: border-box;
}

.login-wrapper {
  font-family: -apple-system, BlinkMacSystemFont, "Segoe UI", Helvetica, Arial, sans-serif;
  background-color: #f6f8fa; /* Grigio chiaro tipico dello sfondo */
  min-height: 100vh;
  display: flex;
  flex-direction: column;
  align-items: center;
  padding-top: 32px;
  color: #24292f;
}

/* Stili Header e Logo */
.header {
  text-align: center;
  margin-bottom: 24px;
}

.github-logo {
  fill: #24292f;
  margin-bottom: 24px;
}

h1 {
  font-size: 24px;
  font-weight: 300;
  letter-spacing: -0.5px;
  margin: 0;
}

/* Stile del Box Form principale */
.auth-form-body {
  width: 340px; /* Larghezza standard del form GitHub */
  padding: 20px;
  background-color: #ffffff;
  border: 1px solid #d8dee4;
  border-radius: 6px;
  margin-bottom: 16px;
}

/* Stile Input e Label */
label {
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
  margin-bottom: 16px;
  transition: 80ms cubic-bezier(0.33, 1, 0.68, 1);
  transition-property: color, background-color, box-shadow, border-color;
}

.form-control:focus {
  border-color: #0969da;
  outline: none;
  box-shadow: 0 0 0 3px rgba(9, 105, 218, 0.3);
}

/* Container per gestire Label e Link "Forgot Password" sulla stessa riga */
.position-relative {
  display: flex;
  justify-content: space-between;
}

.forgot-password {
  font-size: 12px;
  color: #0969da;
  text-decoration: none;
}

/* Stile Pulsante */
.btn-primary {
  width: 100%;
  background-color: #2da44e; /* GitHub Green */
  color: #ffffff;
  border: 1px solid rgba(27, 31, 36, 0.15);
  border-radius: 6px;
  padding: 5px 16px;
  font-size: 14px;
  font-weight: 600;
  line-height: 20px;
  cursor: pointer;
  margin-top: 4px;
}

.btn-primary:hover {
  background-color: #2c974b;
}

/* Link e Footer */
.create-account-callout {
  border: 1px solid #d8dee4;
  border-radius: 6px;
  padding: 15px 20px;
  text-align: center;
  font-size: 14px;
  width: 340px;
  margin: 0;
}

a {
  color: #0969da;
  text-decoration: none;
}

a:hover {
  text-decoration: underline;
}

.site-footer {
  margin-top: 40px;
  text-align: center;
  font-size: 12px;
  color: #6e7781;
}

.site-footer ul {
  list-style: none;
  padding: 0;
  display: flex;
  gap: 10px;
  justify-content: center;
}

.site-footer li a {
  color: #0969da;
}
</style>