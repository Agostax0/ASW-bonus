<script setup>
// Nessuna logica JS necessaria per una pagina di login statica
</script>

<template>
  <div class="login-page">
    <div class="login-box">
      <!-- Logo GitHub -->
      <img
        class="github-logo"
        src="https://github.githubassets.com/images/modules/logos_page/GitHub-Mark.png"
        alt="GitHub Logo"
      />

      <h1>Sign in to GitHub</h1>

      <form class="login-form">
        <label for="username">Username or email address</label>
        <input
          id="username"
          type="text"
          placeholder="Username or email"
        />

        <div class="password-row">
          <label for="password">Password</label>
          <a href="#">Forgot password?</a>
        </div>

        <input
          id="password"
          type="password"
          placeholder="Password"
        />

        <button type="submit">Sign in</button>
      </form>

      <p class="signup">
        New to GitHub? <a href="#">Create an account</a>
      </p>
    </div>
  </div>
</template>

<style scoped>
/* Reset minimo per evitare sbordamenti */
* {
  box-sizing: border-box;
}

/* Sfondo pagina */
.login-page {
  min-height: 100vh;
  background-color: #0d1117;
  display: flex;
  align-items: center;
  justify-content: center;
  color: #c9d1d9;
  font-family: -apple-system, BlinkMacSystemFont, "Segoe UI", Helvetica, Arial, sans-serif;
}

/* Contenitore centrale */
.login-box {
  width: 100%;
  max-width: 340px;
  padding: 32px;
  background-color: #161b22;
  border: 1px solid #30363d;
  border-radius: 6px;
}

/* Logo */
.github-logo {
  width: 48px;
  display: block;
  margin: 0 auto 16px;
  filter: invert(1);
}

/* Titolo */
h1 {
  text-align: center;
  font-size: 20px;
  font-weight: 300;
  margin-bottom: 24px;
}

/* Form */
.login-form {
  display: flex;
  flex-direction: column;
  gap: 8px;
}

/* Label */
label {
  font-size: 14px;
}

/* Input */
input {
  width: 100%;
  padding: 8px 12px;
  border-radius: 6px;
  border: 1px solid #30363d;
  background-color: #0d1117;
  color: #c9d1d9;
}

input:focus {
  outline: none;
  border-color: #58a6ff;
}

/* Password row */
.password-row {
  display: flex;
  justify-content: space-between;
  align-items: center;
}

.password-row a {
  font-size: 12px;
}

/* Bottone */
button {
  margin-top: 16px;
  padding: 10px;
  background-color: #238636;
  color: white;
  border: none;
  border-radius: 6px;
  font-weight: 600;
  cursor: pointer;
}

button:hover {
  background-color: #2ea043;
}

/* Link */
a {
  color: #58a6ff;
  text-decoration: none;
}

a:hover {
  text-decoration: underline;
}

/* Signup */
.signup {
  margin-top: 24px;
  text-align: center;
  font-size: 14px;
}
</style>
