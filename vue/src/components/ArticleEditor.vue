<template>
  <div>
    <el-form
      ref="form"
      :model="form"
      label-width="80px"
      class="article-editor-form"
      label-position="left"
    >
      <el-form-item label="标题">
        <el-input v-model="form.title"></el-input>
      </el-form-item>

      <el-form-item label="封面图片">
        <el-input v-model="form.cover"></el-input>
      </el-form-item>

      <el-form-item label="板块">
        <el-select v-model="form.sectionSelected" placeholder="请选择板块">
          <div v-for="(item, index) in sectionList" :key="index">
            <el-option :label="item.name" :value="item.sectionId"></el-option>
          </div>
        </el-select>
      </el-form-item>
      <vue-simplemde v-model="form.content" ref="markdownEditor" />
      <el-form-item>
        <el-button type="primary" @click="onSubmit">立即提交</el-button>
        <el-button>取消</el-button>
      </el-form-item>
    </el-form>
  </div>
</template>

<script>
import Axios from "axios";
import VueSimplemde from "vue-simplemde";

export default {
  components: { VueSimplemde },
  data() {
    return {
      form: {
        title: "",
        cover: "",
        content: "",
        sectionSelected: null,
      },
      sectionList: null,
    };
  },
  methods: {
    onSubmit() {
      Axios.post("/api/article/save", {
        title: this.form.title,
        data: this.form.content,
        section: this.form.sectionSelected,
        coverUrl: this.form.cover,
      }).then((res) => {
        if (res.status == 200)
          this.$message({ message: "提交成功", type: "success" });
      });
    },
  },
  created() {
    Axios.get("/api/public/sections").then((res) => {
      this.sectionList = res.data;
    });
  },
};
</script>

<style scoped>
@import "~simplemde/dist/simplemde.min.css";

.article-editor-form {
  max-width: 800px;
  margin: auto;
}
</style>
