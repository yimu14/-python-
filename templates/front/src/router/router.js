import VueRouter from 'vue-router'

//引入组件
import Index from '../pages'
import Home from '../pages/home/home'
import Login from '../pages/login/login'
import Register from '../pages/register/register'
import Center from '../pages/center/center'
import Forum from '../pages/forum/list'
import ForumAdd from '../pages/forum/add'
import ForumDetail from '../pages/forum/detail'
import MyForumList from '../pages/forum/myForumList'
import News from '../pages/news/news-list'
import NewsDetail from '../pages/news/news-detail'
import xueshengList from '../pages/xuesheng/list'
import xueshengDetail from '../pages/xuesheng/detail'
import xueshengAdd from '../pages/xuesheng/add'
import qinshixinxiList from '../pages/qinshixinxi/list'
import qinshixinxiDetail from '../pages/qinshixinxi/detail'
import qinshixinxiAdd from '../pages/qinshixinxi/add'
import ruzhudengjiList from '../pages/ruzhudengji/list'
import ruzhudengjiDetail from '../pages/ruzhudengji/detail'
import ruzhudengjiAdd from '../pages/ruzhudengji/add'
import wanguidengjiList from '../pages/wanguidengji/list'
import wanguidengjiDetail from '../pages/wanguidengji/detail'
import wanguidengjiAdd from '../pages/wanguidengji/add'
import wupinjinchudengjiList from '../pages/wupinjinchudengji/list'
import wupinjinchudengjiDetail from '../pages/wupinjinchudengji/detail'
import wupinjinchudengjiAdd from '../pages/wupinjinchudengji/add'
import shuidianfeiList from '../pages/shuidianfei/list'
import shuidianfeiDetail from '../pages/shuidianfei/detail'
import shuidianfeiAdd from '../pages/shuidianfei/add'
import susheweishengList from '../pages/susheweisheng/list'
import susheweishengDetail from '../pages/susheweisheng/detail'
import susheweishengAdd from '../pages/susheweisheng/add'
import sushebaoxiuList from '../pages/sushebaoxiu/list'
import sushebaoxiuDetail from '../pages/sushebaoxiu/detail'
import sushebaoxiuAdd from '../pages/sushebaoxiu/add'
import systemintroList from '../pages/systemintro/list'
import systemintroDetail from '../pages/systemintro/detail'
import systemintroAdd from '../pages/systemintro/add'

const originalPush = VueRouter.prototype.push
VueRouter.prototype.push = function push(location) {
	return originalPush.call(this, location).catch(err => err)
}

//配置路由
export default new VueRouter({
	routes:[
		{
      path: '/',
      redirect: '/index/home'
    },
		{
			path: '/index',
			component: Index,
			children:[
				{
					path: 'home',
					component: Home
				},
				{
					path: 'center',
					component: Center,
				},
				{
					path: 'forum',
					component: Forum
				},
				{
					path: 'forumAdd',
					component: ForumAdd
				},
				{
					path: 'forumDetail',
					component: ForumDetail
				},
				{
					path: 'myForumList',
					component: MyForumList
				},
				{
					path: 'news',
					component: News
				},
				{
					path: 'newsDetail',
					component: NewsDetail
				},
				{
					path: 'xuesheng',
					component: xueshengList
				},
				{
					path: 'xueshengDetail',
					component: xueshengDetail
				},
				{
					path: 'xueshengAdd',
					component: xueshengAdd
				},
				{
					path: 'qinshixinxi',
					component: qinshixinxiList
				},
				{
					path: 'qinshixinxiDetail',
					component: qinshixinxiDetail
				},
				{
					path: 'qinshixinxiAdd',
					component: qinshixinxiAdd
				},
				{
					path: 'ruzhudengji',
					component: ruzhudengjiList
				},
				{
					path: 'ruzhudengjiDetail',
					component: ruzhudengjiDetail
				},
				{
					path: 'ruzhudengjiAdd',
					component: ruzhudengjiAdd
				},
				{
					path: 'wanguidengji',
					component: wanguidengjiList
				},
				{
					path: 'wanguidengjiDetail',
					component: wanguidengjiDetail
				},
				{
					path: 'wanguidengjiAdd',
					component: wanguidengjiAdd
				},
				{
					path: 'wupinjinchudengji',
					component: wupinjinchudengjiList
				},
				{
					path: 'wupinjinchudengjiDetail',
					component: wupinjinchudengjiDetail
				},
				{
					path: 'wupinjinchudengjiAdd',
					component: wupinjinchudengjiAdd
				},
				{
					path: 'shuidianfei',
					component: shuidianfeiList
				},
				{
					path: 'shuidianfeiDetail',
					component: shuidianfeiDetail
				},
				{
					path: 'shuidianfeiAdd',
					component: shuidianfeiAdd
				},
				{
					path: 'susheweisheng',
					component: susheweishengList
				},
				{
					path: 'susheweishengDetail',
					component: susheweishengDetail
				},
				{
					path: 'susheweishengAdd',
					component: susheweishengAdd
				},
				{
					path: 'sushebaoxiu',
					component: sushebaoxiuList
				},
				{
					path: 'sushebaoxiuDetail',
					component: sushebaoxiuDetail
				},
				{
					path: 'sushebaoxiuAdd',
					component: sushebaoxiuAdd
				},
				{
					path: 'systemintro',
					component: systemintroList
				},
				{
					path: 'systemintroDetail',
					component: systemintroDetail
				},
				{
					path: 'systemintroAdd',
					component: systemintroAdd
				},
			]
		},
		{
			path: '/login',
			component: Login
		},
		{
			path: '/register',
			component: Register
		},
	]
})
