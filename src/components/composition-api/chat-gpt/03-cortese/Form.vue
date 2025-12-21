<script setup>
import { ref } from 'vue'

const username = ref('')
const password = ref('')

const handleLogin = () => {
  // Simulazione login
  console.log('Username:', username.value)
  console.log('Password:', password.value)
}
</script>

<template>
  <div class="page">
    <div class="login-container">
      <img
        class="logo"
        src="https://github.githubassets.com/images/modules/logos_page/GitHub-Mark.png"
        alt="GitHub Logo"
      />

      <h1>Sign in to GitHub</h1>

      <form class="login-box" @submit.prevent="handleLogin">
        <label for="username">Username or email address</label>
        <input
          id="username"
          type="text"
          v-model="username"
          required
        />

        <div class="password-header">
          <label for="password">Password</label>
          <a href="#">Forgot password?</a>
        </div>

        <input
          id="password"
          type="password"
          v-model="password"
          required
        />

        <button type="submit">Sign in</button>
      </form>

      <p class="footer-text">
        New to GitHub? <a href="#">Create an account</a>
      </p>
    </div>
  </div>
</template>

<style scoped>
/* Reset utile per evitare sbordamenti */
* {
  box-sizing: border-box;
}

.page {
  min-height: 100vh;
  background-color: #0d1117;
  display: flex;
  justify-content: center;
  align-items: center;
  font-family: -apple-system, BlinkMacSystemFont, "Segoe UI", sans-serif;
  color: #c9d1d9;
}

.login-container {
  width: 100%;
  max-width: 340px;
  text-align: center;
  padding: 16px;
}

.logo {
  width: 48px;
  margin-bottom: 16px;
}

h1 {
  font-size: 24px;
  font-weight: 300;
  margin-bottom: 16px;
}

.login-box {
  background-color: #161b22;
  border: 1px solid #30363d;
  border-radius: 6px;
  padding: 16px;
  text-align: left;
}

label {
  font-size: 14px;
  margin-bottom: 6px;
  display: block;
}

.password-header {
  display: flex;
  justify-content: space-between;
  align-items: center;
}

.password-header a {
  font-size: 12px;
}

input {
  width: 100%;
  padding: 8px 10px;
  margin-bottom: 16px;
  border-radius: 6px;
  border: 1px solid #30363d;
  background-color: #0d1117;
  color: #c9d1d9;
}

input:focus {
  outline: none;
  border-color: #58a6ff;
}

button {
  width: 100%;
  padding: 10px;
  background-color: #238636;
  border: none;
  border-radius: 6px;
  color: white;
  font-weight: bold;
  cursor: pointer;
}

button:hover {
  background-color: #2ea043;
}

.footer-text {
  margin-top: 16px;
  font-size: 14px;
}

a {
  color: #58a6ff;
  text-decoration: none;
}

a:hover {
  text-decoration: underline;
}
</style>
