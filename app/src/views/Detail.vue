<template>
  <div class="detail-page">
    <my-header />
    <section class="clear_both">
      <!-- 标题 -->
      <h1 class="title" v-text="house.title"></h1>
      <!-- 导航栏1 -->
      <div class="house_path">
        <a href>首页</a>
        <a href="#" v-text="house.subtitle"></a>
      </div>
      <!-- 导航栏2 -->
      <div class="info_nav_box clear_both">
        <ul class="info_nav fl clear_both">
          <li class="fl">
            <a href>
              <img src="imgs/logo-text-small.png" alt />
            </a>
          </li>
          <li class="fl current">
            <a href="#house_pic">实拍图片</a>
          </li>
          <li class="fl">
            <a href="#info_detail">详细介绍</a>
          </li>
          <li class="fl">
            <a href="#info_outer">出行信息</a>
          </li>
          <li class="fl">
            <a href="#info_must">入住须知</a>
          </li>
          <li class="fl">
            <a href="#user_commt">用户评价</a>
          </li>
        </ul>
        <ul class="info_price fr clear_both">
          <li class="fl">
            ￥
            <span class="avg_price" v-text="house.price.toFixed(2)"></span>
          </li>
          <li class="fr">每晚</li>
        </ul>
      </div>
      <!-- 左侧详情页开始 -->
      <div class="house_detail fl">
        <!-- 页面轮播图部分 -->
        <div class="main_part">
          <!-- 轮播图部分 -->
          <div id="house_pic" class="house_pic clear_both">
            <!-- 大图部分开始 -->
            <div class="h_pic_lg fl">
              <!-- 图片部分 -->
              <ul class="lg_ul clear_both">
                <li class="lg_item clear_both" v-for="(p,i) of pics" :key="i">
                  <a class="fl clear_both" href="#">
                    <img id="bigImg" class="fl" :src="`${baseUrl}${p.md}`" alt />
                  </a>
                </li>
              </ul>
              <!-- 前后箭头 -->
              <a class="arrow_prev" href="javascript:;"></a>
              <a class="arrow_next" href="javascript:;"></a>
            </div>
            <!-- 大图部分结束 -->
            <!-- 小图部分开始 -->
            <div class="h_pic_sm fr" id="sm_pic_h">
              <ul class="sm_ul" id="sm_ul">
                <li class="sm_item" v-for="(p,i) of pics" :key="i">
                  <div class="pic_layer"></div>
                  <img
                    :src="`${baseUrl}${p.sm}`"
                    data-lg="imgs/houseimg/lg/10001-1.jpg"
                    alt
                  />
                </li>
              </ul>
              <a id="sm_prev" class="sm_prev iconfont icon-icon-arrow-up" href="javascript:;"></a>
              <a id="sm_next" class="sm_next iconfont icon-icon-arrow-down" href="javascript:;"></a>
            </div>
            <!-- 小图部分结束 -->
          </div>
          <!-- 房间特色部分开始 -->
          <div class="house_feature">
            <ul class="h_feature_ul clear_both">
              <li class="h_f_item">
                <h2 v-text="house.rent">
                  <span class="iconfont icon-zhufangbaozhang"></span>
                </h2>
                <p v-text="`房屋面积：${house.harea}m²`"></p>
                <p v-text="`房屋类型：${house.htype}`"></p>
              </li>
              <li class="h_f_item">
                <h2>
                  <span class="iconfont icon-kongqijinghuaqi" v-text="house.peopel"></span>
                </h2>
                <p>房客独享整套房屋</p>
              </li>
              <li class="h_f_item">
                <h2>
                  <span class="iconfont icon-jiachuangfuwu" v-text="house.bednum"></span>
                </h2>
                <p v-text="house.bedsize"></p>
              </li>
            </ul>
          </div>
          <!-- 房源介绍开始 -->
          <ul class="h_produce">
            <!-- 个人描述 -->
            <li id="info_detail" class="h_pro_item clear_both">
              <div class="info_title fl">
                <div class="iconfont icon-zhufangbaozhang"></div>
                <h1>个性描述</h1>
              </div>
              <div class="info_fr fr">
                <div class="info_contain">
                  <p v-html="house.favorite">
                  </p>
                </div>
                <div class="control_open">
                  查看全部&nbsp;
                  <span class="iconfont icon-icon-arrow-down"></span>
                </div>
                <div class="control_close">
                  收起&nbsp;
                  <span class="iconfont icon-icon-arrow-up"></span>
                </div>
              </div>
            </li>
            <!-- 出行信息 -->
            <li id="info_outer" class="h_pro_item clear_both">
              <div class="info_title fl">
                <div class="iconfont icon-jichangjiesong"></div>
                <h1>出行信息</h1>
              </div>
              <div class="info_fr fr">
                <div class="info_contain">
                  <p v-html="house.travel">
                  </p>
                </div>
                <div class="control_open">
                  查看全部&nbsp;
                  <span class="iconfont icon-icon-arrow-down"></span>
                </div>
                <div class="control_close">
                  收起&nbsp;
                  <span class="iconfont icon-icon-arrow-up"></span>
                </div>
              </div>
            </li>
            <!-- 房间设施 -->
            <li class="h_pro_item clear_both">
              <div class="info_title fl">
                <div class="iconfont icon-kongqijinghuaqi"></div>
                <h1>房间设施</h1>
              </div>
              <div class="info_fr fr">
                <div class="info_contain">
                  <ul class="h_facility clear_both">
                    <li class="h_faly_item">
                      <span class="iconfont icon-beidangenghuan"></span>被单更换
                    </li>
                    <li class="h_faly_item">
                      <span class="iconfont icon-dianti"></span>电梯
                    </li>
                    <li class="h_faly_item">
                      <span class="iconfont icon-qingsaogongju"></span>每日打扫
                    </li>
                    <li class="h_faly_item">
                      <span class="iconfont icon-WiFi"></span>无线网络
                    </li>
                    <li class="h_faly_item">
                      <span class="iconfont icon-chuifengji"></span>吹风机
                    </li>
                    <li class="h_faly_item">
                      <span class="iconfont icon-kongtiao"></span>空调
                    </li>
                    <li class="h_faly_item">
                      <span class="iconfont icon-xishuyongpin"></span>洗漱用品
                    </li>
                    <li class="h_faly_item">
                      <span class="iconfont icon-tuoxie"></span>拖鞋
                    </li>
                    <li class="h_faly_item">
                      <span class="iconfont icon-quantianreshui"></span>24小时热水
                    </li>
                    <li class="h_faly_item">
                      <span class="iconfont icon-miehuoqi"></span>灭火器
                    </li>
                    <li class="h_faly_item">
                      <span class="iconfont icon-duijiangmenjin"></span>智能锁
                    </li>
                    <li class="h_faly_item">
                      <span class="iconfont icon-keyongchufang"></span>厨房
                    </li>
                    <li class="h_faly_item">
                      <span class="iconfont icon-canju"></span>餐具
                    </li>
                    <li class="h_faly_item">
                      <span class="iconfont icon-youyongchi"></span>游泳池
                    </li>
                    <li class="h_faly_item">
                      <span class="iconfont icon-jiachuangfuwu"></span>加床服务
                    </li>
                    <li class="h_faly_item">
                      <span class="iconfont icon-tingchewei"></span>停车场
                    </li>
                    <li class="h_faly_item">
                      <span class="iconfont icon-weibolu"></span>微波炉
                    </li>
                    <li class="h_faly_item">
                      <span class="iconfont icon-youxianwangluo"></span>有线网络
                    </li>
                    <li class="h_faly_item">
                      <span class="iconfont icon-wuzhangaisheshi"></span>无障碍设施
                    </li>
                    <li class="h_faly_item">
                      <span class="iconfont icon-jianshen"></span>健身房
                    </li>
                  </ul>
                </div>
                <div class="control_open">
                  查看全部&nbsp;
                  <span class="iconfont icon-icon-arrow-down"></span>
                </div>
                <div class="control_close">
                  收起&nbsp;
                  <span class="iconfont icon-icon-arrow-up"></span>
                </div>
              </div>
            </li>
            <!-- 入住须知 -->
            <li id="info_must" class="h_pro_item clear_both">
              <div class="info_title fl">
                <div class="iconfont icon-jichangjiesong"></div>
                <h1>入住须知</h1>
              </div>
              <div class="info_fr fr">
                <div class="info_contain">
                  <ul class="must_know clear_both">
                    <li class="know_item">
                      接待时间：
                      <span class="know_info" v-text="house.mcome"></span>
                    </li>
                    <li class="know_item">
                      最少入住：
                      <span class="know_info" v-text="house.mleast"></span>
                    </li>
                    <li class="know_item">
                      退房时间：
                      <span class="know_info" v-text="house.mleave"></span>
                    </li>
                    <li class="know_item">
                      最多入住：
                      <span class="know_info" v-text="house.mmore"></span>
                    </li>
                    <li class="know_item">
                      外宾接待：
                      <span class="know_info" v-text="house.mout"></span>
                    </li>
                  </ul>
                </div>
              </div>
            </li>
          </ul>
          <!-- 房源介绍结束 -->
          <!-- 房源评论开始 -->
          <div id="user_commt" class="h_comment_box">
            <ul class="has_commt clear_both">
              <li class="this_hs fl cur">
                <span class="iconfont icon-icon-mqs"></span> 本房源评价
              </li>
              <li class="other_hs fl">
                <span class="iconfont icon-icon-mqs"></span> 房东其他房源评价
              </li>
            </ul>
            <!-- 评价星级 -->
            <div class="commt_star_box clear_both">
              <div class="start_l fl">
                <div class="score">
                  5
                  <span>/5分</span>
                </div>
                <ul class="star_ul">
                  <li class="star_info">
                    <i class="light_star"></i>
                  </li>
                  <li class="star_info">
                    <i class="light_star"></i>
                  </li>
                  <li class="star_info">
                    <i class="light_star"></i>
                  </li>
                  <li class="star_info">
                    <i class="light_star"></i>
                  </li>
                  <li class="star_info">
                    <i class="grey_star"></i>
                  </li>
                </ul>
              </div>
              <ul class="score_detail fl clear_both">
                <li class="s_dtl_item">
                  整洁卫生：
                  <span>5分</span>
                </li>
                <li class="s_dtl_item">
                  描述相符：
                  <span>5分</span>
                </li>
                <li class="s_dtl_item">
                  交通位置：
                  <span>5分</span>
                </li>
                <li class="s_dtl_item">
                  安全指数：
                  <span>5分</span>
                </li>
                <li class="s_dtl_item">
                  周围环境：
                  <span>5分</span>
                </li>
                <li class="s_dtl_item">
                  性价比：
                  <span>5分</span>
                </li>
              </ul>
            </div>
            <!-- 评论内容 -->
            <div class="comment_list">
              <div class="com_contain clear_both">
                <img class="fl dp_pic" src="imgs/user/user1.jpg" alt />
                <div class="com_txt fl">
                  <h4>
                    <span class="dp_uname">小小益达_TL</span>入住时间：
                    <i class="life_time">2019年06月</i>
                  </h4>
                  <p class="user_com">挺好的~~~</p>
                  <div class="replay_com dn"></div>
                </div>
              </div>
              <div class="com_contain clear_both">
                <img class="fl dp_pic" src="imgs/user/userDefault.png" alt />
                <div class="com_txt fl">
                  <h4>
                    <span class="dp_uname">喝醉的猫33^</span>入住时间：
                    <i class="life_time">2019年07月</i>
                  </h4>
                  <p
                    class="user_com"
                  >房间非常漂亮，而且干净，装修是北欧工业风格，十分漂亮，大家可以安心入住。房东人非常友好，亲自在小区门口迎接了我们，让我们感到特别暖心，房东主动告诉我上海的经典旅游线路，让我充分的感受到上海这座城市的美丽发达。最后给房东和房子一个大大的赞吧</p>
                  <div class="replay_com">
                    <img class="fl dp_pic" src="imgs/user/userDefault.png" alt />
                    <div class="replay_txt fl">
                      <span class="iconfont icon-icon-arrow-down"></span>
                      <h4>房东回复:</h4>
                      <p
                        class="host_com"
                      >非常好的客人，因为下午有拍摄所以有咨询客人大概几点退房，客人非常配合，走了之后协调阿姨过去打扫卫生，阿姨说客人住的太干净了，连卫生间垃圾都一起带走，打扫这么久第一次遇到这么高素质得客人，真的非常感谢您像爱护自己家一样爱护我们民宿，非常非常感谢，以后一机会在来苏州请提前告知一定会给一个很好的折扣</p>
                    </div>
                  </div>
                </div>
              </div>
            </div>
            <!-- 房源评论结束 -->
          </div>
        </div>
      </div>
      <!-- 左侧详情页结束 -->
      <!-- 右侧介绍开始 -->
      <div class="house_right fl">
        <div class="h_r_time">
          <el-date-picker
            v-model="value1"
            type="daterange"
            range-separator="至"
            start-placeholder="开始日期"
            end-placeholder="结束日期"
          ></el-date-picker>
          <!-- 下拉菜单 -->
          <el-dropdown>
            <span class="el-dropdown-link">
              1套
              <i class="el-icon-arrow-down el-icon--right"></i>
            </span>
            <el-dropdown-menu slot="dropdown">
              <el-dropdown-item>1套</el-dropdown-item>
            </el-dropdown-menu>
          </el-dropdown>
        </div>
        <a class="booking">立即预定</a>
      </div>
      <!-- 右侧介绍结束 -->
    </section>
    <my-footer />
    <btm-nav/>
  </div>
