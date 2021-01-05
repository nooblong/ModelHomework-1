<template>
  <div class="personal-center">
    <el-tabs v-model="activeName" @tab-click="handleClick">
      <el-tab-pane label="个人信息" name="first"><MyInfo /></el-tab-pane>
      <el-tab-pane label="我的消息" name="second">我的消息</el-tab-pane>
      <el-tab-pane label="系统通知" name="third">系统通知</el-tab-pane>
      <el-tab-pane label="文章编辑" name="editor">
        <ArticleEditor />
      </el-tab-pane>
    </el-tabs>
  </div>
</template>

<script>
import Vue from "vue";
import ArticleEditor from "@/components/ArticleEditor";
import MyInfo from "@/components/MyInfo";

export default {
  components: { ArticleEditor, MyInfo },
  data() {
    return {
      activeName: "first",
    };
  },
  methods: {
    handleClick(tab, event) {
      console.log(tab, event);
    },
  },
  created() {
    if (Vue.prototype.token == undefined) {
      this.$router.push("/login");
    }
  },
};
</script>

<style scoped>
.personal-center {
  margin: 15px;
  user-select: none;
}
</style>
