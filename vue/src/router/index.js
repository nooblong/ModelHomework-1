import Vue from 'vue'
import Router from 'vue-router'

/* import pages */
import Index from '@/pages/Index.vue' //主页视图
import Login from '@/pages/Login.vue' //登录视图
import Register from '@/pages/Register.vue' //注册视图
import SectionView from "@/pages/SectionView" //某板块视图
import SectionsView from '@/pages/SectionsView' //板块列表
import Article from '@/pages/Article' //文章视图
import PersonalCenter from '@/pages/PersonalCenter' //个人中心视图

Vue.use(Router)

export default new Router({
    routes: [
        { path: '/', component: Index },
        { path: '/login', component: Login },
        { path: '/register', component: Register },
        { path: '/section/:id', component: SectionView }, //单个板块内容
        { path: '/sections', component: SectionsView }, //板块列表
        { path: '/article/:id', component: Article }, //单个稿件查看
        { path: '/personalCenter', component: PersonalCenter } //我的
    ]
})