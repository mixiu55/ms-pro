<template>
  <div class="index-page">
    <my-header />
    <!-- 上端图片、搜索部分 -->
    <div class="banner_box">
      <!-- 轮播图 -->
      <div class="banner" id="i_banner">
        <ul class="banner_ul clear_both" id="i_banner_ul">
          <li class="banner_item">
            <a href>
              <img src="imgs/index/room5.png" alt />
            </a>
          </li>
          <li class="banner_item">
            <a href>
              <img src="imgs/index/room6.png" alt />
            </a>
          </li>
          <li class="banner_item">
            <a href>
              <img src="imgs/index/room7.png" alt />
            </a>
          </li>
          <li class="banner_item">
            <a href>
              <img src="imgs/index/room8.png" alt />
            </a>
          </li>
          <!-- 多出一张为了轮播 -->
          <li class="banner_item">
            <a href>
              <img src="imgs/index/room5.png" alt />
            </a>
          </li>
        </ul>
      </div>
      <!-- 前后箭头 -->
      <span class="arrow_prev" id="i_arw_prev">
        <a href="javascript:;" class="iconfont icon-icon-arrow-left"></a>
      </span>
      <span class="arrow_next" id="i_arw_next">
        <a href="javascript:;" class="iconfont icon-icon-arrow-right"></a>
      </span>
      <!-- 轮播图结束 -->
      <!-- 搜索框 -->
      <div class="search_box">
        <ul class="booking_box clear_both">
          <li class="booking_item">
            <a class="place_icon_box" href>
              <span class="place_icon iconfont icon-ditu"></span>
            </a>
            <input class="place_txt" type="text" placeholder="目的地/景点/关键词" />
          </li>
          <li class="booking_item">
            <!-- <span class="time_icon iconfont icon-riqi"></span> -->
            <el-date-picker
              v-model="value1"
              type="daterange"
              range-separator="至"
              start-placeholder="开始日期"
              end-placeholder="结束日期"
            ></el-date-picker>
          </li>
          <li class="booking_item">
            <a class="btn_search" href>
              搜索&nbsp;&nbsp;
              <span class="iconfont icon-icon-Search"></span>
            </a>
          </li>
        </ul>
      </div>
    </div>
    <!-- 主体部分 -->
    <section>
      <!-- 房型部分 -->
      <div class="title">
        <h1>遇见旅途，享受旅途</h1>
      </div>
      <div class="house_type_box clear_both">
        <div class="h_left_part clear_both fl">
          <div class="fl photo_box houses" @click="goTot(0)">
            <a href="#">
              <img :src="t1.pic==undefined?'':`${baseUrl}${t1.pic}`"  alt />
            </a>
            <span class="photo_name" v-text="t1.title"></span>
          </div>
          <div class="fl photo_box house" @click="goTot(1)">
            <a href="#">
              <img :src="t2.pic==undefined?'':`${baseUrl}${t2.pic}`"  alt />
            </a>
            <span class="photo_name" v-text="t2.title"></span>
          </div>
          <div class="fl photo_box view" @click="goTot(2)">
            <a href="#">
              <img :src="t3.pic==undefined?'':`${baseUrl}${t3.pic}`"  alt />
            </a>
            <span class="photo_name" v-text="t3.title"></span>
          </div>
        </div>
        <div class="h_right_part clear_both fr">
          <div class="fl photo_box inn" @click="goTot(3)">
            <a href="#">
              <img :src="t4.pic==undefined?'':`${baseUrl}${t4.pic}`"  alt />
            </a>
            <span class="photo_name" v-text="t4.title"></span>
          </div>
          <div class="fl photo_box villa" @click="goTot(4)">
            <a href="#">
              <img :src="t5.pic==undefined?'':`${baseUrl}${t5.pic}`"  alt />
            </a>
            <span class="photo_name" v-text="t5.title"></span>
          </div>
          <div class="fl photo_box apart" @click="goTot(5)">
            <a href="#">
              <img :src="t6.pic==undefined?'':`${baseUrl}${t6.pic}`"  alt />
            </a>
            <span class="photo_name" v-text="t6.title"></span>
          </div>
        </div>
      </div>
      <!-- 房型结束 -->
      <!-- 特殊主题推荐 -->
      <div class="title">
        <h1>遇见旅途，特色主题</h1>
      </div>
      <div class="special_title clear_both">
        <div class="s_img_box fl" v-for="(com,i) of arr" :key="i" @click="goToc(i)">
          <a href="javascript:;">
            <img :src="com==undefined?'':`${baseUrl}${com.pic}`" alt />
          </a>
          <h1 v-text="com.title"></h1>
        </div>
      </div>
      <!-- 特殊主题推荐结束 -->
      <!-- 服务承诺 -->
      <div class="title">
        <h1>遇见旅途，值得信赖</h1>
      </div>
      <ul class="security">
        <li class="security_item">
          <a href>
            <span class="iconfont icon-zhufangbaozhang"></span>
            <h3>房源保真</h3>
          </a>
        </li>
        <li class="security_item">
          <a href>
            <span class="iconfont icon-icon-service"></span>
            <h3>贴心客服</h3>
          </a>
        </li>
        <li class="security_item">
          <a href>
            <span class="iconfont icon-jieguobaozhang"></span>
            <h3>安心入住</h3>
          </a>
        </li>
        <li class="security_item">
          <a href>
            <span class="iconfont icon-icon-idcard"></span>
            <h3>身份认证</h3>
          </a>
        </li>
      </ul>
    </section>
    <my-footer />
  </div>
