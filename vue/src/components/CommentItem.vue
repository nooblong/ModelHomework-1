<template>
  <!-- 单条评论组件 -->
  <div class="commentItemContainer">
    <div>{{ comment.authorName }}</div>
    <div>{{ comment.content }}</div>
    <div>{{ comment.publishDate }}</div>
  </div>
</template>

<script>
export default {
  props: ["comment"],
  data() {
    return {};
  },
};
</script>

<style scoped>
.avatar-img {
  height: 200px;
  widows: 200px;
}
.commentItemContainer {
    width: 80vw;
    display: flex;
    flex-flow: column;
}
</style>
