<template>
  <header class="header bg-success top">
    <img src="blom_web_wit.png" alt="Blom">
  </header>
  <nav class="navbar navbar-expand-md navbar-expand-xs navbar-expand-sm navbar-expand-xl navbar-light bg-warning mb-4">
    <div class="container-fluid mx-auto">
      <ul class="navbar-nav me-auto mb-2 mb-md-0">
        <li class="nav-item">
          <!-- Add a router link to the homepage (don't use the a tag!) -->
          <router-link to="/" class="nav-link" active-class="active">Home</router-link>
        </li> 
        <li class="nav-item">
          <!-- add a router link to the products page (don't use the a tag!) -->
          <router-link to="/pots" class="nav-link" active-class="active">Pots</router-link>
        </li>
        <li class="nav-item">
          <!-- add a router link to the products page (don't use the a tag!) -->
          <router-link to="/plants" class="nav-link" active-class="active">Plants</router-link>
        </li>
        <li class="nav-item">
          <!-- add a router link to the products page (don't use the a tag!) -->
          <router-link to="/accessories" class="nav-link" active-class="active">Accessories</router-link>
        </li>  
        <li class="nav-item text-right">
          <!-- add a router link to the products page (don't use the a tag!) -->
          <router-link to="/login" class="nav-link" active-class="active">Login</router-link>

        </li>   
      </ul>
    </div>
  </nav>

  
</template>

<script>
export default {
  name: "Navigation",
}
</script>

<style>
</style>