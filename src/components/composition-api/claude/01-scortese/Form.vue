<script setup>
import { ref } from 'vue';

const username = ref('');
const password = ref('');
const errorMessage = ref('');

const handleSubmit = () => {
  errorMessage.value = '';
  
  if (!username.value || !password.value) {
    errorMessage.value = 'Incorrect username or password.';
    return;
  }
  
  console.log('Login attempt:', { username: username.value, password: password.value });
  errorMessage.value = 'Login functionality not implemented in demo';
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
          <label for="username">Username or email address</label>
          <input 
            type="text" 
            id="username" 
            v-model="username"
            autocomplete="username"
            :class="{ 'error-input': errorMessage }"
          />
        </div>
        
        <div class="form-group">
          <div class="password-label">
            <label for="password">Password</label>
            <a href="#" class="forgot-password">Forgot password?</a>
          </div>
          <input 
            type="password" 
            id="password" 
            v-model="password"
            autocomplete="current-password"
            :class="{ 'error-input': errorMessage }"
          />
        </div>
        
        <div v-if="errorMessage" class="error-message">
          {{ errorMessage }}
        </div>
        
        <button type="submit" class="sign-in-button">Sign in</button>
      </form>
      
      <div class="create-account">
        <p>New to GitHub? <a href="#">Create an account</a></p>
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
  font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', 'Noto Sans', Helvetica, Arial, sans-serif;
  padding: 20px;
}

.login-box {
  background-color: #161b22;
  border: 1px solid #30363d;
  border-radius: 6px;
  padding: 32px;
  width: 100%;
  max-width: 340px;
  margin-bottom: 16px;
}

.github-logo {
  display: block;
  margin: 0 auto 24px;
  color: #c9d1d9;
}

.title {
  font-size: 24px;
  font-weight: 300;
  text-align: center;
  margin: 0 0 16px;
  color: #c9d1d9;
}

.login-form {
  margin-top: 20px;
}

.form-group {
  margin-bottom: 16px;
}

.password-label {
  display: flex;
  justify-content: space-between;
  align-items: baseline;
  margin-bottom: 8px;
}

label {
  display: block;
  font-size: 14px;
  font-weight: 400;
  margin-bottom: 8px;
  color: #c9d1d9;
}

input[type="text"],
input[type="password"] {
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

input[type="text"]:focus,
input[type="password"]:focus {
  border-color: #58a6ff;
  box-shadow: 0 0 0 3px rgba(88, 166, 255, 0.3);
}

input.error-input {
  border-color: #f85149;
}

.forgot-password {
  font-size: 12px;
  color: #58a6ff;
  text-decoration: none;
}

.forgot-password:hover {
  text-decoration: underline;
}

.error-message {
  padding: 8px 12px;
  margin-bottom: 16px;
  font-size: 13px;
  color: #f85149;
  background-color: rgba(248, 81, 73, 0.1);
  border: 1px solid rgba(248, 81, 73, 0.4);
  border-radius: 6px;
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
}

.sign-in-button:hover {
  background-color: #2ea043;
}

.sign-in-button:active {
  background-color: #238636;
  box-shadow: inset 0 1px 0 rgba(0, 0, 0, 0.15);
}

.create-account {
  margin-top: 16px;
  padding: 16px;
  text-align: center;
  border: 1px solid #30363d;
  border-radius: 6px;
  font-size: 14px;
}

.create-account p {
  margin: 0;
  color: #c9d1d9;
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
  font-size: 12px;
  margin-top: 40px;
}

.footer a {
  color: #58a6ff;
  text-decoration: none;
}

.footer a:hover {
  text-decoration: underline;
}
</style>