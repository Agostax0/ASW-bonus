<script setup>
import { ref } from 'vue'

const username = ref('')
const password = ref('')
const error = ref('')

const handleLogin = () => {
  if (!username.value || !password.value) {
    error.value = 'Username and password cannot be empty.'
    return
  }

  error.value = ''
  // Qui aggiungerai la logica reale di login (API ecc.)
  alert(`Tentativo di login:\nUsername: ${username.value}\nPassword: ${password.value}`)
}
</script>

<template>
  <div class="container">
    <img 
      class="github-logo" 
      src="https://github.githubassets.com/images/modules/logos_page/GitHub-Mark.png" 
      alt="GitHub Logo"
    />

    <h1 class="title">Sign in to GitHub</h1>

    <div class="login-box">
      <form @submit.prevent="handleLogin">
        <label class="label">Username or email address</label>
        <input v-model="username" class="input" type="text" />

        <div class="password-header">
          <label class="label">Password</label>
          <a class="forgot" href="#">Forgot password?</a>
        </div>
        <input v-model="password" class="input" type="password" />

        <button class="button" type="submit">Sign in</button>

        <p class="error" v-if="error">{{ error }}</p>
      </form>
    </div>

    <div class="signup-box">
      New to GitHub?
      <a href="#">Create an account</a>.
    </div>
  </div>
</template>

<style scoped>
.container {
  display: flex;
  flex-direction: column;
  align-items: center;
  margin-top: 60px;
  font-family: -apple-system, BlinkMacSystemFont, "Segoe UI", Helvetica, Arial, sans-serif;
}

.github-logo {
  width: 60px;
  margin-bottom: 20px;
}

.title {
  font-size: 24px;
  margin-bottom: 20px;
  font-weight: 300;
}

.login-box {
  width: 340px;
  padding: 20px;
  border: 1px solid #d8dee4;
  border-radius: 6px;
  background: #f6f8fa;
}

.label {
  font-size: 14px;
  font-weight: 600;
}

.input {
  width: 100%;
  padding: 8px;
  margin: 6px 0 16px 0;
  border: 1px solid #d0d7de;
  border-radius: 6px;
}

.password-header {
  display: flex;
  justify-content: space-between;
  align-items: center;
}

.forgot {
  font-size: 12px;
  color: #0969da;
  text-decoration: none;
}

.button {
  width: 100%;
  padding: 8px;
  background: #1f883d;
  border: none;
  color: white;
  border-radius: 6px;
  font-weight: 600;
  cursor: pointer;
}

.button:hover {
  background: #166534;
}

.signup-box {
  margin-top: 20px;
  font-size: 14px;
}

.signup-box a {
  color: #0969da;
  text-decoration: none;
}

.error {
  margin-top: 10px;
  color: #cf222e;
  font-size: 14px;
}
</style>
