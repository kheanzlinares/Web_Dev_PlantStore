<template>
  <div class="col-xs-12 col-sm-12 col-md-6 col-lg-4 col-xxl-4 p-2">
    <div class="card product-card h-100">
      <div class="card-body">
        <img :src="product.image" :alt="product.title" :title="product.title" />
        <div>
          <span class="name">{{ product.name }}</span>
          <p>{{ product.category.name }}</p>
        </div>
        <span class="price text-primary">€{{ product.price }}</span>
      </div>
      <div class="card-footer">
        <button class="btn btn-success" @click="editProduct(product.id)">Edit</button>&nbsp;&nbsp;
        <button class="btn btn-danger" @click="deleteProduct(product.id)">Delete</button>
      </div>
    </div>
  </div>
</template>

<script>
import axios from 'axios';

export default {
  name: "ProductListItem",
  props: {
    product: Object,
  },
  methods: {
    deleteProduct(id) {
      axios.delete("http://localhost/products/" + id)
      .then(result => {
          console.log(result);
          this.$emit("update");
      }).catch(error => console.log(error));
      // use axios to delete the product
    },
    editProduct(id) {
      axios.get("http://localhost/products/" + id)
      .then(result => {
          console.log(result);
          this.$router.push("/editproduct/" + id);
      }).catch(error => console.log(error));
      // use the router to navigate to the editproduct route and pass the id
    },
  },
};
</script>

<style>
</style>