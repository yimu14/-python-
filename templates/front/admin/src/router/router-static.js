import Vue from 'vue';
//配置路由
import VueRouter from 'vue-router'
Vue.use(VueRouter);
//1.创建组件
import Index from '@/views/index'
import Home from '@/views/home'
import Login from '@/views/login'
import NotFound from '@/views/404'
import UpdatePassword from '@/views/update-password'
import pay from '@/views/pay'
import register from '@/views/register'
import center from '@/views/center'
    import news from '@/views/modules/news/list'
    import aboutus from '@/views/modules/aboutus/list'
    import ruzhudengji from '@/views/modules/ruzhudengji/list'
    import wanguidengji from '@/views/modules/wanguidengji/list'
    import sushebaoxiu from '@/views/modules/sushebaoxiu/list'
    import xuesheng from '@/views/modules/xuesheng/list'
    import wupinjinchudengji from '@/views/modules/wupinjinchudengji/list'
    import susheweisheng from '@/views/modules/susheweisheng/list'
    import forum from '@/views/modules/forum/list'
    import qinshixinxi from '@/views/modules/qinshixinxi/list'
    import systemintro from '@/views/modules/systemintro/list'
    import shuidianfei from '@/views/modules/shuidianfei/list'
    import config from '@/views/modules/config/list'


//2.配置路由   注意：名字
const routes = [{
    path: '/index',
    name: '系统首页',
    component: Index,
    children: [{
      // 这里不设置值，是把main作为默认页面
      path: '/',
      name: '系统首页',
      component: Home,
      meta: {icon:'', title:'center'}
    }, {
      path: '/updatePassword',
      name: '修改密码',
      component: UpdatePassword,
      meta: {icon:'', title:'updatePassword'}
    }, {
      path: '/pay',
      name: '支付',
      component: pay,
      meta: {icon:'', title:'pay'}
    }, {
      path: '/center',
      name: '个人信息',
      component: center,
      meta: {icon:'', title:'center'}
    }
      ,{
	path: '/news',
        name: '公告信息',
        component: news
      }
      ,{
	path: '/aboutus',
        name: '关于我们',
        component: aboutus
      }
      ,{
	path: '/ruzhudengji',
        name: '入住登记',
        component: ruzhudengji
      }
      ,{
	path: '/wanguidengji',
        name: '晚归登记',
        component: wanguidengji
      }
      ,{
	path: '/sushebaoxiu',
        name: '宿舍报修',
        component: sushebaoxiu
      }
      ,{
	path: '/xuesheng',
        name: '学生',
        component: xuesheng
      }
      ,{
	path: '/wupinjinchudengji',
        name: '物品进出登记',
        component: wupinjinchudengji
      }
      ,{
	path: '/susheweisheng',
        name: '宿舍卫生',
        component: susheweisheng
      }
      ,{
	path: '/forum',
        name: '论坛交流',
        component: forum
      }
      ,{
	path: '/qinshixinxi',
        name: '寝室信息',
        component: qinshixinxi
      }
      ,{
	path: '/systemintro',
        name: '系统简介',
        component: systemintro
      }
      ,{
	path: '/shuidianfei',
        name: '水电费',
        component: shuidianfei
      }
      ,{
	path: '/config',
        name: '轮播图管理',
        component: config
      }
    ]
  },
  {
    path: '/login',
    name: 'login',
    component: Login,
    meta: {icon:'', title:'login'}
  },
  {
    path: '/register',
    name: 'register',
    component: register,
    meta: {icon:'', title:'register'}
  },
  {
    path: '/',
    name: '系统首页',
    redirect: '/index'
  }, /*默认跳转路由*/
  {
    path: '*',
    component: NotFound
  }
]
//3.实例化VueRouter  注意：名字
const router = new VueRouter({
  mode: 'hash',
  /*hash模式改为history*/
  routes // （缩写）相当于 routes: routes
})
const originalPush = VueRouter.prototype.push
//修改原型对象中的push方法
VueRouter.prototype.push = function push(location) {
   return originalPush.call(this, location).catch(err => err)
}
export default router;
