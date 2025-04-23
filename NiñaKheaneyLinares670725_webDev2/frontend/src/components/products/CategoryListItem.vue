<template>
  <div class="card-deck deck-xs-12 deck-sm-12 deck-md-6 deck-lg-6 deck-xxl-4 p-2">
    <div class="card-deck">
      <div class="card-img-top ">
          <img :src="category.image" :alt="category.name" :title="category.name" />
        <div class="float-center bg-light">
          <p>{{ category.name }}</p>
        </div>
        <br>
        <br>
        <br>
        <br>
        
      </div>
    </div>
  </div>
</template>

<script>

export default {
  name: "CategoryListItem",
  props: {
    category: Object,
  },
};
</script>

<style>
</style>