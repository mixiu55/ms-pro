<template>
  <div class="top_box">
    <div class="top_search">
      <ul class="booking_box clear_both">
        <li class="booking_item"><a class="place_icon_box" href=""><span class="place_icon iconfont icon-ditu"></span></a><input class="place_txt" type="text" placeholder="目的地"></li>
        <li class="booking_item"><span class="time_icon iconfont icon-riqi"></span><input type="text" placeholder="选择入住离开时间"></li>
        <li class="booking_item"><span class="word iconfont icon-icon-pen"></span> <input type="text" placeholder="关键词/景点/标题"></li>
        <li class="booking_item"><a class="btn_search" href="">搜索&nbsp;&nbsp;&nbsp;&nbsp;<span class="iconfont icon-icon-Search
            "></span></a></li>
      </ul>
    </div>
    <div class="top_screen">
      <!-- 位置开始 -->
      <div class="screen_position">
        <span class="screen_title">位置</span>
        <span class="screen_unlimit"><a href="">不限</a></span>
        <ul class="position_ul clear_both">
          <li class="pst_item rmtj_li fl">
              <a class="pst_a" href="">热门推荐<i class="small_arrow"></i></a>
              <ul class="rmtj_box clear_both">
                <li class="pst_ul_item">
                    <a class="radio-flag" href="" title="外滩">外滩</a>
                </li>
                <li class="pst_ul_item">
                    <a class="radio-flag" href="" title="上海迪士尼度假区">上海迪士尼度假区</a>
                </li>
                <li class="pst_ul_item">
                    <a class="radio-flag" href="" title="南京步行街">南京步行街</a>
                </li>
                <li class="pst_ul_item">
                    <a class="radio-flag" href="" title="徐家汇">徐家汇</a>
                </li>
                <li class="pst_ul_item">
                    <a class="radio-flag" href="" title="人民广场">人民广场</a>
                </li>
                <li class="pst_ul_item">
                    <a class="radio-flag" href="" title="静安寺">静安寺</a>
                </li>
                <li class="pst_ul_item">
                    <a class="radio-flag" href="" title="田子坊">田子坊</a>
                </li>
                <li class="pst_ul_item">
                    <a class="radio-flag" href="" title="浦东机场">浦东机场</a>
                </li>
                <li class="pst_ul_item">
                    <a class="radio-flag" href="" title="东方明珠">东方明珠</a>
                </li>
                <li class="pst_ul_item">
                    <a class="radio-flag" href="" title="上海欢乐谷">上海欢乐谷</a>
                </li>
              </ul>
            </li>
            <li class="pst_item fl">
              <a class="pst_a" href="">行政区<i class="small_arrow"></i></a>
            </li>
            <li class="pst_item fl">
              <a class="pst_a" href="">商圈<i class="small_arrow"></i></a>
            </li>
            <li class="pst_item fl">
              <a class="pst_a" href="">地铁<i class="small_arrow"></i></a>
            </li>
            <li class="pst_item fl">
              <a class="pst_a" href="">机场/车站<i class="small_arrow"></i></a>
            </li>
            <li class="pst_item fl">
              <a class="pst_a" href="">高校<i class="small_arrow"></i></a>
            </li>
        </ul>
    </div>
    <!-- 位置结束 -->
    <!-- 户型开始 -->
    <div class="screen_h_type">
        <span class="screen_title">户型</span>
        <span class="screen_unlimit"><a href="">不限</a></span>
        <ul class="h_type_ul clear_both">
          <li class="h_type_item fl">
            <label>
              <input class="chb" type="checkbox">一居
            </label>                        
          </li>
          <li class="h_type_item fl">
            <label>
              <input class="chb" type="checkbox">两居
            </label>                        
          </li>
          <li class="h_type_item fl">
            <label>
              <input class="chb" type="checkbox">三居
            </label>                        
          </li>
          <li class="h_type_item fl">
            <label>
              <input class="chb" type="checkbox">四居及以上
            </label>                        
          </li>
        </ul>
    </div>
    <!-- 价格开始 -->
    <div class="screen_price">
      <span class="screen_title">价格</span>
      <span class="screen_unlimit"><a href="">不限</a></span>
      <ul class="price_ul clear_both">
        <li class="price_item fl">
          <label>
            <input class="chb" type="checkbox">￥200以下
          </label>                        
        </li>
        <li class="price_item fl">
          <label>
            <input class="chb" type="checkbox">￥200-300
          </label>                        
        </li>
        <li class="price_item fl">
          <label>
            <input class="chb" type="checkbox">￥300-400
          </label>                        
        </li>
        <li class="price_item fl">
          <label>
            <input class="chb" type="checkbox">￥400-500
          </label>                        
        </li>
        <li class="price_item fl">
          <label>
            <input class="chb" type="checkbox">￥500-800
          </label>                        
        </li>
        <li class="price_item fl">
          <label>
            <input class="chb" type="checkbox">￥800以上
          </label>                        
          </li>
        </ul>
    </div>
    <!-- 配套开始 -->
    <div class="screen_have">
        <span class="screen_title">配套</span>
        <span class="screen_unlimit"><a href="">不限</a></span>
        <ul class="have_ul clear_both">
            <li class="have_item fl">
                <label>
                    <input class="chb" type="checkbox">电梯
                </label>
                </li>
            <li class="have_item fl"> 
                <label>                                 
                    <input class="chb" type="checkbox">WiFi
                </label>
            </li>
            <li class="have_item fl"> 
                <label>                                 
                    <input class="chb" type="checkbox">空调
                </label>
            </li>
            <li class="have_item fl"> 
                <label>                                 
                    <input class="chb" type="checkbox">电视
                </label>
            </li>
            <li class="have_item fl"> 
                <label>                                 
                    <input class="chb" type="checkbox">冰箱
                </label>
            </li>
            <li class="have_item fl"> 
                <label>                                 
                    <input class="chb" type="checkbox">微波炉
                </label>
            </li>
            <li class="have_item fl"> 
                <label>                                 
                    <input class="chb" type="checkbox">24小时热水
                </label>
            </li>
        </ul>
    </div>
    <!-- 特色开始 -->
    <div class="screen_feature">
            <span class="screen_title">特色</span>
            <span class="screen_unlimit"><a href="">不限</a></span>
            <ul class="feature_ul clear_both">
                <li class="have_item fl"> 
                    <label>                                 
                        <input class="chb" type="checkbox">公寓
                    </label>
                </li>
                <li class="have_item fl"> 
                    <label>                                 
                        <input class="chb" type="checkbox">民居
                    </label>
                </li>
                <li class="have_item fl"> 
                    <label>                                 
                        <input class="chb" type="checkbox">别墅
                    </label>
                </li>
                <li class="have_item fl"> 
                    <label>                                 
                        <input class="chb" type="checkbox">客栈
                    </label>
                </li>
                <li class="have_item fl"> 
                    <label>                                 
                        <input class="chb" type="checkbox">四合院
                    </label>
                </li>
                <li class="have_item fl"> 
                    <label>                                 
                        <input class="chb" type="checkbox">老洋房
                    </label>
                </li>
            </ul>
        </div>
      </div>
    </div>
