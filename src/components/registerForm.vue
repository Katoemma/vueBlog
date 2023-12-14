<script setup>
import { ref } from 'vue'

const fname = ref('');
const lname = ref('');
const email = ref('');
const password = ref('');
const confirmPassword = ref('');


</script>

<template>
    <form class="space-y-4 md:space-y-6" action="#">
        <div>
            <label for="email"  class="block mb-2 text-sm font-medium text-gray-900 dark:text-white">First Name</label>
            <input type="email" v-model="fname" id="fname" class="bg-gray-50 border border-gray-300 text-gray-900 sm:text-sm rounded-lg focus:ring-primary-600 focus:border-primary-600 block w-full p-2.5 dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400 dark:text-white dark:focus:ring-blue-500 dark:focus:border-blue-500" placeholder="Enter first name" required="">
            <span>{{ fname }}</span>
        </div>
        <div>
            <label for="email"  class="block mb-2 text-sm font-medium text-gray-900 dark:text-white">Last Name</label>
            <input type="email" v-model="lname" id="lname" class="bg-gray-50 border border-gray-300 text-gray-900 sm:text-sm rounded-lg focus:ring-primary-600 focus:border-primary-600 block w-full p-2.5 dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400 dark:text-white dark:focus:ring-blue-500 dark:focus:border-blue-500" placeholder="Enter last name" required="">
            <span>{{ lname }}</span>
        </div>
        <div>
            <label for="email"  class="block mb-2 text-sm font-medium text-gray-900 dark:text-white">Your email</label>
            <input type="email" v-model="email" id="email" class="bg-gray-50 border border-gray-300 text-gray-900 sm:text-sm rounded-lg focus:ring-primary-600 focus:border-primary-600 block w-full p-2.5 dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400 dark:text-white dark:focus:ring-blue-500 dark:focus:border-blue-500" placeholder="Enter Your Email" required="">
            <span>{{ email }}</span>
        </div>
        <div>
            <label for="password" class="block mb-2 text-sm font-medium text-gray-900 dark:text-white">Password</label>
            <input type="password" v-model="password" id="password" placeholder="••••••••" class="bg-gray-50 border border-gray-300 text-gray-900 sm:text-sm rounded-lg focus:ring-primary-600 focus:border-primary-600 block w-full p-2.5 dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400 dark:text-white dark:focus:ring-blue-500 dark:focus:border-blue-500" required="">
        </div>
        <div>
            <label for="confirm-password" class="block mb-2 text-sm font-medium text-gray-900 dark:text-white">Confirm password</label>
            <input type="confirm-password" v-model="confirmPassword" id="confirm-password" placeholder="••••••••" class="bg-gray-50 border border-gray-300 text-gray-900 sm:text-sm rounded-lg focus:ring-primary-600 focus:border-primary-600 block w-full p-2.5 dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400 dark:text-white dark:focus:ring-blue-500 dark:focus:border-blue-500" required="">

            <span v-if="confirmPassword.length > 1 && confirmPassword !== password" class="text-sm text-red-500">password doesnot match!</span>
        </div>
        
        <button type="submit" class="w-full text-white bg-red-500 hover:bg-red-600 focus:ring-4 focus:outline-none focus:ring-primary-300 font-medium rounded-lg text-sm px-5 py-2.5 text-center dark:bg-primary-600 dark:hover:bg-primary-700 dark:focus:ring-primary-800">Create an account</button>
        <p class="text-sm font-light text-gray-500 dark:text-gray-400">
            Already have an account? <router-link to="/login" class="font-medium text-primary-600 hover:underline dark:text-primary-500">Login here</router-link>
        </p>
    </form>
</template>