<script setup>
import axios from 'axios';
import { ref, computed, onMounted, watch } from 'vue';
import { useRouter } from "vue-router";
import { useToast } from "vue-toastification";

const router = useRouter();
const toast = useToast();


const data = ref([]);
const email = ref('');
const password = ref('');

var credentials = ref();

const login = async () => {
    try {
        const response = await axios.post("http://localhost/vueBlog/src/Api/users.php?action=login", {
            email: email.value,
            password: password.value,
        });

        console.log(response.data);
        data.value = response.data;


    } catch (error) {
        console.error("Axios Error:", error);
    }
   
};

watch(data, () =>{
    if(data.value.token){
        router.push('/dashboard');
        toast.success("You have been logged in!");
    }
}

)

</script>
<template>
    <form class="space-y-4 md:space-y-6" @submit.prevent="login" action="#">
        <div v-if="credentials" class="bg-red-100 p-2 rounded">
            <span class="flex items-center gap-4 text-red-500 p-2"><i class="fa fa-exclamation-circle text-xl"></i> Wrong Credentials</span>
        </div>
        <div>
            <label for="email" class="block mb-2 text-sm font-medium text-gray-900 dark:text-white">Your email</label>
            <input type="email" name="email" id="email" v-model="email" class="bg-gray-50 border border-gray-300 text-gray-900 sm:text-sm rounded-lg focus:ring-primary-600 focus:border-primary-600 block w-full p-2.5 dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400 dark:text-white dark:focus:ring-blue-500 dark:focus:border-blue-500" placeholder="Enter valid Email" required="">
            <span>{{ email }}</span>
        </div>
        <div>
            <label for="password" class="block mb-2 text-sm font-medium text-gray-900 dark:text-white">Password</label>
            <input type="password" name="password" id="password" v-model="password" placeholder="••••••••" class="bg-gray-50 border border-gray-300 text-gray-900 sm:text-sm rounded-lg focus:ring-primary-600 focus:border-primary-600 block w-full p-2.5 dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400 dark:text-white dark:focus:ring-blue-500 dark:focus:border-blue-500" required="">
            <span>{{ password }}</span>
        </div>
        <div class="flex items-center justify-between">
            <a href="#" class="text-sm font-medium text-primary-600 hover:underline dark:text-primary-500">Forgot password?</a>
        </div>
        <button type="submit"   class="w-full text-white bg-red-500 hover:bg-red-600 focus:ring-4 focus:outline-none focus:ring-primary-300 font-medium rounded-lg text-sm px-5 py-2.5 text-center dark:bg-primary-600 dark:hover:bg-primary-700 dark:focus:ring-primary-800">Sign in</button>
        <p class="text-sm font-light text-gray-500 dark:text-gray-400">
            Don’t have an account yet? <router-link to="/register" class="font-medium text-primary-600 hover:underline dark:text-primary-500">Sign up</router-link>
        </p>
    </form>
</template>