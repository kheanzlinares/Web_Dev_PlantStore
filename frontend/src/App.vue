<template>
  <navigation />
  <router-view />
  <!-- Add a router view -->
</template>

<script>
import Navigation from './components/Navigation.vue'


export default {
  name: "App",
  components: {
    Navigation
  },
  
  created(){
    this.$store.dispatch('autologin');
  }
};
</script>

<style>
#app {
  font-family: Sofia, Helvetica, Arial, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  text-align: center;
  color: #2c3e50;
  margin-top: 60px;
}
</style>
