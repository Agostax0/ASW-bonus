<script setup>
import { ref } from 'vue';

const username = ref('');
const password = ref('');
const showPassword = ref(false);

const handleSubmit = (e) => {
  e.preventDefault();
  console.log('Login attempt:', { username: username.value, password: password.value });
  alert(`Login simulato per: ${username.value}`);
};

const togglePassword = () => {
  showPassword.value = !showPassword.value;
};
</script>

<template>
  <div class="login-container">
    <div class="login-box">
      <!-- Logo GitHub -->
      <div class="logo">
        <svg height="48" viewBox="0 0 16 16" version="1.1" width="48" aria-hidden="true">
          <path fill="currentColor" d="M8 0C3.58 0 0 3.58 0 8c0 3.54 2.29 6.53 5.47 7.59.4.07.55-.17.55-.38 0-.19-.01-.82-.01-1.49-2.01.37-2.53-.49-2.69-.94-.09-.23-.48-.94-.82-1.13-.28-.15-.68-.52-.01-.53.63-.01 1.08.58 1.23.82.72 1.21 1.87.87 2.33.66.07-.52.28-.87.51-1.07-1.78-.2-3.64-.89-3.64-3.95 0-.87.31-1.59.82-2.15-.08-.2-.36-1.02.08-2.12 0 0 .67-.21 2.2.82.64-.18 1.32-.27 2-.27.68 0 1.36.09 2 .27 1.53-1.04 2.2-.82 2.2-.82.44 1.1.16 1.92.08 2.12.51.56.82 1.27.82 2.15 0 3.07-1.87 3.75-3.65 3.95.29.25.54.73.54 1.48 0 1.07-.01 1.93-.01 2.2 0 .21.15.46.55.38A8.013 8.013 0 0016 8c0-4.42-3.58-8-8-8z"></path>
        </svg>
      </div>

      <!-- Titolo -->
      <h1 class="title">Sign in to GitHub</h1>

      <!-- Form -->
      <form @submit="handleSubmit" class="login-form">
        <div class="form-group">
          <label for="username" class="label">
            Username or email address
          </label>
          <input
            id="username"
            v-model="username"
            type="text"
            class="input"
            autocomplete="username"
            required
          />
        </div>

        <div class="form-group">
          <div class="password-header">
            <label for="password" class="label">Password</label>
            <a href="#" class="forgot-link">Forgot password?</a>
          </div>
          <div class="password-container">
            <input
              id="password"
              v-model="password"
              :type="showPassword ? 'text' : 'password'"
              class="input password-input"
              autocomplete="current-password"
              required
            />
            <button
              type="button"
              @click="togglePassword"
              class="password-toggle"
              :aria-label="showPassword ? 'Hide password' : 'Show password'"
            >
              <svg v-if="!showPassword" width="16" height="16" viewBox="0 0 16 16" fill="currentColor">
                <path d="M8 2c1.981 0 3.671.992 4.933 2.078 1.27 1.091 2.187 2.345 2.637 3.023a1.62 1.62 0 010 1.798c-.45.678-1.367 1.932-2.637 3.023C11.67 13.008 9.981 14 8 14c-1.981 0-3.671-.992-4.933-2.078C1.797 10.83.88 9.576.43 8.898a1.62 1.62 0 010-1.798c.45-.677 1.367-1.931 2.637-3.022C4.33 2.992 6.019 2 8 2zM1.679 7.932a.12.12 0 000 .136c.411.622 1.241 1.75 2.366 2.717C5.176 11.758 6.527 12.5 8 12.5c1.473 0 2.825-.742 3.955-1.715 1.124-.967 1.954-2.096 2.366-2.717a.12.12 0 000-.136c-.412-.621-1.242-1.75-2.366-2.717C10.824 4.242 9.473 3.5 8 3.5c-1.473 0-2.825.742-3.955 1.715-1.124.967-1.954 2.096-2.366 2.717zM8 10a2 2 0 100-4 2 2 0 000 4z"></path>
              </svg>
              <svg v-else width="16" height="16" viewBox="0 0 16 16" fill="currentColor">
                <path d="M.143 2.31a.75.75 0 011.047-.167l14.5 10.5a.75.75 0 11-.88 1.214l-2.248-1.628C11.346 13.19 9.792 14 8 14c-1.981 0-3.671-.992-4.933-2.078C1.797 10.83.88 9.576.43 8.898a1.618 1.618 0 010-1.798c.174-.267.406-.565.689-.888L.31 5.357a.75.75 0 01-.167-1.047zm3.386 3.378a14.21 14.21 0 00-.673.757.12.12 0 000 .136c.411.622 1.241 1.75 2.366 2.717C6.176 11.758 7.527 12.5 8 12.5c1.146 0 2.166-.44 3.031-1.055l-1.254-.908A2.002 2.002 0 015.78 7.656l-2.251-1.628-.001-.34zm9.417 6.812l-1.902-1.376C12.042 10.328 13.117 9.197 13.57 8.5a.12.12 0 000-.136c-.412-.621-1.242-1.75-2.366-2.717C10.073 4.674 8.722 3.932 7.25 3.932L5.311 2.489C6.144 2.182 7.037 2 8 2c1.981 0 3.671.992 4.933 2.078 1.27 1.091 2.187 2.345 2.637 3.023a1.619 1.619 0 010 1.798c-.45.678-1.367 1.932-2.637 3.023-.428.369-.88.716-1.353 1.041z"></path>
              </svg>
            </button>
          </div>
        </div>

        <button type="submit" class="btn-submit">
          Sign in
        </button>
      </form>

      <!-- Footer -->
      <div class="box-footer">
        <p class="signup-text">
          New to GitHub?
          <a href="#" class="signup-link">Create an account</a>.
        </p>
      </div>
    </div>

    <!-- Terms -->
    <div class="terms">
      <a href="#">Terms</a>
      <a href="#">Privacy</a>
      <a href="#">Docs</a>
      <a href="#">Contact GitHub Support</a>
      <a href="#">Manage cookies</a>
      <a href="#">Do not share my personal information</a>
    </div>
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
  font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', 'Noto Sans', Helvetica, Arial, sans-serif;
  padding: 20px;
}

