<template>
  <!-- 评论列表 -->
  <div class="commentListContainer">
    <div v-for="(comment, index) in commentList" :key="index">
      <CommentItem :comment="comment" />
    </div>
  </div>
</template>

<script>
import CommentItem from "@/components/CommentItem.vue";

export default {
  props: ["articleId"],
  components: { CommentItem },
  data() {
    return {
      commentList: [
        {
          authorId: 1,
          authorName: "Adam",
          authorContent: "Hello World",
          publishDate: "2020/11/26 11:41",
        },
        {
          authorId: 1,
          authorName: "Adam",
          authorContent: "Hello World",
          publishDate: "2020/11/26 11:41",
        },
      ],
    };
  }
};
</script>

<style scoped>
.avatar-img {
  height: 200px;
  widows: 200px;
}
</style>
