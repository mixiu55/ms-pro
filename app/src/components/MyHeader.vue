<template>
  <div class="nav">
    <a href>
      <img src="imgs/logo-text-small.png" alt="遇见民宿logo" />
    </a>
    <ul class="nav_ul">
      <li class="nav_li">
        <a href="javascript:;" @click="change('login')">登录</a>
      </li>
      <li class="nav_li">
        <a href="javascript:;" @click="change('reg')">注册</a>
      </li>
      <li class="nav_li myself">
        <a href>我的遇见</a>
        <ul class="my_meet">
          <li class="guide_item">
            <a href>我的信息</a>
          </li>
          <li class="guide_item">
            <a href>我的收藏</a>
          </li>
          <li class="guide_item">
            <a href>客服中心</a>
          </li>
          <li>
            <span class="item_bd">◆</span>
            <span class="item_bg">◆</span>
          </li>
        </ul>
      </li>
    </ul>
		<my-login :cname="cname" v-if="cname==='login'" @closeL="closeLog" @openR="openReg"/>
		<my-reg :cname="cname" v-if="cname==='reg'" @closeR="closeReg" @openL="openLog"/>
  </div>
</template>
<script>
import Login from './Login'
import Register from './Register'
export default {
  data() {
    return {
			cname:{default:""},
		}
	},
	components:{
		"my-login":Login,
		'my-reg':Register
	},
	methods: {
		change(str){
			this.cname=str;
		},
		closeLog(){
			this.cname=""
		},
		closeReg(){
			this.cname=""
		},
		openLog(){
			this.cname="login"
		},
		openReg(){
			this.cname="reg"
		},
	},
};
</script>
<style scoped>
div,
ul,
li {
  padding: 0;
  margin: 0;
}
body,
button,
input,
select,
textarea {
  font: 12px, Arial, Helvetica, sans-serif;
  color: #333;
}
a {
  text-decoration: none;
  font: 14px "微软雅黑";
  color: #666;
}
ul {
  list-style: none;
}
/* 头部 */
header {
  height: 70px;
  line-height: 70px;
}
header > div.nav {
  width: 1050px;
  margin: 0 auto;
  position: relative;
}
.nav .nav_ul {
  display: flex;
  float: right;
  padding-right: 10px;
}
.nav .nav_li {
  height: 70px;
  line-height: 70px;
}
.nav_li + .nav_li::before {
  content: "·";
  color: #666;
  padding: 0 10px;
}
.nav_li > a {
  display: inline-block;
  height: 70px;
  line-height: 70px;
  border-top: 2px solid transparent;
}
.nav_li > a:hover {
  color: #2fb3ff;
  border-top: 2px solid #2fb3ff;
}
/* 我的遇见 */
.my_meet {
  width: 80px;
  position: absolute;
  right: 0px;
  top: 60px;
  border: 1px solid #2fb3ff;
  box-shadow: 1px 1px 10px #62c6f8;
  display: none;
	z-index:1;
	background-color:#fff; 
}
.guide_item {
  height: 25px;
  line-height: 25px;
  text-align: center;
}
.guide_item a {
  font-size: 12px;
}
.guide_item a:hover {
  font-size: 12px;
  color: #2fb3ff;
}
.item_bg {
  color: #fff;
  position: absolute;
  top: -34px;
  left: 37px;
  font-size: 16px;
}
.item_bd {
  color: #2fb3ff;
  position: absolute;
  top: -35.5px;
  left: 37px;
  font-size: 16px;
}
.myself:hover .my_meet {
  display: block;
}
</style>

