import Vue from 'vue'
import Router from 'vue-router'
import Index from './views/Index.vue'
import Detail from './views/Detail.vue'


Vue.use(Router)

export default new Router({
  routes: [
    {
      path: '/',
      name: 'index',
      component: Index
    },
    {
      path: '/house/:kw',
      name: 'house',
      // 按需加载，访问这个路由时才会加载
      component: () => import(/* webpackChunkName: "about" */ './views/House.vue'),
      props:true
    },
    {
      path:'/details/:hid',//YI:传递参数
      name:'detail',
      component:Detail,
      props:true//ER：设置props为true，接收参数
    }
  ]
})
