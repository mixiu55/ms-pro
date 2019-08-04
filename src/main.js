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

Vue.use(ElementUI);
Vue.component("my-header",MyHeader);
Vue.component("my-footer",MyFooter);

Vue.config.productionTip = false

new Vue({
  router,
  store,
  render: h => h(App)
}).$mount('#app')
