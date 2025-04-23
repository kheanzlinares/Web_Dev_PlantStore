import { createApp } from 'vue'
import App from './App.vue'
import { createRouter, createWebHistory } from 'vue-router'

import Home from './components/Home.vue';
//import ProductList from './components/products/ProductList.vue';
import CreateProduct from './components/products/CreateProduct.vue';
import EditProduct from './components/products/EditProduct';
import PotList from './components/products/PotList.vue';
import PlantList from './components/products/PlantList.vue';
import AccessoriesList from './components/products/AccessoriesList.vue';
import Login from './components/Login.vue';
import ForgotPassword from './components/ForgotPassword.vue';
import CreateAccount from './components/CreateAccount.vue';
import store from '../store/store';


const routes = [
    { path: '/', component: Home },
    //{ path: '/products', component: ProductList },
    { path: '/pots', component: PotList },
    { path: '/plants', component: PlantList },
    { path: '/accessories', component: AccessoriesList },
    { path: '/createproduct', component: CreateProduct },
    { path: '/editproduct/:id', component: EditProduct, props: true  },
    { path: '/login', component: Login},
    { path: '/forgotPassword', component: ForgotPassword, props: true },
    { path: '/createAccount', component: CreateAccount }
];

const router = createRouter({
    "history": createWebHistory(),
    routes
})

const app = createApp(App);
app.use(router);
app.use(store);
app.mount('#app');