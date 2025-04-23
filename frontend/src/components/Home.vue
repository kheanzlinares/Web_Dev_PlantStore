<template>
  <section>
    <div class="container ">
      <h2 class="mt-3 mt-lg-5">Welcome to BLOM</h2>
      <br>
      <p>The botanical store of Alkmaar, in the most beautiful spot on the east side of the city center.
        At BLOM we seduce you with pots, plants (lots of plants) and accessories.
        Plants in many shades of green, hanging plants, wallflowers, from tiny to meters high.
        Be surprised by this abundance of plants in our urban jungle.

        All these natural materials are mixed with beautiful pottery, vases and pots and are presented on vintage furniture.
        Everything has been selected with love and attention to create a pleasant and relaxed atmosphere. </p>
    </div>
  </section>
  <br>
  <br>
  <br>
  <div class="row mt-3"><category-list-item v-for="category in categories" :key="category.id" :category="category" @update="loadCategories"/></div>
</template>


<script>
import axios from "../axios-auth";
import CategoryListItem from "../components/products/CategoryListItem.vue";

export default {
  name: "Home",
  components: {
    CategoryListItem,
  },
  data() {
    return {
      categories: [],
    };
  },
  mounted() {
    this.loadCategories();
  },
  methods: {
    loadCategories() {
      axios.get("/categories").then((result) => {
        this.categories = result.data;
      });
    },
  },
};
</script>

<style>
</style>