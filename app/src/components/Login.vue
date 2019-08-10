<template>
  <div class="reg-part">
    <div class="part-left">
      <h3>登录遇见账号</h3>
      <el-input placeholder="手机号" prefix-icon="el-icon-phone" v-model="phone"></el-input>
      <span></span>
      <el-input placeholder="密码" prefix-icon="el-icon-phone" v-model="checkCode" type="password"></el-input>
      <span></span>
      <div class="slide"></div>
      <el-row>
        <el-button type="primary">主要按钮</el-button>
      </el-row>
      <el-checkbox v-model="iAgree">
        自动登录
      </el-checkbox>
    </div>
    <div class="part-right">
      <h3>合作网站登录</h3>
      <el-row>
        <el-button round>QQ登录</el-button>
        <el-button round>微信登录</el-button>
        <el-button round>微博登录</el-button>
      </el-row>
      <p>没有账号<a href="#">注册账号&gt;&gt;</a></p>
    </div>
  </div>
</template>
<script>
export default {
  data() {
    return {
      phone: "",
      checkCode: "",
      iAgree:false,
    };
  }
};
</script>
<style scoped>
a{
  text-decoration: none;
}
.reg-part {
  width: 638px;
  padding: 30px;
  display: flex;
}
.reg-part .part-left{
  padding-right: 10px;
  border-right: 1px solid #ddd;
}
.reg-part >>> .el-input__inner {
  border: none;
  border-bottom: 1px solid #ddd;
  border-radius: 0;
  width: 343px;
  height: 37px;
  padding-top: 8px;
}
.reg-part .slide {
  width: 340px;
  height: 32px;
  background: #ccc;
  margin-top: 20px;
}
.reg-part .el-button{
  width: 343px;
  margin-top: 8px;
}
.reg-part .el-checkbox{
  margin-top: 10px;
}
.reg-part >>> .el-checkbox__input.is-checked+.el-checkbox__label{
  color: #555;
}
.reg-part .part-right{
  text-align: center;
}
.reg-part .part-right .el-button{
  margin-left: 8px;
}
.reg-part .part-right p{
  margin-left: 8px;
}
.reg-part .part-right p>a{
  color: #2f5fff;
}
</style>