<template>
  <div class="main-frame">
    <div id="section-title-bar">
      <div class="section-title">板块 >> 科技</div>
      <div class="section-title">当前板块总文章数：1000</div>
    </div>

    <div id="img-news-container">
      <div v-for="(item, index) in imgNews" :key="index">
        <ImageNews :news="item" />
      </div>
    </div>
  </div>
</template>

<script>
import ImageNews from "@/components/ImageNews.vue";

export default {
  name: "SectionView.vue",
  components: {
    ImageNews,
  },
  data() {
    return {
      imgNews: [
        {
          title: "军训1",
          imgLink: "https://s1.ax1x.com/2020/10/22/BidkTK.jpg",
        },
        {
          title: "军训1",
          imgLink: "https://s1.ax1x.com/2020/10/29/B8rIQf.jpg",
        },
        {
          title: "军训1",
          imgLink: "https://s1.ax1x.com/2020/10/22/BirYsH.jpg",
        },
        {
          title: "军训1",
          imgLink: "https://s1.ax1x.com/2020/10/22/BirRwn.jpg",
        },
        {
          title: "军训1",
          imgLink: "https://s1.ax1x.com/2020/10/29/B8rIQf.jpg",
        },
      ],
    };
  },
};
</script>

<style scoped>
.main-frame {
  display: flex;
  flex-flow: column;
  align-items: center;
}

#section-title-bar {
  display: flex;
  flex-flow: row;
  width: 100vw;
  justify-content: space-between;
}

.section-title {
  color: gray;
  font-size: 2em;
  text-align: left;
  margin: 10px 20px;
}

#img-news-container {
  display: flex;
  flex-wrap: wrap;
}
</style>