</template>
<style scoped>
ul,div,li{
    padding: 0;
    margin: 0;
}

.top_box{
    width: 1080px;
    padding: 15px 0;
}
.fl{
    float: left;
}
.fr{
    float: right;
}
.clear_both::after{
    content: "";
    display: block;
    clear: both;
}
ul{
    list-style: none;
}
a{
    text-decoration: none;
    font-family: Arial, Helvetica, sans-serif;
    color: #333;
}
body, button, input, select, textarea {
    font: 12px Arial, Helvetica, sans-serif;
    color: #333;
} 
.top_box{
    width: 1080px;
    margin: 0 auto;
}
/* 搜索框 */
.top_search{
    padding: 10px;
    background: #eee;
}
.booking_box{
    border: 1px solid #ccc;
}
.booking_box .booking_item{
    float: left;
    width:374px;
    height: 50px;
    background: #fff;
    line-height: 50px;
    border-radius: 3px;
}
.booking_item+.booking_item{
    margin-left:3px; 
}
.booking_item:first-child{
    width: 150px;
}
.booking_item:first-child input{
    width: 90px;
}
.booking_item input{
    outline: none;
    border:0;
    width: 319px;
}
/* 地图小图标、预订时间 */
.place_icon_box,.time_icon,.word{
    width: 55px;
    height: 50px;
    float: left;
    text-align: center;
    line-height: 50px;
    font-size:30px; 
    color: #333;
}
.icon-icon-pen{
    font-size: 28px;
    font-weight: 400px;
}
.icon-ditu{
    font-size: 28px;
    color: #333;
}
/* 搜索 */
.booking_item:last-child{
    width: 150px;
    text-align: center;
    background: #2fb3ff;
    float: right;
}
.btn_search{
    display: inline-block;
    width: 100%;
    height: 100%;
    color: #fff;
    font-size: 16px;
}
.btn_search:hover{
    background: #2cc5ff;
}
/* 筛选框 */
.top_screen{
    border: 1px solid #ccc;
    padding: 0px 15px;
}
.top_screen>div{
    height: 40px;
    line-height: 40px;
}
.screen_h_type,.screen_price,.screen_have,.screen_feature{
    border-top:1px solid #ccc;
}
.screen_title{
    display: inline-block;
    width: 70px;
    text-align: center;
    font-weight: bold;
}
.screen_unlimit{
    display: inline-block;
    width: 110px;
}
.screen_unlimit>a{
    display: inline-block;
    width: 50px;
    height: 30px;
    line-height: 30px;
    text-align: center;
    background: #2fb3ff;
    color: #fff;
    border-radius: 5px;
}
.screen_unlimit>a:hover{
    background:#2cc5ff;
}
.screen_position,.screen_h_type,.screen_price,.screen_have,.screen_feature{
    position: relative;
}
.position_ul,.h_type_ul,.price_ul,.have_ul,.feature_ul{
    position: absolute;
    top:3px;
    left: 185px;
}
.pst_item,.h_type_item,.price_item,.have_item,.feature_item{
    width: 115px;
    height: 40px;
    line-height: 35px;
    position: relative;
}
.pst_item>a{
    border:1px solid transparent;
    display: inline-block;
    height: 35px;
    position: relative;
}
/* 位置 */
/* 小三角 */
.small_arrow{
    display: inline-block;
    margin-left: 5px;
    border-left: 4px solid transparent;
    border-right: 4px solid transparent;
    border-top: 5px solid #666;
}
.pst_item:hover .pst_a{
    border:1px solid #ccc;
    border-bottom: 0px;
    z-index: 2;
    background: #fff;
}
.pst_item:hover .small_arrow{
    border-left: 4px solid transparent;
    border-right: 4px solid transparent;
    border-bottom: 5px solid #666;
    border-top: 0px;
}
/* 热门推荐 */
.rmtj_box{
    width: 650px;
    position: absolute;
    border:1px solid #ccc;
    box-shadow: 1px 1px 5px #eee; 
    top:35px;
    left:0px;
    padding-left: 30px;
    background: #fff;
    display: none;
    z-index: 1;
}
.rmtj_li:hover .rmtj_box{
    display: block;
}
.pst_ul_item{
    float: left;
    width: 110px;
}
.pst_ul_item>a{
    display: inline-block;
    height: 30px;
    line-height: 30px;
    padding:0px 3px;
    border-radius: 2px;
}
.pst_ul_item>a:hover{
    background: #2fb3ff;
    color:#fff;
}
/* 其余部分a标签背景 */
.checkbox-flag{
    display: inline-block;
    padding-left: 20px;
    background:url("../assets/imgs/house/xuanzekuang.png") no-repeat 0px 10px; 
    height: 32px;
}
.checkbox-flag:hover{
    background-position:0px -14px;
}
.checkbox-flag:focus{
    background-position:-1px -38px;
}
/*flex布局让子元素水平垂直居中*/
label { 
    display: flex;
    align-items: center;
    justify-content: left;
}
label:last-child{
    margin-right: 5px;
}
input[type=checkbox]{
    /* 取消input默认样式 */
    -webkit-appearance: none;
    appearance: none;
    outline: none;

    width: 12px;
    height: 12px;
    cursor: pointer;
    background: #fff;
    border: 1px solid #ccc;
    position: relative;
    margin-right: 10px;
}
input[type=checkbox]:hover{
    border: 1px solid #2fb3ff;
}
input[type=checkbox]:checked::after {
    /* css中的√样式 */
    content: "\2714";
    display: block;
    position: absolute;
    top: -1px;
    left: -1px;
    right: 0;
    bottom: 0;
    width: 10px;
    height: 10px;
    line-height: 10px;
    background: #2fb3ff;
    border: 1px solid #ddd;
    color: #fff;
    font-size: 12px;
}
</style>
