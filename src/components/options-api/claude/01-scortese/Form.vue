<script setup>
import { ref } from 'vue';

const username = ref('');
const password = ref('');
const showPassword = ref(false);
const rememberMe = ref(false);

const handleSubmit = () => {
  console.log('Login attempt:', { username: username.value, password: password.value });
};

const togglePasswordVisibility = () => {
  showPassword.value = !showPassword.value;
};
</script>

<template>
  <div class="login-container">
    <div class="login-box">
      <svg height="48" aria-hidden="true" viewBox="0 0 16 16" version="1.1" width="48" class="github-logo">
        <path fill="currentColor" d="M8 0c4.42 0 8 3.58 8 8a8.013 8.013 0 0 1-5.45 7.59c-.4.08-.55-.17-.55-.38 0-.27.01-1.13.01-2.2 0-.75-.25-1.23-.54-1.48 1.78-.2 3.65-.88 3.65-3.95 0-.88-.31-1.59-.82-2.15.08-.2.36-1.02-.08-2.12 0 0-.67-.22-2.2.82-.64-.18-1.32-.27-2-.27-.68 0-1.36.09-2 .27-1.53-1.03-2.2-.82-2.2-.82-.44 1.1-.16 1.92-.08 2.12-.51.56-.82 1.28-.82 2.15 0 3.06 1.86 3.75 3.64 3.95-.23.2-.44.55-.51 1.07-.46.21-1.61.55-2.33-.66-.15-.24-.6-.83-1.23-.82-.67.01-.27.38.01.53.34.19.73.9.82 1.13.16.45.68 1.31 2.69.94 0 .67.01 1.3.01 1.49 0 .21-.15.45-.55.38A7.995 7.995 0 0 1 0 8c0-4.42 3.58-8 8-8Z"></path>
      </svg>
      
      <h1 class="title">Sign in to GitHub</h1>
      
      <form @submit.prevent="handleSubmit" class="login-form">
        <div class="form-group">
          <label for="username" class="form-label">Username or email address</label>
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
            <label for="password" class="form-label">Password</label>
            <a href="#" class="forgot-password">Forgot password?</a>
          </div>
          <div class="password-wrapper">
            <input 
              id="password"
              v-model="password"
              :type="showPassword ? 'text' : 'password'" 
              class="form-input"
              autocomplete="current-password"
            />
            <button 
              type="button" 
              @click="togglePasswordVisibility"
              class="toggle-password"
              :aria-label="showPassword ? 'Hide password' : 'Show password'"
            >
              {{ showPassword ? 'Hide' : 'Show' }}
            </button>
          </div>
        </div>
        
        <button type="submit" class="sign-in-button">Sign in</button>
        
        <div class="checkbox-group">
          <input 
            id="remember"
            v-model="rememberMe"
            type="checkbox" 
            class="checkbox"
          />
          <label for="remember" class="checkbox-label">Remember me</label>
        </div>
      </form>
      
      <div class="create-account">
        <p class="new-text">New to GitHub? <a href="#" class="create-link">Create an account</a>.</p>
      </div>
    </div>
    
    <footer class="footer">
      <a href="#" class="footer-link">Terms</a>
      <a href="#" class="footer-link">Privacy</a>
      <a href="#" class="footer-link">Docs</a>
      <a href="#" class="footer-link">Contact GitHub Support</a>
      <a href="#" class="footer-link">Manage cookies</a>
      <a href="#" class="footer-link">Do not share my personal information</a>
    </footer>
  </div>
</template>

<style scoped>
* {
  box-sizing: border-box;
  margin: 0;
  padding: 0;
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

.github-logo {
  display: block;
  margin: 0 auto 16px;
  color: #c9d1d9;
}

.title {
  font-size: 24px;
  font-weight: 300;
  text-align: center;
  margin-bottom: 16px;
  color: #c9d1d9;
}

.login-form {
  width: 100%;
}

.form-group {
  margin-bottom: 16px;
}

.form-label {
  display: block;
  font-size: 14px;
  font-weight: 400;
  margin-bottom: 8px;
  color: #c9d1d9;
}

.password-header {
  display: flex;
  justify-content: space-between;
  align-items: center;
  margin-bottom: 8px;
}

.forgot-password {
  font-size: 12px;
  color: #58a6ff;
  text-decoration: none;
}

.forgot-password:hover {
  text-decoration: underline;
}

.password-wrapper {
  position: relative;
  display: flex;
  align-items: center;
}

.form-input {
  width: 100%;
  padding: 5px 12px;
  font-size: 14px;
  line-height: 20px;
  color: #c9d1d9;
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

.password-wrapper .form-input {
  padding-right: 60px;
}

.toggle-password {
  position: absolute;
  right: 8px;
  background: none;
  border: none;
  color: #58a6ff;
  font-size: 12px;
  cursor: pointer;
  padding: 4px 8px;
}

.toggle-password:hover {
  text-decoration: underline;
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
  margin-bottom: 16px;
  transition: background-color 0.2s;
}

.sign-in-button:hover {
  background-color: #2ea043;
}

.checkbox-group {
  display: flex;
  align-items: center;
}

.checkbox {
  width: 16px;
  height: 16px;
  margin-right: 8px;
  cursor: pointer;
  accent-color: #238636;
}

.checkbox-label {
  font-size: 14px;
  color: #c9d1d9;
  cursor: pointer;
}

.create-account {
  width: 100%;
  max-width: 340px;
  padding: 16px;
  border: 1px solid #30363d;
  border-radius: 6px;
  text-align: center;
}

.new-text {
  font-size: 14px;
  color: #c9d1d9;
}

.create-link {
  color: #58a6ff;
  text-decoration: none;
}

.create-link:hover {
  text-decoration: underline;
}

.footer {
  display: flex;
  flex-wrap: wrap;
  justify-content: center;
  gap: 16px;
  margin-top: 40px;
  padding: 0 20px;
}

.footer-link {
  font-size: 12px;
  color: #58a6ff;
  text-decoration: none;
}

.footer-link:hover {
  text-decoration: underline;
}

@media (max-width: 400px) {
  .login-box, .create-account {
    max-width: 100%;
  }
  
  .footer {
    flex-direction: column;
    align-items: center;
    gap: 8px;
  }
}
</style>