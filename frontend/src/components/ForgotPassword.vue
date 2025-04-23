<template>
  <div id="app">
    <div id="alert" v-if="alert">{{ alert }}</div>

    <div class="container">
    <div class="row justify-content-center">
      <div class="col-6">
        <div class="card card-default">
          <div class="card-header bg-success text-light">New Password</div>
          <div class="card-body">
            <form autocomplete="off" @submit.prevent="resetPassword" method="post">
              <div class="form-group">
                  <label for="email">E-mail</label>
                  <input type="email" id="email" class="form-control" placeholder="user@example.com" v-model="email" required>
              </div>
              <div class="form-group">
                  <label for="email">Password</label>
                  <input type="password" id="password" class="form-control" placeholder="" v-model="password" required>
              </div>
              <div class="form-group">
                  <label for="email">Confirm Password</label>
                  <input type="password" id="password_confirmation" class="form-control" placeholder="" v-model="password_confirmation" required>
              </div>
              <br>
              <button type="submit" class="btn btn-primary" @click="login">Update</button>&nbsp;&nbsp;
              <button type="button" class="btn btn-danger" @click="this.$router.push('/login')">Cancel</button>
            </form>
          </div>
        </div>
      </div>
    </div>
  </div>
  </div>
</template>

<script>
import axios from 'axios';

export default {
  name: "ForgotPassword",
  props: {
    id: Number,
  },
  data() {
    return {
        username: "",
        password: "",
    };
  },
  mounted(){
    axios.get("http://localhost/users")
    .then(result => {
      console.log(result);
      this.categories = result.data;
    })
  },
  methods: {
    login() {
        this.$store.dispatch("login", {
            username: this.username,
            password: this.password,
        })
        .then(() => {
            this.$router.replace("/login");
        })
        .catch((error) => {
            this.errorMessage = error;
        });
     
    },
  }
}
</script>

<style>
</style>