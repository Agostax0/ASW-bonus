<script setup>
import { ref } from 'vue'

const username = ref('')
const password = ref('')
const rememberMe = ref(false)

const handleSubmit = () => {
  console.log('Login attempt:', { username: username.value, password: password.value })
}
</script>

<template>
  <div class="login-container">
    <div class="login-box">
      <!-- GitHub Logo -->
      <div class="logo">
        <svg height="48" viewBox="0 0 16 16" width="48" fill="currentColor">
          <path d="M8 0C3.58 0 0 3.58 0 8c0 3.54 2.29 6.53 5.47 7.59.4.07.55-.17.55-.38 0-.19-.01-.82-.01-1.49-2.01.37-2.53-.49-2.69-.94-.09-.23-.48-.94-.82-1.13-.28-.15-.68-.52-.01-.53.63-.01 1.08.58 1.23.82.72 1.21 1.87.87 2.33.66.07-.52.28-.87.51-1.07-1.78-.2-3.64-.89-3.64-3.95 0-.87.31-1.59.82-2.15-.08-.2-.36-1.02.08-2.12 0 0 .67-.21 2.2.82.64-.18 1.32-.27 2-.27.68 0 1.36.09 2 .27 1.53-1.04 2.2-.82 2.2-.82.44 1.1.16 1.92.08 2.12.51.56.82 1.27.82 2.15 0 3.07-1.87 3.75-3.65 3.95.29.25.54.73.54 1.48 0 1.07-.01 1.93-.01 2.2 0 .21.15.46.55.38A8.013 8.013 0 0016 8c0-4.42-3.58-8-8-8z"/>
        </svg>
      </div>

      <!-- Title -->
      <h1 class="title">Sign in to GitHub</h1>

      <!-- Login Form -->
      <form @submit.prevent="handleSubmit" class="login-form">
        <div class="form-group">
          <label for="username" class="form-label">
            Username or email address
          </label>
          <input
            id="username"
            v-model="username"
            type="text"
            class="form-input"
            autocomplete="username"
          />
        </div>

        <div class="form-group">
          <div class="password-header">
            <label for="password" class="form-label">
              Password
            </label>
            <a href="#" class="forgot-password">Forgot password?</a>
          </div>
          <input
            id="password"
            v-model="password"
            type="password"
            class="form-input"
            autocomplete="current-password"
          />
        </div>

        <button type="submit" class="sign-in-button">
          Sign in
        </button>
      </form>

      <!-- Divider -->
      <div class="divider">
        <span class="divider-text">or</span>
      </div>

      <!-- Alternative Sign In Options -->
      <button class="passkey-button">
        <svg width="16" height="16" viewBox="0 0 16 16" fill="currentColor">
          <path d="M8.5 4.5a.5.5 0 0 0-1 0v3h-3a.5.5 0 0 0 0 1h3v3a.5.5 0 0 0 1 0v-3h3a.5.5 0 0 0 0-1h-3v-3Z"/>
        </svg>
        Sign in with a passkey
      </button>

      <!-- Sign Up Link -->
      <div class="signup-box">
        New to GitHub? <a href="#" class="signup-link">Create an account</a>.
      </div>

      <!-- Footer Links -->
      <div class="footer-links">
        <a href="#">Terms</a>
        <a href="#">Privacy</a>
        <a href="#">Docs</a>
        <a href="#">Contact GitHub Support</a>
        <a href="#">Manage cookies</a>
        <a href="#">Do not share my personal information</a>
      </div>
    </div>
  </div>
</template>

<style scoped>
* {
  margin: 0;
  padding: 0;
  box-sizing: border-box;
}

.login-container {
  min-height: 100vh;
  display: flex;
  align-items: center;
  justify-content: center;
  background-color: #0d1117;
  font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', 'Noto Sans', Helvetica, Arial, sans-serif;
  padding: 20px;
}

.login-box {
  width: 100%;
  max-width: 340px;
  background-color: #161b22;
  border: 1px solid #30363d;
  border-radius: 6px;
  padding: 32px;
}

.logo {
  display: flex;
  justify-content: center;
  margin-bottom: 16px;
  color: #f0f6fc;
}

.title {
  font-size: 24px;
  font-weight: 300;
  text-align: center;
  color: #f0f6fc;
  margin-bottom: 16px;
  letter-spacing: -0.5px;
}

.login-form {
  display: flex;
  flex-direction: column;
  gap: 16px;
}

.form-group {
  display: flex;
  flex-direction: column;
  gap: 8px;
}

.password-header {
  display: flex;
  justify-content: space-between;
  align-items: center;
}

.form-label {
  font-size: 14px;
  font-weight: 400;
  color: #f0f6fc;
}

.forgot-password {
  font-size: 12px;
  color: #58a6ff;
  text-decoration: none;
}

.forgot-password:hover {
  text-decoration: underline;
}

.form-input {
  width: 100%;
  padding: 5px 12px;
  font-size: 14px;
  line-height: 20px;
  color: #f0f6fc;
  background-color: #0d1117;
  border: 1px solid #30363d;
  border-radius: 6px;
  outline: none;
  transition: border-color 0.2s;
}

.form-input:focus {
  border-color: #58a6ff;
  box-shadow: 0 0 0 3px rgba(88, 166, 255, 0.3);
}

.sign-in-button {
  width: 100%;
  padding: 5px 16px;
  font-size: 14px;
  font-weight: 500;
  line-height: 20px;
  color: #ffffff;
  background-color: #238636;
  border: 1px solid rgba(240, 246, 252, 0.1);
  border-radius: 6px;
  cursor: pointer;
  transition: background-color 0.2s;
  margin-top: 8px;
}

.sign-in-button:hover {
  background-color: #2ea043;
}

.divider {
  position: relative;
  margin: 24px 0;
  text-align: center;
}

.divider::before {
  content: '';
  position: absolute;
  top: 50%;
  left: 0;
  right: 0;
  height: 1px;
  background-color: #30363d;
}

.divider-text {
  position: relative;
  display: inline-block;
  padding: 0 8px;
  font-size: 12px;
  color: #7d8590;
  background-color: #161b22;
}

.passkey-button {
  width: 100%;
  padding: 5px 16px;
  font-size: 14px;
  font-weight: 500;
  line-height: 20px;
  color: #f0f6fc;
  background-color: transparent;
  border: 1px solid #30363d;
  border-radius: 6px;
  cursor: pointer;
  transition: background-color 0.2s;
  display: flex;
  align-items: center;
  justify-content: center;
  gap: 8px;
}

.passkey-button:hover {
  background-color: #30363d;
}

.signup-box {
  margin-top: 24px;
  padding: 16px;
  text-align: center;
  font-size: 14px;
  color: #f0f6fc;
  border: 1px solid #30363d;
  border-radius: 6px;
}

.signup-link {
  color: #58a6ff;
  text-decoration: none;
}

.signup-link:hover {
  text-decoration: underline;
}

.footer-links {
  display: flex;
  flex-wrap: wrap;
  justify-content: center;
  gap: 16px;
  margin-top: 16px;
  padding-top: 16px;
}

.footer-links a {
  font-size: 12px;
  color: #58a6ff;
  text-decoration: none;
}

.footer-links a:hover {
  text-decoration: underline;
}
</style>