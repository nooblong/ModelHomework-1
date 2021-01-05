<template>
  <div class="article-container">
    <h1>{{ title }}</h1>
    <AuthorAvatar :authorId="authorId" />
    <div>{{ content }}</div>
    <div>{{ articleId }}</div>
    <CommentList :articleId="articleId" />
  </div>
</template>

<script>
import AuthorAvatar from "@/components/AuthorAvatar.vue";
import CommentList from "@/components/CommentList.vue";

export default {
  components: {
    AuthorAvatar,
    CommentList
  },
  data() {
    return {
      articleId: 0,
      title: "Hello World",
      content: "xxx content",
      authorId: 1,
      publishDate: "",
    };
  },

  created() {
    this.articleId = this.$route.params.id;
  },
};
</script>

<style scoped>
.article-container {
  background: white;
  border-radius: 20px;
}
</style>
