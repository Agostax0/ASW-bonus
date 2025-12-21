<script>
export default {
  name: 'GitHubLogin',
  data() {
    return {
      username: '',
      password: ''
    }
  },
  methods: {
    handleSubmit() {
      alert(`Login attempt with username: ${this.username}`);
      // Qui puoi aggiungere la logica di login
    }
  }
}
</script>

<template>
  <div class="container">
    <div class="login-wrapper">
      <!-- GitHub Logo -->
      <div class="logo-container">
        <svg height="48" viewBox="0 0 16 16" width="48" class="github-logo">
          <path d="M8 0c4.42 0 8 3.58 8 8a8.013 8.013 0 0 1-5.45 7.59c-.4.08-.55-.17-.55-.38 0-.27.01-1.13.01-2.2 0-.75-.25-1.23-.54-1.48 1.78-.2 3.65-.88 3.65-3.95 0-.88-.31-1.59-.82-2.15.08-.2.36-1.02-.08-2.12 0 0-.67-.22-2.2.82-.64-.18-1.32-.27-2-.27-.68 0-1.36.09-2 .27-1.53-1.03-2.2-.82-2.2-.82-.44 1.1-.16 1.92-.08 2.12-.51.56-.82 1.28-.82 2.15 0 3.06 1.86 3.75 3.64 3.95-.23.2-.44.55-.51 1.07-.46.21-1.61.55-2.33-.66-.15-.24-.6-.83-1.23-.82-.67.01-.27.38.01.53.34.19.73.9.82 1.13.16.45.68 1.31 2.69.94 0 .67.01 1.3.01 1.49 0 .21-.15.45-.55.38A7.995 7.995 0 0 1 0 8c0-4.42 3.58-8 8-8Z"></path>
        </svg>
      </div>

      <!-- Title -->
      <h1 class="title">Sign in to GitHub</h1>

      <!-- Login Form -->
      <div class="login-box">
        <div class="form-group">
          <label for="username" class="label">Username or email address</label>
          <input
            type="text"
            id="username"
            v-model="username"
            class="input"
          />
        </div>

        <div class="form-group">
          <div class="password-header">
            <label for="password" class="label">Password</label>
            <a href="#" class="forgot-link">Forgot password?</a>
          </div>
          <input
            type="password"
            id="password"
            v-model="password"
            class="input"
          />
        </div>

        <button @click="handleSubmit" class="btn-signin">
          Sign in
        </button>
      </div>

      <!-- Create Account Box -->
      <div class="create-account-box">
        <p class="create-account-text">
          New to GitHub? 
          <a href="#" class="link">Create an account</a>.
        </p>
      </div>

      <!-- Footer Links -->
      <div class="footer-links">
        <a href="#" class="footer-link">Terms</a>
        <a href="#" class="footer-link">Privacy</a>
        <a href="#" class="footer-link">Docs</a>
        <a href="#" class="footer-link">Contact GitHub Support</a>
        <a href="#" class="footer-link">Manage cookies</a>
        <a href="#" class="footer-link">Do not share my personal information</a>
      </div>
    </div>
  </div>
</template>

<style scoped>
.container {
  min-height: 100vh;
  background-color: #0d1117;
  display: flex;
  align-items: center;
  justify-content: center;
  padding: 1rem;
}

.login-wrapper {
  width: 100%;
  max-width: 340px;
}

.logo-container {
  display: flex;
  justify-content: center;
  margin-bottom: 1.5rem;
}

.github-logo {
  fill: white;
}

.title {
  color: white;
  font-size: 1.5rem;
  font-weight: 300;
  text-align: center;
  margin-bottom: 1rem;
}

.login-box {
  background-color: #161b22;
  border: 1px solid #30363d;
  border-radius: 6px;
  padding: 1rem;
}

.form-group {
  margin-bottom: 1rem;
}

.label {
  display: block;
  color: #c9d1d9;
  font-size: 0.875rem;
  margin-bottom: 0.5rem;
}

.password-header {
  display: flex;
  justify-content: space-between;
  align-items: center;
  margin-bottom: 0.5rem;
}

.forgot-link {
  color: #58a6ff;
  font-size: 0.75rem;
  text-decoration: none;
}

.forgot-link:hover {
  text-decoration: underline;
}

.input {
  width: 100%;
  background-color: #0d1117;
  border: 1px solid #30363d;
  border-radius: 6px;
  padding: 0.5rem 0.75rem;
  color: #c9d1d9;
  font-size: 0.875rem;
  box-sizing: border-box;
}

.input:focus {
  outline: none;
  border-color: #388bfd;
  box-shadow: 0 0 0 1px #388bfd;
}

.btn-signin {
  width: 100%;
  background-color: #238636;
  color: white;
  font-weight: 500;
  padding: 0.5rem 1rem;
  border-radius: 6px;
  font-size: 0.875rem;
  border: none;
  cursor: pointer;
  transition: background-color 0.15s ease;
}

.btn-signin:hover {
  background-color: #2ea043;
}

.create-account-box {
  border: 1px solid #30363d;
  border-radius: 6px;
  padding: 1rem;
  margin-top: 1rem;
  text-align: center;
}

.create-account-text {
  color: #c9d1d9;
  font-size: 0.875rem;
  margin: 0;
}

.link {
  color: #58a6ff;
  text-decoration: none;
}

.link:hover {
  text-decoration: underline;
}

.footer-links {
  margin-top: 2rem;
  display: flex;
  flex-wrap: wrap;
  justify-content: center;
  gap: 1rem;
  font-size: 0.75rem;
}

.footer-link {
  color: #58a6ff;
  text-decoration: none;
}

.footer-link:hover {
  text-decoration: underline;
}
</style>