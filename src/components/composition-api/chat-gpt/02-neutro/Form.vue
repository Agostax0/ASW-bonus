<script setup>
import { ref } from "vue";

const username = ref("");
const password = ref("");

const handleLogin = () => {
  // Azione placeholder
  console.log("Login attempt:", username.value, password.value);
};
</script>

<template>
  <div class="page-wrapper">
    <div class="login-container">
      <!-- Logo (semplificato) -->
      <div class="logo">🐙</div>

      <h1 class="title">Sign in to GitHub</h1>

      <!-- Login card -->
      <div class="login-card">
        <form @submit.prevent="handleLogin">
          <label>
            Username or email address
            <input
              type="text"
              v-model="username"
              required
            />
          </label>

          <label class="password-label">
            Password
            <a href="#" class="forgot-link">Forgot password?</a>
            <input
              type="password"
              v-model="password"
              required
            />
          </label>

          <button class="primary-btn" type="submit">Sign in</button>
        </form>
      </div>

      <!-- Create account box -->
      <div class="signup-box">
        <span>New to GitHub?</span>
        <a href="#">Create an account</a>
      </div>
    </div>
  </div>
</template>

<style scoped>
/* Layout */
.page-wrapper {
  display: flex;
  justify-content: center;
  margin-top: 5rem;
  font-family: -apple-system, BlinkMacSystemFont, "Segoe UI", Helvetica, Arial,
    sans-serif;
}

.login-container {
  width: 340px;
  text-align: center;
}

/* Logo */
.logo {
  font-size: 56px;
}

/* Title */
.title {
  font-size: 24px;
  margin: 20px 0;
  font-weight: 300;
}

/* Login card */
.login-card {
  background: #f6f8fa;
  border: 1px solid #d0d7de;
  padding: 20px;
  border-radius: 6px;
  text-align: left;
}

label {
  display: block;
  margin-bottom: 15px;
  font-weight: 600;
  font-size: 14px;
}

label input {
  width: 100%;
  margin-top: 5px;
  padding: 6px 8px;
  font-size: 14px;
  border: 1px solid #d0d7de;
  border-radius: 6px;
  outline: none;
}

label input:focus {
  border-color: #0969da;
  box-shadow: 0 0 0 1px #0969da;
}

/* Password label */
.password-label {
  position: relative;
}

.forgot-link {
  position: absolute;
  right: 0;
  top: 0;
  font-size: 12px;
  font-weight: normal;
  text-decoration: none;
  color: #0969da;
}

.forgot-link:hover {
  text-decoration: underline;
}

/* Button */
.primary-btn {
  width: 100%;
  padding: 7px;
  background: #2da44e;
  border: 1px solid #2da44e;
  color: white;
  font-size: 14px;
  font-weight: 600;
  border-radius: 6px;
  cursor: pointer;
  margin-top: 10px;
}

.primary-btn:hover {
  background: #2c974b;
}

/* Signup box */
.signup-box {
  border: 1px solid transparent;
  margin-top: 20px;
  padding: 15px;
  font-size: 14px;
  color: #57606a;
}

.signup-box a {
  color: #0969da;
  text-decoration: none;
  margin-left: 4px;
}

.signup-box a:hover {
  text-decoration: underline;
}
</style>
