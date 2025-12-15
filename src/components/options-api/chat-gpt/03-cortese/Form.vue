<script setup>
import { ref } from 'vue'

const email = ref('')
const password = ref('')

const handleLogin = () => {
  console.log('Email:', email.value)
  console.log('Password:', password.value)
}
</script>

<template>
  <div class="login-page">
    <div class="login-container">
      <img
        src="https://github.githubassets.com/images/modules/logos_page/GitHub-Mark.png"
        alt="GitHub Logo"
        class="logo"
      />

      <h1>Sign in to GitHub</h1>

      <form class="login-form" @submit.prevent="handleLogin">
        <label for="email">Username or email address</label>
        <input
          id="email"
          type="text"
          v-model="email"
          required
        />

        <div class="password-label">
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

      <div class="create-account">
        <p>
          New to GitHub?
          <a href="#">Create an account</a>
        </p>
      </div>
    </div>
  </div>
</template>

<style scoped>
.login-page {
  min-height: 100vh;
  background-color: #f6f8fa;
  display: flex;
  justify-content: center;
  align-items: center;
  font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', sans-serif;
}

.login-container {
  width: 340px;
  text-align: center;
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

.login-form {
  background: #ffffff;
  border: 1px solid #d0d7de;
  border-radius: 6px;
  padding: 16px;
  text-align: left;
}

label {
  font-size: 14px;
  margin-bottom: 6px;
  display: block;
}

input {
  width: 100%;
  padding: 6px 8px;
  margin-bottom: 16px;
  border: 1px solid #d0d7de;
  border-radius: 6px;
}

.password-label {
  display: flex;
  justify-content: space-between;
  align-items: center;
}

.password-label a {
  font-size: 12px;
  text-decoration: none;
  color: #0969da;
}

button {
  width: 100%;
  background-color: #2da44e;
  color: white;
  border: none;
  padding: 8px;
  border-radius: 6px;
  cursor: pointer;
  font-weight: 600;
}

button:hover {
  background-color: #2c974b;
}

.create-account {
  margin-top: 16px;
  padding: 16px;
  border: 1px solid #d0d7de;
  border-radius: 6px;
  background: #ffffff;
}

.create-account a {
  color: #0969da;
  text-decoration: none;
}
</style>
