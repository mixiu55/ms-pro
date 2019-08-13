import Vue from 'vue'
import App from './App.vue'
import router from './router'
import store from './store'
// 引入element组件
import ElementUI from 'element-ui'
import 'element-ui/lib/theme-chalk/index.css'
// 引入全局组件
import MyHeader from './components/MyHeader.vue'
import MyFooter from './components/MyFooter.vue'
import BtmNav from './components/BtmNav'

Vue.use(ElementUI);
Vue.component("my-header",MyHeader);
Vue.component("my-footer",MyFooter);
Vue.component("btm-nav",BtmNav);

//1:引入axios 第三方ajax模块
import axios from "axios"
//2:配置axios 基础路径
axios.defaults.baseURL="http://127.0.0.1:5050/"
//3:配置axios 保存session信息
axios.defaults.withCredentials=true
//4:将axios 注册vue 实例中
//由于axios不支持 use 将实例添加vue原型
Vue.prototype.axios = axios;


Vue.config.productionTip = false

new Vue({
  router,
  store,
  render: h => h(App)
}).$mount('#app')
