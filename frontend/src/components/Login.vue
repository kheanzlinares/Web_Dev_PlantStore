<template>
  <section>
    <div id="app">
    <div class="d-flex justify-content-center">
      <div class="row">
        <div class="col-md-6">
          <form>
            <div class="mb-3">
              <label for="inputUsername" class="form-label">Username</label>
              <input
                id="inputUsername"
                type="text"
                class="form-control"
                v-model="username"
              />
            </div>
            <div class="mb-3">
              <label for="inputPassword" class="form-label">Password</label>
              <input
                type="password"
                class="form-control"
                id="inputPassword"
                v-model="password"
              />
            </div>
            <button type='button' @click="login()" class="btn btn-primary mb-3">Submit</button>
          </form>
          <br>
          <router-link to="/forgotPassword" class="nav-link" active-class="active">Forgot Password</router-link>
          <router-link to="/createAccount" class="nav-link" active-class="active">Create Account</router-link>
        </div>
      </div>
    </div>
    </div>
  </section>
</template>

<script>

export default {
  name: "Login",
  data() {
    return {
      username: "",
      password: "",
    };
  },
  methods: {
    login() {
        this.$store.dispatch("login", {
            username: this.username,
            password: this.password,
        })
        .then(() => {
            this.$router.replace("/");
        })
        .catch((error) => {
            this.errorMessage = error;
        });
    },
  }
};
</script>

<style>

</style>
