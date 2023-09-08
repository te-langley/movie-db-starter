import { createApp } from 'vue'
import MyApp from './App.vue'
import { createStore } from './store' // if using Vuex
import router from './router' // if using Vue Router
import axios from 'axios'

axios.defaults.baseURL = process.env.VUE_APP_REMOTE_API;

const store = createStore(); // if using Vuex

const app = createApp(MyApp);
app.use(store); // if using Vuex
app.use(router); // if using Vue Router
app.mount('#app');
