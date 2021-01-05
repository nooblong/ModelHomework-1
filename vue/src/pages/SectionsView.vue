<template>
  <div class="main-frame">
    <div id="section-title-bar">
      <div class="section-title">板块列表</div>
      <div class="section-title">当前总板块数量： {{ sectionList.length }}</div>
    </div>

    <div class="sections-container">
      <div v-for="(sectionItem, index) in sectionList" :key="index" @click="goSection(sectionItem.sectionId)">
        <SectionItem :section="sectionItem" />
      </div>
    </div>
  </div>
</template>

<script>
import SectionItem from "@/components/SectionItem";
import Axios from "axios";
export default {
  components: { SectionItem },
  data() {
    return {
      sectionList: null,
    };
  },
  created() {
    Axios.get("/api/public/sections").then((res) => {
      this.sectionList = res.data;
    });
  },
  methods: {
    goSection(id) {
      this.$router.push('/section/' + id)
    }
  }
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

.sections-container {
  display: flex;
  flex-flow: row;
  flex-wrap: wrap;
  user-select: none;
}
</style>