.login-box {
  width: 100%;
  max-width: 340px;
  background-color: #161b22;
  border: 1px solid #30363d;
  border-radius: 6px;
  padding: 20px;
  margin-bottom: 16px;
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
  letter-spacing: -0.5px;
  text-align: center;
  margin: 0 0 16px 0;
  color: #f0f6fc;
}

.login-form {
  margin-top: 16px;
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

.label {
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

.input {
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

.input:focus {
  border-color: #58a6ff;
  box-shadow: 0 0 0 3px rgba(88, 166, 255, 0.3);
}

.password-container {
  position: relative;
  display: flex;
  align-items: center;
}

.password-input {
  padding-right: 40px;
}

.password-toggle {
  position: absolute;
  right: 8px;
  background: none;
  border: none;
  color: #8b949e;
  cursor: pointer;
  padding: 4px;
  display: flex;
  align-items: center;
  justify-content: center;
  border-radius: 4px;
  transition: background-color 0.2s;
}

.password-toggle:hover {
  background-color: #30363d;
}

.btn-submit {
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
  margin-top: 16px;
}

.btn-submit:hover {
  background-color: #2ea043;
}

.btn-submit:active {
  background-color: #298039;
}

.box-footer {
  margin-top: 16px;
  padding: 16px;
  border: 1px solid #30363d;
  border-radius: 6px;
  text-align: center;
}

.signup-text {
  font-size: 14px;
  margin: 0;
  color: #c9d1d9;
}

.signup-link {
  color: #58a6ff;
  text-decoration: none;
}

.signup-link:hover {
  text-decoration: underline;
}

.terms {
  display: flex;
  flex-wrap: wrap;
  justify-content: center;
  gap: 16px;
  font-size: 12px;
  color: #58a6ff;
  max-width: 340px;
}

.terms a {
  color: #58a6ff;
  text-decoration: none;
}

.terms a:hover {
  text-decoration: underline;
}
</style>