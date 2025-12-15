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
      console.log('Login attempt');
    }
  }
}
</script>

<template>
  <div class="login-container">
    <div class="login-box">
      <h1 class="logo">
        <svg height="48" aria-hidden="true" viewBox="0 0 16 16" version="1.1" width="48">
          <path fill="currentColor" d="M8 0c4.42 0 8 3.58 8 8a8.013 8.013 0 0 1-5.45 7.59c-.4.08-.55-.17-.55-.38 0-.27.01-1.13.01-2.2 0-.75-.25-1.23-.54-1.48 1.78-.2 3.65-.88 3.65-3.95 0-.88-.31-1.59-.82-2.15.08-.2.36-1.02-.08-2.12 0 0-.67-.22-2.2.82-.64-.18-1.32-.27-2-.27-.68 0-1.36.09-2 .27-1.53-1.03-2.2-.82-2.2-.82-.44 1.1-.16 1.92-.08 2.12-.51.56-.82 1.28-.82 2.15 0 3.06 1.86 3.75 3.64 3.95-.23.2-.44.55-.51 1.07-.46.21-1.61.55-2.33-.66-.15-.24-.6-.83-1.23-.82-.67.01-.27.38.01.53.34.19.73.9.82 1.13.16.45.68 1.31 2.69.94 0 .67.01 1.3.01 1.49 0 .21-.15.45-.55.38A7.995 7.995 0 0 1 0 8c0-4.42 3.58-8 8-8Z"></path>
        </svg>
      </h1>

      <h2 class="title">Sign in to GitHub</h2>

      <div class="form-container">
        <div class="form-group">
          <label for="username">Username or email address</label>
          <input 
            type="text" 
            id="username" 
            v-model="username"
            autocomplete="username"
          />
        </div>

        <div class="form-group">
          <div class="password-header">
            <label for="password">Password</label>
            <a href="#" class="forgot-link">Forgot password?</a>
          </div>
          <input 
            type="password" 
            id="password" 
            v-model="password"
            autocomplete="current-password"
          />
        </div>

        <button type="button" class="sign-in-btn" @click="handleSubmit">
          Sign in
        </button>

        <div class="passkey-divider">
          <span>Sign in with a passkey</span>
        </div>
      </div>

      <div class="create-account">
        New to GitHub? <a href="#">Create an account</a>
      </div>
    </div>

    <footer class="footer">
      <a href="#">Terms</a>
      <a href="#">Privacy</a>
      <a href="#">Docs</a>
      <a href="#">Contact GitHub Support</a>
      <a href="#">Manage cookies</a>
      <a href="#">Do not share my personal information</a>
    </footer>
  </div>
</template>

<style scoped>
* {
  box-sizing: border-box;
}

.login-container {
  min-height: 100vh;
  display: flex;
  flex-direction: column;
  align-items: center;
  justify-content: center;
  background-color: #0d1117;
  color: #c9d1d9;
  font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', Helvetica, Arial, sans-serif;
  padding: 20px;
}

.login-box {
  width: 100%;
  max-width: 340px;
  background-color: #161b22;
  border: 1px solid #30363d;
  border-radius: 6px;
  padding: 24px;
  margin-bottom: 16px;
}

.logo {
  text-align: center;
  margin-bottom: 16px;
  color: #f0f6fc;
}

.logo svg {
  display: inline-block;
}

.title {
  font-size: 24px;
  font-weight: 300;
  text-align: center;
  margin: 0 0 16px;
  color: #f0f6fc;
}

.form-container {
  margin-top: 20px;
}

.form-group {
  margin-bottom: 16px;
}

.password-header {
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
  color: #f0f6fc;
}

.forgot-link {
  font-size: 12px;
  color: #58a6ff;
  text-decoration: none;
}

.forgot-link:hover {
  text-decoration: underline;
}

input {
  width: 100%;
  padding: 8px 12px;
  font-size: 14px;
  line-height: 20px;
  color: #f0f6fc;
  background-color: #0d1117;
  border: 1px solid #30363d;
  border-radius: 6px;
  outline: none;
}

input:focus {
  border-color: #58a6ff;
  box-shadow: 0 0 0 3px rgba(88, 166, 255, 0.3);
}

.sign-in-btn {
  width: 100%;
  padding: 8px 16px;
  font-size: 14px;
  font-weight: 500;
  color: #ffffff;
  background-color: #238636;
  border: 1px solid rgba(240, 246, 252, 0.1);
  border-radius: 6px;
  cursor: pointer;
  margin-bottom: 16px;
}

.sign-in-btn:hover {
  background-color: #2ea043;
}

.passkey-divider {
  text-align: center;
  padding: 16px 0;
  border-top: 1px solid #30363d;
  margin-top: 16px;
}

.passkey-divider span {
  font-size: 12px;
  color: #7d8590;
}

.create-account {
  text-align: center;
  padding: 16px;
  font-size: 14px;
  color: #f0f6fc;
  border: 1px solid #30363d;
  border-radius: 6px;
}

.create-account a {
  color: #58a6ff;
  text-decoration: none;
}

.create-account a:hover {
  text-decoration: underline;
}

.footer {
  display: flex;
  flex-wrap: wrap;
  justify-content: center;
  gap: 16px;
  margin-top: 40px;
  font-size: 12px;
}

.footer a {
  color: #58a6ff;
  text-decoration: none;
}

.footer a:hover {
  text-decoration: underline;
}
</style>