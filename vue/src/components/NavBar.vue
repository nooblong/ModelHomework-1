<template>
  <div class="nav-bar">
    <el-menu :default-active="'1'" class="el-menu" mode="horizontal" :router="true">
      <el-menu-item>NEWS-PLATFORM</el-menu-item>
      <el-menu-item :route="{ path: '/' }" index="1">首页</el-menu-item>
      <el-menu-item :route="{ path: '/sections' }" index="2">板块列表</el-menu-item>
      <el-menu-item :route="{ path: '/personalCenter' }" index="3">我的</el-menu-item>
    </el-menu>
  </div>
</template>

<script>
export default {
  data() {
    return {
      routerList: [
        {
          title: "首页",
          routerObject: { path: "/index" },
        },
      ],
    };
  },
};
</script>
<style scoped>
.nav-bar {
  user-select: none;
}
</style>
