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
      path: '/House',
      name: 'house',
      // 按需加载，访问这个路由时才会加载
      component: () => import(/* webpackChunkName: "about" */ './views/House.vue')
    },
    {
      path:'/Detail',
      name:'detail',
      component:Detail
    }
  ]
})
