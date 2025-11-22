<script setup>
import { ref } from 'vue'

const username = ref('')
const password = ref('')
const loading = ref(false)
const error = ref('')

const onSubmit = async () => {
  error.value = ''
  loading.value = true

  // finta chiamata API
  await new Promise(r => setTimeout(r, 800))

  if (!username.value || !password.value) {
    error.value = 'Invalid username or password'
  }

  loading.value = false
}
</script>

<template>
  <div class="page">
    <header class="header">
      <svg aria-hidden="true" height="48" width="48" viewBox="0 0 16 16" fill="currentColor">
        <path
          d="M8 0C3.58 0 0 3.58 0 8a8 8 0 0 0 5.47 7.59c.4.07.55-.17.55-.38
          0-.19-.01-.82-.01-1.49-2.01.37-2.53-.49-2.69-.94-.09-.23-.48-.94-.82-1.13-.28-.15-.68-.52
          -.01-.53.63-.01 1.08.58 1.23.82.72 1.21 1.87.87 2.33.66.07-.52.28-.87.51-1.07-1.78-.2-3.64-.89-3.64-3.95
          0-.87.31-1.59.82-2.15-.08-.2-.36-1.02.08-2.12 0 0 .67-.21 2.2.82a7.5 7.5 0 0 1 2-.27c.68 0 1.36.09 2 .27
          1.53-1.04 2.2-.82 2.2-.82.44 1.1.16 1.92.08 2.12.51.56.82 1.27.82 2.15
          0 3.07-1.87 3.75-3.65 3.95.29.25.54.73.54 1.48 0 1.07-.01 1.93-.01 2.2
          0 .21.15.46.55.38A8 8 0 0 0 16 8c0-4.42-3.58-8-8-8Z"
        />
      </svg>
    </header>

    <main class="main">
      <div class="box">
        <h1 class="title">Sign in to GitHub</h1>

        <form @submit.prevent="onSubmit" class="form">
          <label>
            <div class="label">Username or email address</div>
            <input
              v-model="username"
              type="text"
              class="input"
              autocomplete="username"
            />
          </label>

          <label>
            <div class="label-and-link">
              <span>Password</span>
              <a href="#" class="forgot">Forgot password?</a>
            </div>
            <input
              v-model="password"
              type="password"
              class="input"
              autocomplete="current-password"
            />
          </label>

          <button class="btn" :disabled="loading">
            {{ loading ? 'Signing in…' : 'Sign in' }}
          </button>

          <p v-if="error" class="error">{{ error }}</p>
        </form>
      </div>

      <div class="signup-box">
        <span>New to GitHub?</span>
        <a href="#">Create an account</a>
      </div>
    </main>
  </div>
</template>

<style scoped>
.page {
  display: flex;
  flex-direction: column;
  align-items: center;
  padding: 40px 0;
  font-family: system-ui, sans-serif;
  color: #24292f;
}

.header {
  margin-bottom: 24px;
  color: #1b1f23;
}

.main {
  width: 340px;
  display: flex;
  flex-direction: column;
  gap: 16px;
}

.box {
  background: #f6f8fa;
  border: 1px solid #d0d7de;
  border-radius: 6px;
  padding: 24px;
}

.title {
  text-align: center;
  font-size: 20px;
  margin-bottom: 16px;
  font-weight: 600;
}

.form {
  display: flex;
  flex-direction: column;
  gap: 16px;
}

.label {
  font-size: 14px;
  font-weight: 600;
  margin-bottom: 4px;
}

.label-and-link {
  display: flex;
  justify-content: space-between;
  font-size: 14px;
  font-weight: 600;
  margin-bottom: 4px;
}

.input {
  width: 100%;
  padding: 6px 8px;
  border: 1px solid #d0d7de;
  border-radius: 6px;
  font-size: 14px;
}

.btn {
  width: 100%;
  padding: 8px 0;
  background-color: #2da44e;
  border: none;
  border-radius: 6px;
  color: #fff;
  font-weight: 600;
  cursor: pointer;
}
.btn:disabled {
  opacity: 0.7;
  cursor: default;
}

.error {
  margin-top: -4px;
  color: #cf222e;
  font-size: 14px;
}

.signup-box {
  text-align: center;
  font-size: 14px;
  border: 1px solid #d0d7de;
  padding: 16px;
  border-radius: 6px;
  background: #ffffff;
}
.signup-box a {
  margin-left: 4px;
}
</style>
