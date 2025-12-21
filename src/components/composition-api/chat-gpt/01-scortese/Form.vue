<script setup>
import { ref } from 'vue'

const username = ref('')
const password = ref('')
const loading = ref(false)

const handleLogin = () => {
  loading.value = true
  setTimeout(() => {
    loading.value = false
    alert(`Tentativo login per: ${username.value}`)
  }, 1000)
}
</script>

<template>
  <div class="page">
    <header class="header">
      <!-- GitHub Logo (SVG ufficiale) -->
      <svg
        height="48"
        viewBox="0 0 16 16"
        width="48"
        aria-hidden="true"
        class="logo"
      >
        <path
          fill="currentColor"
          d="M8 0C3.58 0 0 3.58 0 8c0 3.54 2.29 
          6.53 5.47 7.59.4.07.55-.17.55-.38 
          0-.19-.01-.82-.01-1.49-2.01.37-2.53-.49
          -2.69-.94-.09-.23-.48-.94-.82-1.13
          -.28-.15-.68-.52-.01-.53.63-.01 1.08.58
          1.23.82.72 1.21 1.87.87 2.33.66.07-.52
          .28-.87.51-1.07-1.78-.2-3.64-.89-3.64-3.95
          0-.87.31-1.59.82-2.15-.08-.2-.36-1.02.08
          -2.12 0 0 .67-.21 2.2.82.64-.18 1.32-.27
          2-.27.68 0 1.36.09 2 .27 1.53-1.04 2.2
          -.82 2.2-.82.44 1.1.16 1.92.08 2.12.51
          .56.82 1.27.82 2.15 0 3.07-1.87 3.75
          -3.65 3.95.29.25.54.73.54 1.48 0 1.07
          -.01 1.93-.01 2.2 0 .21.15.46.55.38A8.013
          8.013 0 0016 8c0-4.42-3.58-8-8-8z"
        />
      </svg>
    </header>

    <main class="container">
      <h1>Sign in to GitHub</h1>

      <form class="login-box" @submit.prevent="handleLogin">
        <label>
          Username or email address
          <input
            v-model="username"
            type="text"
            required
          />
        </label>

        <label>
          Password
          <input
            v-model="password"
            type="password"
            required
          />
          <a href="#" class="forgot">Forgot password?</a>
        </label>

        <button type="submit" :disabled="loading">
          {{ loading ? 'Signing in…' : 'Sign in' }}
        </button>
      </form>

      <p class="signup">
        New to GitHub?
        <a href="#">Create an account</a>
      </p>
    </main>
  </div>
</template>

<style scoped>
.page {
  min-height: 100vh;
  background-color: #0d1117;
  color: #c9d1d9;
  font-family: -apple-system, BlinkMacSystemFont, "Segoe UI",
    Helvetica, Arial, sans-serif;
}

.header {
  display: flex;
  justify-content: center;
  padding: 32px 0;
}

.logo {
  color: #f0f6fc;
}

.container {
  max-width: 308px;
  margin: 0 auto;
}

h1 {
  text-align: center;
  font-weight: 300;
  margin-bottom: 24px;
}

.login-box {
  background: #161b22;
  border: 1px solid #30363d;
  border-radius: 6px;
  padding: 16px;
}

label {
  display: flex;
  flex-direction: column;
  font-size: 14px;
  margin-bottom: 16px;
}

input {
  margin-top: 6px;
  padding: 8px 12px;
  background: #0d1117;
  border: 1px solid #30363d;
  border-radius: 6px;
  color: #c9d1d9;
}

input:focus {
  outline: none;
  border-color: #58a6ff;
}

.forgot {
  font-size: 12px;
  color: #58a6ff;
  text-align: right;
  margin-top: 6px;
}

button {
  width: 100%;
  padding: 8px 16px;
  background: #238636;
  border: 1px solid rgba(240, 246, 252, 0.1);
  border-radius: 6px;
  color: #fff;
  font-weight: 500;
  cursor: pointer;
}

button:disabled {
  opacity: 0.7;
  cursor: not-allowed;
}

.signup {
  margin-top: 16px;
  text-align: center;
  font-size: 14px;
}

.signup a {
  color: #58a6ff;
}
</style>
