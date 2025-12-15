<script setup>
</script>

<template>
  <div class="page">
    <div class="container">
      <img
        class="logo"
        src="https://github.githubassets.com/images/modules/logos_page/GitHub-Mark.png"
        alt="GitHub logo"
      />

      <h1>Sign in to GitHub</h1>

      <form class="login-form">
        <label for="username">Username or email address</label>
        <input
          id="username"
          type="text"
        />

        <div class="password-header">
          <label for="password">Password</label>
          <a href="#">Forgot password?</a>
        </div>
        <input
          id="password"
          type="password"
        />

        <button type="submit">Sign in</button>
      </form>

      <div class="signup">
        New to GitHub?
        <a href="#">Create an account</a>
      </div>

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
  background-color: #f6f8fa;
  display: flex;
  justify-content: center;
  align-items: center;
  font-family: -apple-system, BlinkMacSystemFont, "Segoe UI", sans-serif;
}

.container {
  width: 340px;
  text-align: center;
}

.logo {
  width: 48px;
  margin-bottom: 24px;
}

h1 {
  font-size: 24px;
  font-weight: 300;
  margin-bottom: 16px;
}

.login-form {
  background: #ffffff;
  border: 1px solid #d8dee4;
  border-radius: 6px;
  padding: 16px;
  text-align: left;
}

label {
  font-size: 14px;
  font-weight: 600;
}

input {
  width: 100%;
  padding: 6px 8px;
  margin-top: 4px;
  margin-bottom: 12px;
  border: 1px solid #d0d7de;
  border-radius: 6px;
}

.password-header {
  display: flex;
  justify-content: space-between;
  align-items: center;
}

.password-header a {
  font-size: 12px;
}

button {
  width: 100%;
  padding: 8px;
  background-color: #2da44e;
  color: #ffffff;
  border: none;
  border-radius: 6px;
  font-weight: 600;
  cursor: pointer;
}

.signup {
  margin-top: 16px;
  padding: 16px;
  border: 1px solid #d8dee4;
  border-radius: 6px;
  font-size: 14px;
}

footer {
  margin-top: 24px;
  font-size: 12px;
}

footer a {
  margin: 0 6px;
  color: #0969da;
  text-decoration: none;
}
</style>
