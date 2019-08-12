<template>
  <div class="reg-part">
    <div class="part-left">
      <h3>注册遇见账号</h3>
      <el-input placeholder="手机号" prefix-icon="el-icon-phone" v-model="phone"></el-input>
      <span></span>
      <el-input placeholder="密码" prefix-icon="el-icon-phone" v-model="checkCode" type="password"></el-input>
      <span></span>
      <div class="slide"></div>
      <el-row>
        <el-button type="primary">立即注册</el-button>
      </el-row>
      <el-checkbox v-model="iAgree">
        我同意
        <a href="#">《服务协议》、</a>
        <a href="#">《隐私保密协议》</a>
      </el-checkbox>
    </div>
    <div class="part-right">
      <h3>合作网站登录</h3>
      <el-row>
        <el-button round>QQ登录</el-button>
        <el-button round>微信登录</el-button>
        <el-button round>微博登录</el-button>
      </el-row>
      <p>已有账号<a href="javascript:;" @click="open">登录&gt;&gt;</a></p>
    </div>
    <div class="close el-icon-close" @click="close"></div>
  </div>
</template>
<script>
export default {
  data() {
    return {
      phone: "",
      checkCode: "",
      iAgree:false,
    }
  },
  props:{
    cname:{type:String}
  },
  methods: {
    close(){
      this.$emit("closeR")
    },
    open(){
      this.$emit("openL")
    }
  },
}
</script>
<style scoped>
a{
  text-decoration: none;
}
.reg-part {
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
  width: 290px;
}
.reg-part .part-right .el-button{
  margin-left: 8px;
  width: 260px;
}
.reg-part .part-right p{
  margin-left: 8px;
}
.reg-part .part-right p>a{
  color: #2f5fff;
}
.reg-part .el-icon-close:hover{
  color: #2f5fff;
  cursor: pointer;
}
</style>