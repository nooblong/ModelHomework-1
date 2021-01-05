<template>
  <div>
    <div>个人信息</div>
  </div>
</template>

<script>
import Axios from "axios";
export default {
  data() {
    return {};
  },
  created() {
    Axios.get("/api/user/personalInfo").then((res) => {
      console.log(res);
    });
  },
};
</script>

<style scoped>
</style>
