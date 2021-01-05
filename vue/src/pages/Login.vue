<template>
  <div>
    <BigLogo />
    <el-form ref="form" :model="form" label-width="80px" class="login-form">
      <el-form-item label="用户名">
        <el-input v-model="form.username"></el-input>
      </el-form-item>
      <el-form-item label="密码">
        <el-input v-model="form.password" show-password></el-input>
      </el-form-item>
      <el-form-item>
        <el-button type="" @click="goRegister">注册</el-button>
        <el-button type="primary" @click="onSubmit">登录</el-button>
      </el-form-item>
    </el-form>
  </div>
</template>

<script>
import Vue from "vue";
import BigLogo from "@/components/BigLogo";
import Axios from "axios";

export default {
  components: { BigLogo },
  data() {
    return {
      form: {
        username: "",
        password: "",
      },
    };
  },
  methods: {
    goRegister() {
      this.$router.push("/register");
    },
    onSubmit() {
      let { username, password } = this.form;

      if (username.length == 0 || password.length == 0) {
        this.$message.error("请输入登录信息");
        return;
      }

      Axios.post("/api/login", {
        username,
        password,
      })
        .then((res) => {
          if (res.status == 200) {
            //login success
            let token = res.headers.token;
            Vue.prototype.token = token;
            this.$message({
              message: "登录成功",
              type: "success",
            });

            Axios.defaults.headers.get["Authorization"] = token;
            Axios.defaults.headers.post["Authorization"] = token;

            setTimeout(() => {
              this.$router.back();
            }, 1000);
          }
        })
        .catch(() => {
          this.$message.error("登录失败");
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
