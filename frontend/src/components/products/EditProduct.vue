<template>
  <section>
    <div class="d-flex justify-content-center">
      <form ref="form">
        <h2 class="mt-3 mt-lg-5">Edit a product</h2>
        <h5 class="mb-4"></h5>

        <div class="input-group mb-3">
          <span class="input-group-text">Name</span>
          <input type="text" class="form-control" v-model="product.name" />
        </div>

        <div class="input-group mb-3">
          <span class="input-group-text">Price</span>
          <input type="number" class="form-control" v-model="product.price" />
        </div>

        <div class="input-group mb-3">
          <span class="input-group-text">Description</span>
          <textarea
            class="form-control"
            v-model="product.description"
          ></textarea>
        </div>

        <div class="input-group mb-3">
          <span class="input-group-text">Image URL</span>
          <input type="text" class="form-control" v-model="product.image" />
        </div>

        <div class="input-group mb-3">
          <span class="input-group-text">Category</span>
          <select class="form-select" v-model="product.category_id">
            <option v-for="category in categories" :key="category.id" :value="category.id">{{category.name}}</option>
          </select>
        </div>

        <div class="input-group mt-4">
          <button type="button" class="btn btn-primary" @click="editProduct(product.id)">Save changes</button>&nbsp;&nbsp;
          <button type="button" class="btn btn-danger" @click="this.$router.push('/')">Cancel</button>
        </div>
      </form>
    </div>
  </section>
</template>

<script>
import axios from 'axios';

export default {
  name: "EditProduct",
  props: {
    id: Number,
  },
  data() {
    return {
      product: {
        id: 0,
        name: "",
        price: 0.0,
        description: "",
        image: "",
        category_id: 0,
      },
      categories: [],
    };
  },
  mounted(){
    axios.get("http://localhost/categories")
    .then(result => {
      console.log(result);
      this.categories = result.data;
    })
  },
  methods: {
    editProduct(id) {
       axios.put("http://localhost/products/" + id)
    .then(result => {
      console.log(result);
      this.$emit("update");
      this.$router.push("/");
    })
    .catch(error => console.log(error))
    }
  }
}
</script>

<style>
</style>