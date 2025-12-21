<script>
export default {
  name: 'GithubLogin',
  // Utilizzo delle Options API come richiesto
  data() {
    return {
      login: '',
      password: ''
    };
  },
  methods: {
    handleSubmit() {
      console.log("Tentativo di login con:", this.login);
      // Logica di autenticazione non richiesta
    }
  }
}
</script>

<template>
  <div class="auth-wrapper">
    <header class="auth-header">
      <svg height="48" viewBox="0 0 16 16" version="1.1" width="48" aria-hidden="true" fill="#f0f6fc">
        <path d="M8 0c4.42 0 8 3.58 8 8a8.013 8.013 0 0 1-5.45 7.59c-.4.08-.55-.17-.55-.38 0-.27.01-1.13.01-2.2 0-.75-.25-1.23-.54-1.48 1.78-.2 3.65-.88 3.65-3.95 0-.88-.31-1.59-.82-2.15.08-.2.36-1.02-.08-2.12 0 0-.67-.22-2.2.82-.64-.18-1.32-.27-2-.27-.68 0-1.36.09-2 .27-1.53-1.03-2.2-.82-2.2-.82-.44 1.1-.16 1.92-.08 2.12-.51.56-.82 1.28-.82 2.15 0 3.06 1.86 3.75 3.64 3.95-.23.2-.44.55-.51 1.07-.46.21-1.61.55-2.33-.66-.15-.24-.6-.83-1.23-.82-.67.01-.27.38.01.53.34.19.73.9.82 1.13.16.45.68 1.31 2.69.94 0 .67.01 1.3.01 1.49 0 .21-.15.45-.55.38A7.995 7.995 0 0 1 0 8c0-4.42 3.58-8 8-8Z"></path>
      </svg>
      <h1>Sign in to GitHub</h1>
    </header>

    <main class="auth-form">
      <form @submit.prevent="handleSubmit">
        <div class="form-body">
          <label for="login_field">Username or email address</label>
          <input 
            type="text" 
            id="login_field" 
            v-model="login" 
            autocapitalize="off" 
            autocorrect="off" 
            autofocus="autofocus"
          />

          <div class="label-with-link">
            <label for="password">Password</label>
            <a href="#" class="forgot-password">Forgot password?</a>
          </div>
          <input 
            type="password" 
            id="password" 
            v-model="password" 
            autocomplete="current-password"
          />

          <button type="submit" class="btn-primary">Sign in</button>
        </div>
      </form>

      <p class="create-account-callout">
        New to GitHub? <a href="#">Create an account</a>.
      </p>
    </main>

    <footer class="auth-footer">
      <ul>
        <li><a href="#">Terms</a></li>
        <li><a href="#">Privacy</a></li>
        <li><a href="#">Docs</a></li>
        <li><a href="#">Contact GitHub Support</a></li>
      </ul>
    </footer>
  </div>
</template>

<style scoped>
/* Reset e stili base per il tema scuro */
.auth-wrapper {
  background-color: #0d1117;
  color: #f0f6fc;
  font-family: -apple-system, BlinkMacSystemFont, "Segoe UI", Helvetica, Arial, sans-serif;
  min-height: 100vh;
  display: flex;
  flex-direction: column;
  align-items: center;
  padding-top: 32px;
}

.auth-header {
  text-align: center;
  margin-bottom: 24px;
}

.auth-header h1 {
  font-size: 24px;
  font-weight: 300;
  letter-spacing: -0.5px;
  margin-top: 24px;
}

.auth-form {
  width: 308px;
}

.form-body {
  background-color: #161b22;
  border: 1px solid #30363d;
  border-radius: 6px;
  padding: 20px;
  margin-bottom: 15px;
}

label {
  display: block;
  margin-bottom: 8px;
  font-size: 14px;
  text-align: left;
}

.label-with-link {
  display: flex;
  justify-content: space-between;
  align-items: center;
}

.forgot-password {
  font-size: 12px;
  color: #58a6ff;
  text-decoration: none;
}

input[type="text"],
input[type="password"] {
  width: 100%;
  padding: 5px 12px;
  margin-bottom: 15px;
  background-color: #0d1117;
  border: 1px solid #30363d;
  border-radius: 6px;
  color: #f0f6fc;
  font-size: 14px;
  box-sizing: border-box; /* Mantiene l'input dentro i bordi */
}

input:focus {
  border-color: #1f6feb;
  outline: none;
  box-shadow: 0 0 0 3px rgba(31, 111, 235, 0.3);
}

.btn-primary {
  width: 100%;
  padding: 5px 16px;
  font-size: 14px;
  font-weight: 500;
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

.create-account-callout {
  padding: 15px 20px;
  text-align: center;
  border: 1px solid #30363d;
  border-radius: 6px;
  font-size: 14px;
}

.create-account-callout a {
  color: #58a6ff;
  text-decoration: none;
}

.auth-footer {
  margin-top: 40px;
  padding-bottom: 40px;
  font-size: 12px;
}

.auth-footer ul {
  list-style: none;
  display: flex;
  gap: 16px;
  padding: 0;
}

.auth-footer a {
  color: #8b949e;
  text-decoration: none;
}

.auth-footer a:hover {
  color: #58a6ff;
  text-decoration: underline;
}
</style>