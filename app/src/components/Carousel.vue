<template>
  <el-carousel :interval="4000" height="620px" trigger="click">
    <el-carousel-item v-for="(item,i) of list" :key="i">
      <img :src="`${baseUrl}${item.img}`" alt="" @click="goto(i)">
    </el-carousel-item>
  </el-carousel>
</template>
<script>
export default {
  data(){
    return{
      baseUrl:"http://127.0.0.1:5050/",
      list:[],
    }
  },
  created() {
    this.load();
  },
  methods: {
    load(){
      var url='index/carousel';
      this.axios.get(url).then(result=>{
        this.list=result.data
      })
    },
    goto(n){
      console.log(n)
      var hid=this.list[n].href.split("?")[1].split("=")[1];
      this.$router.push(`/details/${hid}`);
    }
  },
}
</script>
<style scoped>
  .el-carousel__item>img {
    width: 100%;
  }
</style>