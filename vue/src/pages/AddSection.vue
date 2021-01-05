<template>
    <div>
        <section-table />
        <el-form :inline="true" :model="formInline" class="demo-form-inline">
  <el-form-item label="板块名">
    <el-input v-model="formInline.user" placeholder="板块名"></el-input>
  </el-form-item>
 
  <el-form-item>
    <el-button type="primary" @click="onSubmit">添加</el-button>
  </el-form-item>
</el-form>
    </div>
</template>

<script>

import SectionTable from '../components/SectionTable.vue';



  export default {
      components:{
          SectionTable

      },

    data() {
      return {
        formInline: {
          user: '',
          region: ''
        }
      }
    },
    methods: {
      onSubmit() {
        console.log('submit!');
      }
    }
  }
</script>