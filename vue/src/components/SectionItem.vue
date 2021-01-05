<template>
  <div class="section-card">
    <!-- <img :src="section.sectionImg" /> -->
    <div class="section-title">{{ section.name }}</div>
  </div>
</template>
<script>
export default {
  props: ["section"],
};
</script>

<style scoped>
.section-card {
  min-width: 400px;
  /* min-height: 100px; */
  margin: 25px 50px;
  padding: 20px;
  background-color: white;
  /*border: solid 1px gray;*/
  border-radius: 6px;

  box-sizing: border-box;
}

.section-card:hover {
  box-shadow: 0 15px 15px 0 rgba(15, 37, 64, 0.1);
  -webkit-transition: all 0.3s linear;
}

.section-card img {
  max-width: 400px;
  max-height: 250px;
  overflow: hidden;
}
</style>
