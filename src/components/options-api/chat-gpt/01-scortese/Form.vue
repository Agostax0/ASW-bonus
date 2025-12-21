<script setup>
</script>

<template>
  <div class="page">
    <div class="container">
      <!-- GitHub Logo -->
      <div class="logo">
        <svg height="48" viewBox="0 0 16 16" width="48" aria-hidden="true">
          <path
            fill="currentColor"
            d="M8 0C3.58 0 0 3.58 0 8c0 3.54 2.29 6.53 5.47 7.59.4.07.55-.17.55-.38
            0-.19-.01-.82-.01-1.49-2.01.37-2.53-.49-2.69-.94-.09-.23-.48-.94-.82-1.13
            -.28-.15-.68-.52-.01-.53.63-.01 1.08.58 1.23.82.72 1.21 1.87.87 2.33.66
            .07-.52.28-.87.51-1.07-1.78-.2-3.64-.89-3.64-3.95 0-.87.31-1.59.82-2.15
            -.08-.2-.36-1.02.08-2.12 0 0 .67-.21 2.2.82.64-.18 1.32-.27 2-.27
            .68 0 1.36.09 2 .27 1.53-1.04 2.2-.82 2.2-.82.44 1.1.16 1.92.08 2.12
            .51.56.82 1.27.82 2.15 0 3.07-1.87 3.75-3.65 3.95.29.25.54.73.54 1.48
            0 1.07-.01 1.93-.01 2.2 0 .21.15.46.55.38A8.013 8.013 0 0 0 16 8
            c0-4.42-3.58-8-8-8Z"
          />
        </svg>
      </div>

      <h1>Sign in to GitHub</h1>

      <!-- Login Box -->
      <div class="login-box">
        <label for="username">Username or email address</label>
        <input id="username" type="text" />

        <div class="password-row">
          <label for="password">Password</label>
          <a href="#">Forgot password?</a>
        </div>
        <input id="password" type="password" />

        <button class="btn">Sign in</button>
      </div>

      <!-- Secondary Box -->
      <div class="secondary-box">
        <span>New to GitHub?</span>
        <a href="#">Create an account</a>
      </div>

      <!-- Footer -->
      <footer>
        <a href="#">Terms</a>
        <a href="#">Privacy</a>
        <a href="#">Security</a>
        <a href="#">Contact GitHub</a>
      </footer>
    </div>
  </div>
</template>

<style scoped>
.page {
  min-height: 100vh;
  background-color: #0d1117;
  display: flex;
  justify-content: center;
  align-items: center;
  color: #e6edf3;
  font-family: -apple-system, BlinkMacSystemFont, "Segoe UI", Helvetica, Arial, sans-serif;
}

.container {
  width: 100%;
  max-width: 340px;
  text-align: center;
}

.logo {
  margin-bottom: 24px;
  color: #e6edf3;
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

.login-box label {
  font-size: 12px;
  margin-bottom: 6px;
  display: block;
}

.login-box input {
  width: 100%;
  padding: 8px 12px;
  margin-bottom: 16px;
  background-color: #0d1117;
  border: 1px solid #30363d;
  border-radius: 6px;
  color: #e6edf3;
  box-sizing: border-box;
}

.login-box input:focus {
  outline: none;
  border-color: #58a6ff;
}

.password-row {
  display: flex;
  justify-content: space-between;
  align-items: center;
}

.password-row a {
  font-size: 12px;
  color: #58a6ff;
  text-decoration: none;
}

.btn {
  width: 100%;
  padding: 8px;
  background-color: #238636;
  border: 1px solid rgba(240,246,252,0.1);
  border-radius: 6px;
  color: #ffffff;
  font-weight: 500;
  cursor: pointer;
}

.btn:hover {
  background-color: #2ea043;
}

.secondary-box {
  margin-top: 16px;
  padding: 16px;
  border: 1px solid #30363d;
  border-radius: 6px;
  font-size: 14px;
}

.secondary-box a {
  color: #58a6ff;
  margin-left: 4px;
  text-decoration: none;
}

footer {
  margin-top: 24px;
  display: flex;
  justify-content: center;
  flex-wrap: wrap;
  gap: 12px;
  font-size: 12px;
}

footer a {
  color: #8b949e;
  text-decoration: none;
}
</style>
