<template>
  <footer>
    <ul class=footer_ul>
      <li class="footer_msg">
        <h3>联系我们</h3>
        <p>客户服务</p>
        <p>QQ:939317009</p>
        <p>手机:18475568694</p>
        <p>email:939317009@qq.com</p>
      </li>
      <li class="footer_msg">
        <h3>网站帮助</h3>
        <p><a href="">帮助中心</a></p>
        <p><a href="">账号管理</a></p>
        <p><a href="">网站地图</a></p>
      </li>
      <li class="footer_msg">
        <h3>公司信息</h3>
        <p><a href="">关于我们</a></p>
        <p><a href="">加入我们</a></p>
        <p><a href="">战略合作</a></p>
        <p><a href="">隐私声明</a></p>
        <p><a href="">服务协议</a></p>
        <p><a href="">免责声明</a></p>
      </li>
      <li class="footer_msg">
        <h3>下载APP</h3>
        <img src="imgs/erweima-small.png" alt="">
      </li>
      <li class="footer_msg">
        <h3>关注我们</h3>
        <a href="">
            <i class="iconfont icon-weixin"></i>
        </a>
        <a href="">
            <i class="iconfont icon-weibo"></i>
        </a>
      </li>
    </ul>
  </footer>
</template>
<style scoped>
ul,p,h3{
    margin: 0;
    padding: 0;
}
body, button, input, select, textarea {
    font: 12px, Arial, Helvetica, sans-serif;
    color: #333
} 
ul {
    list-style: none;
}
a {
    text-decoration: none;
    color: #666;
    font-size: 14px;
}
footer{
  margin-top: 20px;
}
.footer_ul {
    width: 1050px;
    display: flex;
    justify-content: space-between;
    margin: 0 auto;
}
.footer_msg h3 {
    font-size: 16px;
    font-weight: normal;
    margin-bottom: 5px;
}
.footer_msg p {
    font-size: 14px;
    margin-bottom: 5px;
}
.footer_msg a:hover {
    color: #2fb3ff;
}
footer .iconfont {
    display: inline-block;
    font-size: 30px;
}
</style>

