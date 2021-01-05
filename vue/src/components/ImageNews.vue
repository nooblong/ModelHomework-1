<template>
  <div class="img-news">
    <img class="carousel-img" :src="news.headPicURL" />
    <div class="news-title">{{ news.title }}</div>
  </div>
</template>

<script>
export default {
  name: "ImageNews",
  props: ["news"],
};
</script>

<style scoped> 
.img-news {
  min-width: 320px;
  min-height: 240px;
  margin: 20px 20px;
  padding: 20px;
  background-color: white;
  /*border: solid 1px gray;*/
  border-radius: 6px;

  box-sizing: border-box;
}

.img-news:hover {
  box-shadow: 0 15px 15px 0 rgba(15, 37, 64, 0.1);
  -webkit-transition: all 0.3s linear;
}

.img-news img {
  max-width: 400px;
  max-height: 250px;
  overflow: hidden;
}

.news-title {
  text-align: left;
  margin: 5px 0px;
}
</style>
