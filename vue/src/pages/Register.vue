<template>
  <div>
    <BigLogo />
    <el-form ref="form" :model="form" label-width="80px" class="login-form">
      <el-form-item label="用户名">
        <el-input v-model="username"></el-input>
      </el-form-item>
      <el-form-item label="邮箱">
        <el-input v-model="mail"></el-input>
      </el-form-item>
      <el-form-item label="密码">
        <el-input v-model="password"></el-input>
      </el-form-item>
      <el-form-item label="确认密码">
        <el-input v-model="passwordAgain"></el-input>
      </el-form-item>
      <el-form-item>
        <el-button type="primary" @click="onSubmit">注册</el-button>
      </el-form-item>
    </el-form>

    <el-dialog
      title="注册"
      :visible.sync="dialogVisible"
      width="30%"
      :before-close="handleClose"
    >
      <span>{{ this.dialogInfo }}</span>
      <span slot="footer" class="dialog-footer">
        <el-button @click="dialogVisible = false">取 消</el-button>
        <el-button type="primary" @click="dialogVisible = false"
          >确 定</el-button
        >
      </span>
    </el-dialog>
  </div>
</template>

<script>
import axios from "axios";
import BigLogo from "@/components/BigLogo";

export default {
  components: { BigLogo },
  data() {
    return {
      username: "",
      mail: "",
      password: "",
      passwordAgain: "",
      dialogVisible: false,
      dialogInfo: "",
    };
  },
  methods: {
    onSubmit: function () {
      window.console.log("test");
      axios
        .post("/api/register", {
          username: this.username,
          password: this.password,
          mail: this.mail,
        })
        .then((res) => {
          this.dialogInfo = res.data.msg;
          this.dialogVisible = true;
        });
    },
  },
};
</script>

<style scoped>
.login-form {
  max-width: 400px;
  margin: auto;
}
</style>
