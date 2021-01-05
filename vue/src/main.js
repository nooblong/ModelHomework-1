import Vue from 'vue'
import App from './App.vue'

/* import for Element UI */
import ElementUI from 'element-ui'
import 'element-ui/lib/theme-chalk/index.css'

/* import VueRouter */
import router from './router'

Vue.config.productionTip = false

Vue.use(ElementUI)

new Vue({
    render: h => h(App),
    router: router
}).$mount('#app')
