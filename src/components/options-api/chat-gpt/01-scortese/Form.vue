<script setup>
</script>

<template>
  <div class="page">
    <header class="header">
      <svg
        class="logo"
        height="48"
        viewBox="0 0 16 16"
        version="1.1"
        width="48"
        aria-hidden="true"
      >
        <path
          fill="currentColor"
          d="M8 0C3.58 0 0 3.58 0 8c0 3.54 2.29 6.53 5.47 7.59.4.07.55-.17.55-.38
          0-.19-.01-.82-.01-1.49-2.01.37-2.53-.49-2.69-.94-.09-.23-.48-.94-.82-1.13
          -.28-.15-.68-.52-.01-.53.63-.01 1.08.58 1.23.82.72 1.21 1.87.87
          2.33.66.07-.52.28-.87.51-1.07-1.78-.2-3.64-.89-3.64-3.95
          0-.87.31-1.59.82-2.15-.08-.2-.36-1.02.08-2.12 0 0 .67-.21
          2.2.82.64-.18 1.32-.27 2-.27.68 0 1.36.09 2 .27
          1.53-1.04 2.2-.82 2.2-.82.44 1.1.16 1.92.08 2.12
          .51.56.82 1.27.82 2.15 0 3.07-1.87 3.75-3.65 3.95
          .29.25.54.73.54 1.48 0 1.07-.01 1.93-.01 2.2
          0 .21.15.46.55.38A8.013 8.013 0 0 0 16 8c0-4.42-3.58-8-8-8Z"
        />
      </svg>
    </header>

    <main class="container">
      <h1 class="title">Sign in to GitHub</h1>

      <div class="card">
        <form class="form">
          <label class="label" for="login">Username or email address</label>
          <input
            id="login"
            type="text"
            class="input"
            autocomplete="username"
          />

          <div class="password-header">
            <label class="label" for="password">Password</label>
            <a href="#" class="forgot">Forgot password?</a>
          </div>
          <input
            id="password"
            type="password"
            class="input"
            autocomplete="current-password"
          />

          <button type="button" class="button">
            Sign in
          </button>
        </form>
      </div>

      <p class="signup">
        New to GitHub?
        <a href="#">Create an account</a>.
      </p>
    </main>
  </div>
</template>

<style scoped>
.page {
  min-height: 100vh;
  background-color: #f6f8fa;
  display: flex;
  flex-direction: column;
  align-items: center;
}

.header {
  margin-top: 32px;
}

.logo {
  color: #24292f;
}

.container {
  width: 100%;
  max-width: 308px;
  margin-top: 24px;
  padding: 0 16px;
  box-sizing: border-box;
}

.title {
  text-align: center;
  font-size: 24px;
  font-weight: 300;
  margin-bottom: 16px;
  color: #24292f;
}

.card {
  background: #ffffff;
  border: 1px solid #d0d7de;
  border-radius: 6px;
  padding: 16px;
  box-sizing: border-box;
}

.form {
  display: flex;
  flex-direction: column;
}

.label {
  font-size: 14px;
  margin-bottom: 4px;
  color: #24292f;
}

.input {
  width: 100%;
  padding: 8px 12px;
  margin-bottom: 16px;
  font-size: 14px;
  border: 1px solid #d0d7de;
  border-radius: 6px;
  box-sizing: border-box;
}

.input:focus {
  outline: none;
  border-color: #0969da;
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

.forgot:hover {
  text-decoration: underline;
}

.button {
  width: 100%;
  padding: 8px 12px;
  font-size: 14px;
  font-weight: 600;
  color: #ffffff;
  background-color: #2da44e;
  border: 1px solid rgba(27, 31, 36, 0.15);
  border-radius: 6px;
  cursor: pointer;
}

.button:hover {
  background-color: #2c974b;
}

.signup {
  margin-top: 16px;
  padding: 16px;
  text-align: center;
  font-size: 14px;
  border: 1px solid #d0d7de;
  border-radius: 6px;
  background: #ffffff;
}

.signup a {
  color: #0969da;
  text-decoration: none;
}

.signup a:hover {
  text-decoration: underline;
}
</style>
