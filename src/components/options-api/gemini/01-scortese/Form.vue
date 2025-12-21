<script>
// Utilizzo le Options API come richiesto, nonostante lo snippet suggerisse setup.
// Per far funzionare le Options API correttamente, usiamo l'export default.
export default {
  data() {
    return {
      login: '',
      password: ''
    };
  },
  methods: {
    handleLogin() {
      if (this.login && this.password) {
        alert('Tentativo di accesso per: ' + this.login);
      } else {
        alert('Compila tutti i campi, per favore.');
      }
    }
  }
}
</script>

<template>
  <div class="github-login-page">
    <div class="login-wrapper">
      <header class="header">
        <svg height="48" aria-hidden="true" viewBox="0 0 16 16" version="1.1" width="48" data-view-component="true" fill="#f0f6fc">
          <path d="M8 0c4.42 0 8 3.58 8 8a8.013 8.013 0 0 1-5.45 7.59c-.4.08-.55-.17-.55-.38 0-.27.01-1.13.01-2.2 0-.75-.25-1.23-.54-1.48 1.78-.2 3.65-.88 3.65-3.95 0-.88-.31-1.59-.82-2.15.08-.2.36-1.02-.08-2.12 0 0-.67-.22-2.2.82-.64-.18-1.32-.27-2-.27-.68 0-1.36.09-2 .27-1.53-1.03-2.2-.82-2.2-.82-.44 1.1-.16 1.92-.08 2.12-.51.56-.82 1.28-.82 2.15 0 3.06 1.86 3.75 3.64 3.95-.23.2-.44.55-.51 1.07-.46.21-1.61.55-2.33-.66-.15-.24-.6-.83-1.23-.82-.67.01-.27.38.01.53.34.19.73.9.82 1.13.16.45.68 1.31 2.69.94 0 .67.01 1.3.01 1.49 0 .21-.15.45-.55.38A7.995 7.995 0 0 1 0 8c0-4.42 3.58-8 8-8Z"></path>
        </svg>
        <h1>Sign in to GitHub</h1>
      </header>

      <main class="login-box">
        <form @submit.prevent="handleLogin">
          <div class="form-group">
            <label for="login_field">Username or email address</label>
            <input 
              type="text" 
              id="login_field" 
              v-model="login" 
              autofocus="autofocus"
              autocomplete="username"
            />
          </div>

          <div class="form-group">
            <div class="label-wrapper">
              <label for="password">Password</label>
              <a href="#" class="forgot-password">Forgot password?</a>
            </div>
            <input 
              type="password" 
              id="password" 
              v-model="password" 
              autocomplete="current-password"
            />
          </div>

          <button type="submit" class="btn-primary">Sign in</button>
        </form>
      </main>

      <footer class="create-account">
        <p>New to GitHub? <a href="#">Create an account</a>.</p>
      </footer>
    </div>
  </div>
</template>

<style scoped>
/* Reset e Container principale */
.github-login-page {
  background-color: #0d1117;
  color: #f0f6fc;
  font-family: -apple-system, BlinkMacSystemFont, "Segoe UI", Helvetica, Arial, sans-serif;
  min-height: 100vh;
  display: flex;
  justify-content: center;
  padding-top: 40px;
  box-sizing: border-box;
}

.login-wrapper {
  width: 100%;
  max-width: 340px;
  margin: 0 auto;
}

/* Header */
.header {
  text-align: center;
  margin-bottom: 24px;
}

.header h1 {
  font-size: 24px;
  font-weight: 300;
  letter-spacing: -0.5px;
  margin-top: 24px;
}

/* Box di Login */
.login-box {
  background-color: #161b22;
  border: 1px solid #30363d;
  border-radius: 6px;
  padding: 20px;
  margin-bottom: 15px;
}

.form-group {
  margin-bottom: 15px;
}

.form-group label {
  display: block;
  margin-bottom: 8px;
  font-weight: 400;
  text-align: left;
  font-size: 14px;
}

.label-wrapper {
  display: flex;
  justify-content: space-between;
  align-items: center;
}

.forgot-password {
  font-size: 12px;
  color: #2f81f7;
  text-decoration: none;
}

.form-group input {
  width: 100%;
  padding: 5px 12px;
  font-size: 14px;
  line-height: 20px;
  color: #f0f6fc;
  background-color: #0d1117;
  border: 1px solid #30363d;
  border-radius: 6px;
  outline: none;
  box-sizing: border-box;
}

.form-group input:focus {
  border-color: #1f6feb;
  box-shadow: 0 0 0 3px rgba(31, 111, 235, 0.3);
}

/* Pulsante */
.btn-primary {
  width: 100%;
  padding: 5px 16px;
  font-size: 14px;
  font-weight: 600;
  line-height: 20px;
  color: #ffffff;
  background-color: #238636;
  border: 1px solid rgba(240, 246, 252, 0.1);
  border-radius: 6px;
  cursor: pointer;
  transition: background-color 0.2s;
}

.btn-primary:hover {
  background-color: #2ea043;
}

/* Footer */
.create-account {
  border: 1px solid #30363d;
  border-radius: 6px;
  padding: 15px;
  text-align: center;
  font-size: 14px;
}

.create-account p {
  margin: 0;
}

.create-account a {
  color: #2f81f7;
  text-decoration: none;
}
</style>