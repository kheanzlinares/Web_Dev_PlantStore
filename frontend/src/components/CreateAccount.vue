<template>
    <div id="app">
    <div class="container">
    <div class="row justify-content-center">
      <div class="col-6">
        <div class="card card-default">
          <div class="card-header bg-success text-light">Create account</div>
          <div class="card-body">
            <form autocomplete="off" @submit.prevent="resetPassword" method="post">
              <div class="form-group">
                  <label for="username">Username</label>
                  <input type="username" id="username" class="form-control"  v-model="username" required>
              </div>
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
              <button type="submit" class="btn btn-primary" @click="login">Sign up</button>&nbsp;&nbsp;
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
export default {

}
</script>

<style>

</style>