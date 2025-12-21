<script setup>
</script>

<template>
  <div class="page">
    <div class="container">
      <div class="logo">
        <!-- GitHub avatar/logo (SVG semplificato) -->
        <svg height="48" viewBox="0 0 16 16" width="48" aria-hidden="true">
          <path
            fill="currentColor"
            d="M8 0C3.58 0 0 3.58 0 8a8 8 0 005.47 7.59c.4.07.55-.17.55-.38
            0-.19-.01-.82-.01-1.49-2.01.37-2.53-.49-2.69-.94-.09-.23-.48-.94-.82-1.13
            -.28-.15-.68-.52-.01-.53.63-.01 1.08.58 1.23.82.72 1.21 1.87.87
            2.33.66.07-.52.28-.87.51-1.07-1.78-.2-3.64-.89-3.64-3.95
            0-.87.31-1.59.82-2.15-.08-.2-.36-1.02.08-2.12 0 0 .67-.21
            2.2.82a7.6 7.6 0 012-.27c.68 0 1.36.09 2 .27
            1.53-1.04 2.2-.82 2.2-.82.44 1.1.16 1.92.08 2.12
            .51.56.82 1.27.82 2.15 0 3.07-1.87 3.75-3.65 3.95
            .29.25.54.73.54 1.48 0 1.07-.01 1.93-.01 2.2
            0 .21.15.46.55.38A8.01 8.01 0 0016 8c0-4.42-3.58-8-8-8z"
          />
        </svg>
      </div>

      <h1>Sign in to GitHub</h1>

      <form class="login-form">
        <label for="username">Username or email address</label>
        <input id="username" type="text" />

        <div class="password-header">
          <label for="password">Password</label>
          <a href="#">Forgot password?</a>
        </div>
        <input id="password" type="password" />

        <button type="submit">Sign in</button>
      </form>

      <div class="create-account">
        <p>
          New to GitHub?
          <a href="#">Create an account</a>.
        </p>
      </div>
    </div>
  </div>
</template>

<style scoped>
.page {
  min-height: 100vh;
  background-color: #0d1117;
  display: flex;
  align-items: center;
  justify-content: center;
  color: #c9d1d9;
  font-family: -apple-system, BlinkMacSystemFont, "Segoe UI", Helvetica, Arial,
    sans-serif;
}

.container {
  width: 100%;
  max-width: 340px;
  padding: 24px;
  box-sizing: border-box;
}

.logo {
  display: flex;
  justify-content: center;
  margin-bottom: 16px;
  color: #c9d1d9;
}

h1 {
  text-align: center;
  font-size: 24px;
  font-weight: 300;
  margin-bottom: 16px;
}

.login-form {
  background-color: #161b22;
  border: 1px solid #30363d;
  border-radius: 6px;
  padding: 16px;
}

label {
  font-size: 14px;
  margin-bottom: 8px;
  display: block;
}

input {
  width: 100%;
  padding: 8px 12px;
  margin-bottom: 16px;
  border-radius: 6px;
  border: 1px solid #30363d;
  background-color: #0d1117;
  color: #c9d1d9;
  box-sizing: border-box;
}

input:focus {
  outline: none;
  border-color: #58a6ff;
}

.password-header {
  display: flex;
  justify-content: space-between;
  align-items: center;
}

.password-header a {
  font-size: 12px;
  color: #58a6ff;
  text-decoration: none;
}

button {
  width: 100%;
  padding: 8px 12px;
  border-radius: 6px;
  border: none;
  background-color: #238636;
  color: #ffffff;
  font-weight: 600;
  cursor: pointer;
}

button:hover {
  background-color: #2ea043;
}

.create-account {
  margin-top: 16px;
  padding: 16px;
  border: 1px solid #30363d;
  border-radius: 6px;
  text-align: center;
  font-size: 14px;
}

.create-account a {
  color: #58a6ff;
  text-decoration: none;
}
</style>