</template>
<script>
export default {
  data() {
    return {
      baseUrl:"http://127.0.0.1:5050/",
      value1:"",
      t1:{},
      t2:{},
      t3:{},
      t4:{},
      t5:{},
      t6:{},
      arr:[],
      paths:["上海","北京","广州","深圳","上海","深圳"],//标题跳转路径
      path:["上海","北京","广州","深圳"]//主题路径
		}
  },
  created(){
    // 创建的时候就去请求
    var url="index";
    this.axios.get(url).then(result=>{
      var [t1,t2,t3,t4,t5,t6]=result.data;
      this.t1=t1;
      this.t2=t2;
      this.t3=t3;
      this.t4=t4;
      this.t5=t5;
      this.t6=t6;
      this.arr=result.data.slice(6);
      
    })
  },
  methods: {
    // 页面跳转
    // 1：标题跳转
    goTot(i){
      this.$router.push(`house/${this.paths[i]}`);
    },
    // 2：主题跳转
    goToc(n){
      this.$router.push(`house/${this.path[n]}`);
    }
  },
};
</script>
<style scoped>
div,
ul,
h1,
h3 {
  margin: 0;
  padding: 0;
}
body,
button,
input,
select,
textarea {
  font-family: Arial, Helvetica, sans-serif;
  color: #333;
}
ul {
  list-style: none;
}
a {
  text-decoration: none;
}
.fl {
  float: left;
}
.fr {
  float: right;
}
.clear_both::after {
  content: "";
  display: block;
  clear: both;
}
/* 轮播图 */
.banner_box {
  position: relative;
  width: 100%;
}
.banner {
  width: 100%;
  overflow: hidden;
  position: relative;
  height: 650px;
}
.banner_ul {
  width: 8000px;
}
.banner_ul > li.banner_item {
  float: left;
}
.banner_item img {
  width: 100%;
}
.banner_ul.transition {
  transition: all 0.5s linear;
}
/* 箭头部分 */
.banner_box .arrow_prev,
.banner_box .arrow_next {
  position: absolute;
  top: 43%;
  text-align: center;
}
.banner_box .arrow_prev {
  left: 5px;
}
.banner_box .arrow_next {
  right: 5px;
}
.arrow_next a,
.arrow_prev a {
  display: inline-block;
  width: 45px;
  height: 80px;
  line-height: 75px;
  background: rgba(0, 0, 0, 0.3);
  font-size: 50px;
  color: #eee;
  border-radius: 3px;
}
/* 搜索框 */
.search_box {
  position: absolute;
  bottom: 100px;
  left: 16%;
  width: 930px;
}
.index-page .el-range-editor.el-input__inner{
	border: none;
}
.index-page .el-range-editor.el-input__inner{
	font-size: 25px;
}
.booking_box .booking_item {
  float: left;
  width: 375px;
  height: 60px;
  background: #fff;
  line-height: 60px;
  border-radius: 3px;
}
.booking_item + .booking_item {
  margin-left: 2px;
}
.booking_item input {
  outline: none;
  border: 0;
  width: 320px;
}
/* 地图小图标、预订时间 */
.place_icon_box,
.time_icon {
  width: 55px;
  height: 60px;
  float: left;
  text-align: center;
  line-height: 55px;
  font-size: 30px;
}
.icon-ditu {
  font-size: 28px;
  color: #333;
}
/* 搜索 */
.booking_item:last-child {
  width: 176px;
  text-align: center;
  background: #2fb3ff;
}
.btn_search {
  display: inline-block;
  width: 100%;
  height: 100%;
  color: #fff;
}
.btn_search:hover {
  background: #2cc5ff;
}
/* 主体部分 */
section {
  width: 1050px;
  margin: 0 auto;
}
/* 标题部分 */
.title {
  height: 60px;
  line-height: 60px;
  margin: 35px 0;
}
.title > h1 {
  width: 100%;
  text-align: center;
}
/* 房型部分 */
.h_left_part,
.h_right_part {
  width: 516px;
}
.h_left_part > div,
.h_right_part > div {
  overflow: hidden;
  border-radius: 10px;
}
.h_left_part > div img,
.h_right_part > div img {
  transition: 1s;
}
.h_left_part > div img:hover,
.h_right_part > div img:hover {
  transform: scale(1.05);
}
.photo_box {
  position: relative;
}
.photo_box.houses,
.photo_box.inn,
.photo_box.villa {
  margin-bottom: 8px;
}
.photo_box.view,
.photo_box.villa {
  margin-left: 20px;
}
.house_type_box .photo_name {
  position: absolute;
  bottom: 0px;
  left: 0;
  height: 40px;
  line-height: 40px;
  width: 90px;
  text-align: center;
  background: #f8ebeb;
  color: #2fb3ff;
  font-size: 22px;
  font-weight: 600;
  border-radius: 0 25px 0px 0px;
}
/* 特殊主题推荐 */
.s_img_box {
  height: 335px;
  width: 252px;
  overflow: hidden;
  border-radius: 10px;
  position: relative;
}
.s_img_box + .s_img_box {
  margin-left: 14px;
}
.s_img_box img {
  transition: 1s;
}
.s_img_box img:hover {
  transform: scale(1.1);
}
.s_img_box > h1 {
  position: absolute;
  top: 50%;
  left: 25%;
  color: #fff;
  background: rgba(0, 0, 0, 0.1);
  border-radius: 5px;
  height: 30px;
  line-height: 30px;
}
/* 服务承诺 */
.security {
  display: flex;
  justify-content: space-between;
}
.security_item {
  width: 160px;
  height: 160px;
  text-align: center;
  border: 1px solid #fff;
}
.security_item span {
  font-size: 85px;
  color: #2fb3ff;
}
.security_item h3 {
  padding: 20px 0;
  font-weight: 500;
}
.security_item:hover {
  border: 1px solid #ccc;
  border-radius: 10px;
  box-shadow: 2px 2px 5px #bbb;
}
.security_item a {
  color: #333;
}
.security_item a:hover {
  color: #2fb3ff;
}
</style>
