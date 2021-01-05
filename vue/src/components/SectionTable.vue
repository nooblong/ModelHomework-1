<template>
<div id="section-table">
    <div class="table-left"></div>
  <el-table
    :data="tableData" >
    <el-table-column
      label="板块名"
      width="180">
      <template slot-scope="scope">
          <div slot="reference" class="name-wrapper">
            <el-tag size="medium">{{ scope.row.name }}</el-tag>
          </div>
      </template>
    </el-table-column>
    <el-table-column label="操作">
      <template slot-scope="scope">
        <el-button
          size="mini"
          type="danger"
          @click="handleDelete(scope.$index, scope.row)">删除</el-button>
      </template>
    </el-table-column>  
  </el-table>
  <div class="table-right"></div>
</div>  
</template>

<script>
  export default {
    data() {
      return {
        tableData: [{
          name: '娱乐',

        }, {
          name: '体育',

        }, {
          name: '政治',

        }, {
          name: '游戏',

        }]
      }
    },
    methods: {
      handleEdit(index, row) {
        console.log(index, row);
      },
      handleDelete(index, row) {
        console.log(index, row);
      }
    }
  }
</script>

<style scoped>
#section-table{
    display: flex;
    background: #fff;

}
.table-left{
    width: 25%;;
}
.table-right{
    width: 25%;
}
</style>
