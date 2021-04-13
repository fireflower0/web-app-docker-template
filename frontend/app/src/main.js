import Vue from 'vue'
import App from './App.vue'
import router from './router'

Vue.config.productionTip = false

document.title = 'My Home Page';
document.body.style.margin = '0';
document.body.style.backgroundColor = '#263238';

new Vue({
  router,
  render: h => h(App)
}).$mount('#app')
