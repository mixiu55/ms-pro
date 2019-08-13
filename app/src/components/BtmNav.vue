<template>
<div class="bnav">
  <el-button-group>
    <el-button type="info" icon="el-icon-chat-dot-square" title="在线消息"></el-button>
    <el-button type="info" icon="el-icon-star-off" title="收藏"></el-button>
    <el-button type="info" icon="el-icon-document" title="订单"></el-button>
  </el-button-group>
  <el-backtop target="">
    <div
      style="{
        height: 100%;
        width: 100%;
        box-shadow: 0 0 6px rgba(0,0,0, .12);
        text-align: center;
        line-height: 40px;
      }"
    >
      UP
    </div>
  </el-backtop>
</div>
  
</template>
<style scoped>
.el-button-group{
  position: fixed;
  bottom: 10px;
  right: 150px;
  opacity: .8;
}
.bnav .el-backtop{
  right: 105px !important;
  bottom: 10px !important;
  background: rgba(0,0,0,.3);
  color: #ddd;
  border-radius: 3px;
}
.bnav .el-backtop:hover{
  color: #eee;
}
</style>