<template>
  <section>
    <div class="container">
      <h2 class="mt-3 mt-lg-5">Accessories</h2>
      <button
        type="button"
        class="btn btn-primary mt-3"
        @click="this.$router.push('/createproduct')"
      >
        Add product
      </button>
      <div v-if="'products.category_id == 1'" class="row mt-3">
        <product-list-item
          v-for="product in products"
          :key="product"
          :product="product"
          @update="loadProducts"
        />
      </div>
    </div>
  </section>
</template>

<script>
import axios from "../../axios-auth";
import ProductListItem from "./ProductListItem.vue";
//import CategoryListItem from "./ProductListItem.vue";

export default {
  name: "PotList",
  props: {
    id: Number,
  },
  components: {
    ProductListItem,
  },
  data() {
    return {
      products: [],
      category_id: 1
    };
  },
  mounted() {
    this.loadProducts();
  },
  methods: {
    loadProducts() {
      let temp = this;
      axios.get("/products").then((result) => {
        temp.products = result.data;
      });
    },
  },
};
</script>

<style>
</style>