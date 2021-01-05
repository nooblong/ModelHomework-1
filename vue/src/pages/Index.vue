<template>
  <div class="main-frame">
    <Carousel id="carousel" />
    <div id="img-news-container">
      <div v-for="(item, index) in imgNews" :key="index" @click="goArticle(item.articleId)">
        <ImageNews :news="item" />
      </div>
    </div>
  </div>
</template>

<script>
import Carousel from "@/components/Carousel.vue";
import ImageNews from "@/components/ImageNews";
import Axios from "axios";

export default {
  components: {
    ImageNews,
    Carousel,
  },
  data() {
    return {
      imgNews: null,
    };
  },
  created() {
    Axios.get("/api/public/hotNews?num=100").then((res) => {
      console.log(res);
      this.imgNews = res.data;
    });
  },
  methods: {
    goArticle(id) {
      this.$router.push('/article/' + id)
    },
  },
};
</script>

<style scoped>
#img-news-container {
  display: flex;
  flex-wrap: wrap;
  justify-content: space-around;
}

.main-frame {
  display: flex;
  flex-flow: column;
  align-items: center;
  user-select: none;
}

#carousel {
  width: 80vw;
  max-width: 1400px;
}
</style>
