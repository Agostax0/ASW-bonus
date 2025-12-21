<script setup>
// Non è richiesta logica funzionale
// La Composition API è comunque pronta per eventuali estensioni future
</script>

<template>
  <div class="page">
    <!-- Header -->
    <header class="header">
      <img
        src="https://github.githubassets.com/images/modules/logos_page/GitHub-Mark.png"
        alt="GitHub Logo"
        class="logo"
      />
    </header>

    <!-- Login Box -->
    <main class="container">
      <h1>Sign in to GitHub</h1>

      <form class="login-box">
        <label>
          Username or email address
          <input type="text" placeholder="Username or email" />
        </label>

        <label>
          Password
          <a href="#" class="forgot">Forgot password?</a>
          <input type="password" placeholder="Password" />
        </label>

        <button type="button" class="login-button">
          Sign in
        </button>
      </form>

      <!-- Secondary box -->
      <div class="secondary-box">
        <p>
          New to GitHub?
          <a href="#">Create an account</a>
        </p>
      </div>
    </main>

    <!-- Footer -->
    <footer class="footer">
      <a href="#">Terms</a>
      <a href="#">Privacy</a>
      <a href="#">Security</a>
      <a href="#">Contact GitHub</a>
    </footer>
  </div>
</template>

<style scoped>
/* Base */
.page {
  min-height: 100vh;
  background-color: #0d1117;
  color: #c9d1d9;
  display: flex;
  flex-direction: column;
  align-items: center;
  font-family: -apple-system, BlinkMacSystemFont, "Segoe UI", Helvetica, Arial, sans-serif;
}

/* Header */
.header {
  margin-top: 32px;
}

.logo {
  width: 48px;
  height: 48px;
  filter: invert(1);
}

/* Main container */
.container {
  margin-top: 24px;
  width: 100%;
  max-width: 320px;
  text-align: center;
}

.container h1 {
  font-size: 24px;
  font-weight: 300;
  margin-bottom: 16px;
}

/* Login box */
.login-box {
  background-color: #161b22;
  border: 1px solid #30363d;
  border-radius: 6px;
  padding: 16px;
  text-align: left;
}

.login-box label {
  display: block;
  font-size: 14px;
  margin-bottom: 12px;
}

.login-box input {
  width: 100%;
  margin-top: 6px;
  padding: 6px 8px;
  background-color: #0d1117;
  border: 1px solid #30363d;
  border-radius: 6px;
  color: #c9d1d9;
}

.login-box input:focus {
  outline: none;
  border-color: #58a6ff;
}

/* Forgot password */
.forgot {
  float: right;
  font-size: 12px;
  color: #58a6ff;
  text-decoration: none;
}

/* Button */
.login-button {
  width: 100%;
  margin-top: 12px;
  padding: 8px;
  background-color: #238636;
  border: 1px solid rgba(240, 246, 252, 0.1);
  border-radius: 6px;
  color: #ffffff;
  font-weight: 500;
  cursor: pointer;
}

.login-button:hover {
  background-color: #2ea043;
}

/* Secondary box */
.secondary-box {
  margin-top: 16px;
  padding: 12px;
  border: 1px solid #30363d;
  border-radius: 6px;
  font-size: 14px;
}

.secondary-box a {
  color: #58a6ff;
  text-decoration: none;
}

/* Footer */
.footer {
  margin-top: auto;
  padding: 24px;
  font-size: 12px;
}

.footer a {
  margin: 0 8px;
  color: #8b949e;
  text-decoration: none;
}
</style>
