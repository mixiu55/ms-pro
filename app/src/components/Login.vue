<template>
  <div class="login-part">
    <div class="part-left">
      <h3>登录遇见账号</h3>
      <el-input placeholder="用户名" prefix-icon="el-icon-user" v-model="uname"></el-input>
      <el-input placeholder="密码" prefix-icon="el-icon-lock" v-model="upwd" type="password"></el-input>
      <el-row>
        <el-button type="primary" @click="login">立即登录</el-button>
      </el-row>
      <el-checkbox v-model="iAgree">自动登录</el-checkbox>
    </div>
    <div class="part-right">
      <h3>合作网站登录</h3>
      <el-row>
        <el-button round>QQ登录</el-button>
        <el-button round>微信登录</el-button>
        <el-button round>微博登录</el-button>
      </el-row>
      <p>
        没有账号
        <a href="javascript:;" @click="open">注册账号&gt;&gt;</a>
      </p>
    </div>
    <div class="close el-icon-close" @click="close"></div>
  </div>
</template>
<script>
import qs from "qs"
export default {
  data() {
    return {
      uname: "",
      upwd: "",
      iAgree: false,
    };
  },
  props: {
    cname: { type: String }
  },
  methods: {
    close(){
      this.$emit("closeL");
    },
    open(){
      this.$emit("openR")
    },
    login(){
      var uname=this.uname;
      var upwd=this.upwd;
      var reg=/[a-z0-9]{3,12}$/i;
      if(!reg.test(uname)){
        this.$message.error('用户名格式错误');
        return;
      }
      if(!reg.test(upwd)){
        this.$message.error('密码格式错误');
        return;
      }
      var url="user/login";
      var obj={uname,upwd}
      this.axios.post(url,qs.stringify(obj)).then(res=>{
        // console.log(res.data)
        if(res.data.code==-1){
          this.$message.error('用户名或密码错误');
        }else{
         this.$message({
          showClose: true,
          message: '登录成功',
          type: 'success'
        });
        }
      });
    }
  },
};
</script>
<style scoped>
a {
  text-decoration: none;
}
.login-part {
  width: 638px;
  padding: 30px;
  display: flex;
  position: fixed;
  z-index: 9999;
  background: #fff;
  top: 200px;
  left: 50%;
  margin-left: -349px;
}
.login-part .part-left {
  padding-right: 10px;
  border-right: 1px solid #ddd;
}
.login-part >>> .el-input__inner {
  border: none;
  border-bottom: 1px solid #ddd;
  border-radius: 0;
  width: 343px;
  height: 37px;
  padding-top: 8px;
}
.login-part .slide {
  width: 340px;
  height: 32px;
  background: #ccc;
  margin-top: 20px;
}
.login-part .el-button {
  width: 343px;
  margin-top: 8px;
}
.login-part .el-checkbox {
  margin-top: 10px;
}
.login-part >>> .el-checkbox__input.is-checked + .el-checkbox__label {
  color: #555;
}
.login-part .part-right {
  text-align: center;
  width: 290px;
}
.login-part .part-right .el-button {
  margin-left: 8px;
  width: 260px;
}
.login-part .part-right p {
  margin-left: 8px;
}
.login-part .part-right p > a {
  color: #2f5fff;
}
.login-part .el-icon-close:hover {
  color: #2f5fff;
  cursor: pointer;
}
</style>