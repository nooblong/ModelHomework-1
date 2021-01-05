<template>
  <el-carousel
    class="main-carousel"
    :interval="4000"
    type="card"
    height="350px"
  >
    <el-carousel-item v-for="(item, index) in carouselList" :key="index">
      <!-- <h3 class="medium">{{ item.title }}</h3> -->
      <img class="carousel-img" :src="item.headPicURL" />
    </el-carousel-item>
  </el-carousel>
</template>

<script>
import Axios from 'axios';
export default {
  data() {
    return {
      carouselList: null
    };
  },
  created() {
    Axios.get('/api/public/carousel').then(res => {
      this.carouselList = res.data
    })
  }
};
</script>

<style>
.main-carousel {
  margin: 20px 0px;
}

.el-carousel__item h3 {
  color: #475669;
  font-size: 14px;
  opacity: 0.75;
  line-height: 200px;
  margin: 0;
}

.el-carousel__item:nth-child(2n) {
  background-color: #99a9bf;
}

.el-carousel__item:nth-child(2n + 1) {
  background-color: #d3dce6;
}

.carousel-img {
  max-width: 800px;
  max-height: 400px;
}
</style>