</template>
<script>
export default {
  data() {
    return {
      baseUrl:"http://127.0.0.1:5050/",
      value1: "",
      house:{price:0},
      pics:[],
    };
  },
  props:["hid"],//SAN:接收参数
  methods: {
    load(){
      if(this.hid){
        var url="details";
        this.axios.get(url,{params:{hid:this.hid}}).then(result=>{
          // console.log(result.data);
          var {house,pics}=result.data;
          // console.log(house);
          // console.log(pics);
          this.house=house;
          this.pics=pics;
          // console.log(`${this.baseUrl}${pics[0].md}`)
        })
      }
    }
  },
  created() {
    this.load()
  },
};
</script>
<style scoped>
body,
button,
input,
select,
textarea {
  font: 14px Arial, Helvetica, sans-serif;
  color: #333;
}
body {
  background: #eee;
}
ul,
li,
p,
h2,
h1,
h4 {
  margin: 0;
  padding: 0;
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
a {
  text-decoration: none;
  color: #333;
}
a:hover {
  color: #2fb3ff;
}
ul,
dl,
li,
dd {
  list-style: none;
}
i {
  font-style: normal;
}
.dn {
  display: none;
}
section {
  width: 1240px;
  margin: 0 auto;
}
/* 标题 */
section>h1:first-child{
  white-space: nowrap;
  overflow: hidden;
  text-overflow: ellipsis;
  max-width: 780px;
  font-weight: normal;
  font-size: 32px;
  margin: 15px 0;
}
/* 顶部导航 */
.house_path > a + a::before {
  content: ">";
  padding: 0px 5px;
  color: #333;
}
/* 导航栏2 */
.info_nav_box li {
  text-align: center;
  height: 70px;
  line-height: 70px;
  border-bottom: 2px solid transparent;
  background: rgba(3, 50, 255, 0.1);
}
.info_nav li:not(:first-child) {
  width: 130px;
}
.info_nav li:not(:first-child):hover {
  border-bottom: 2px solid #2fb3ff;
}
.info_nav a {
  display: block;
  height: 100%;
  width: 100%;
  font-size: 20px;
}
.info_nav li:not(:first-child).current {
  border-bottom: 2px solid #2fb3ff;
}
.info_price {
  width: 397px;
  background: #2fb3ff;
  color: #fff;
  font-size: 20px;
}
.info_price li {
  width: 198.5px;
}
/* 主要内容 */
.main_part {
  width: 840px;
  background: #fff;
}
/* 大图片轮播开始 */
/* 大图片div */
.h_pic_lg {
  width: 735px;
  height: 490px;
  overflow: hidden;
  position: relative;
}
.lg_item img {
  width: 100%;
}
.lg_item:not(:first-child) {
  display: none;
}
.arrow_prev,
.arrow_next {
  position: absolute;
  left: 0;
  width: 100%;
  height: 50%;
  background: #fff;
  opacity: 0;
}
.arrow_prev {
  top: 0;
  cursor: url("../assets/imgs/houseimg/mouseup.png"), auto;
}
.arrow_next {
  top: 50%;
  cursor: url("../assets/imgs/houseimg/mousedown.png"), auto;
}
/* 大图片轮播结束 */
/* 小图轮播开始 */
.h_pic_sm {
  width: 100px;
  height: 490px;
  overflow: hidden;
  position: relative;
}
.h_pic_sm img {
  width: 100%;
}
.h_pic_sm>ul>li{
  max-height: 65px;
  overflow: hidden;
  margin:5px 0 ;
}
.sm_prev,
.sm_next {
  position: absolute;
  left: 0px;
  height: 30px;
  width: 100%;
  background: rgba(0, 0, 0, 0.5);
  text-align: center;
  line-height: 30px;
}
.h_pic_sm > a {
  color: #eee;
}
.sm_prev {
  top: 0px;
}
.sm_next {
  bottom: 0px;
}
.pic_cure {
  border: 2px solid #2fb3ff;
  height: 62.7px;
  width: 96px;
  position: absolute;
  cursor: pointer;
  }
.pic_layer {
  height: 64.7px;
  width: 100px;
  position: absolute;
  cursor: pointer;
  background: rgba(0, 0, 0, 0.1);
}
/* 小图轮播结束 */
/* 房源特色部分 */
.house_feature {
  margin: 15px 0;
}
.house_feature .h_f_item {
  float: left;
  width: 280px;
  box-sizing: border-box;
  padding-left: 50px;
  height: 64.7px;
}
.house_feature .h_f_item:not(:first-child) {
  border-left: 1px solid #ddd;
}
.h_f_item > h2 {
  font-weight: normal;
  color: #222;
}
.h_f_item > h2 > span {
  font-size: 25px;
}
.h_f_item > p {
  margin-top: 5px;
}
/* 房源详细介绍 */
.h_produce {
  padding: 0 15px;
}
.h_pro_item {
  border-top: 1px solid #ddd;
  padding: 15px 0;
}
/* 标题 */
.info_title {
  color: #222;
}
.info_title > div {
  font-size: 65px;
  text-align: center;
}
.info_title > h1 {
  font-weight: normal;
}
/* 内容 */
.info_fr {
  width: 650px;
}
.info_contain {
  height: 100px;
  overflow: hidden;
}
.info_contain > p {
  /*只对英文单词有用*/
  word-wrap: break-word; /*比较温柔，会先另起一行，新的行放不到再把单词断了*/
  word-break: break-all; /*他不会去新起一行，而是直接在后面跟着，如果放不下，则会强制把单词折断。*/
  line-height: 24px;
}
.control_open,
.control_close {
  font-size: 12px;
  cursor: pointer;
  color: #2fb3ff;
}
.control_open > span,
.control_close > span {
  font-size: 12px;
}
.control_close {
  display: none;
}
/* 周边配套 */
.h_faly_item {
  float: left;
  width: 140px;
  padding: 3px 17px;
  font-size: 14px;
  box-sizing: border-box;
}
.h_faly_item > span {
  font-size: 24px;
  padding-right: 10px;
}
.h_faly_item.has_not {
  color: #999;
}
/* 入住须知 */
.know_item {
  width: 350px;
  float: left;
  line-height: 37px;
}
/* 房源评价 */
.has_commt {
  border-top: 1px solid #ddd;
  border-bottom: 1px solid #ddd;
  padding-top: 30px;
}
.has_commt li {
  margin: 10px 30px 5px 0px;
  border-bottom: 2px solid transparent;
  padding: 5px;
  cursor: pointer;
}
.has_commt li.cur {
  border-bottom: 2px solid #2fb3ff;
}
.has_commt li > span {
  color: #2fb3ff;
}
/* 评价开始 */
.h_comment_box {
  padding: 0px 15px;
}
.commt_star_box .score {
  font-size: 35px;
}
.score > span {
  font-size: 24px;
}
.star_ul li {
  float: left;
}
.star_info i {
  display: inline-block;
  width: 18px;
  height: 18px;
}
/* 评价星星 */
.star_info .light_star {
  background: url("../assets/imgs/houseimg/commt/yellow_star.png") no-repeat;
}
.star_info .grey_star {
  background: url("../assets/imgs/houseimg/commt/gray_star.png") no-repeat;
}
.start_l {
  padding: 20px 30px 20px 75px;
}
.score_detail {
  width: 615px;
  margin-top: 17px;
}
.score_detail li {
  float: left;
  width: 160px;
  height: 35px;
  line-height: 35px;
}
/* 评价内容 */
.com_contain {
  margin: 0 50px;
  border-top: 1px solid #ddd;
  padding: 15px 0px;
}
.dp_pic {
  width: 72px;
  height: 72px;
  border-radius: 50%;
}
.com_txt {
  width: 668px;
  box-sizing: border-box;
  padding-left: 20px;
}
.com_txt > h4 {
  font-weight: normal;
  margin-bottom: 10px;
}
.com_txt .dp_uname {
  color: #2fb3ff;
  font-weight: bold;
  padding-right: 10px;
}
.com_txt .user_com {
  line-height: 25px;
}
.replay_com {
  margin-top: 10px;
  padding: 10px 0;
  border-top: 1px solid #ddd;
}
.replay_txt {
  width: 576px;
  box-sizing: border-box;
  padding-left: 20px;
  position: relative;
}
.replay_txt > h4 {
  font-weight: normal;
  color: #888;
}
.replay_txt .iconfont {
  color: #ddd;
  background: #fff;
  position: absolute;
  top: -14px;
  left: 20px;
  font-size: 12px;
}
/* 评价结束 */
/* 右侧边栏 */
.house_right {
  margin-left: 3px;
  width: 397px;
  background: #fff;
}
.h_r_time {
  padding: 10px;
  text-align: center;
  height: 20px;
  line-height: 20px;
  font-size: 14px;
  display: flex;
  justify-content: space-between;
}
.el-input__inner {
  border-radius: 0;
}
.deatil-page .el-date-editor--daterange.el-input,
.el-date-editor--daterange.el-input__inner,
.el-date-editor--timerange.el-input,
.el-date-editor--timerange.el-input__inner {
  width: 285px;
}
.el-dropdown {
  border: 1px solid #ddd;
  width: 75px;
  height: 38px;
  line-height: 38px;
}
.el-dropdown-menu.el-popper {
  width: 75px;
}
.booking {
  display: block;
  padding: 11px 75px;
  margin: 15px 10px;
  background: #f5a;
  color: #fff;
  border-radius: 5px;
  text-align: center;
}
.booking:hover {
  color: #fff;
  background: #04bef7;
}
</style>

