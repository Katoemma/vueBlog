<script setup>
import router from '@/router';
</script>
<template>
    <!-- blog website navbar -->
    <nav class="sticky top-0 p-2 bg-red-500 mx-auto">
        <div class="flex justify-between max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
            <!-- logo -->
            <img src="https://png.pngtree.com/element_pic/00/16/07/06577d261edb9ec.jpg" class="w-12 rounded-lg" alt="">

            <!-- navigation on home page -->
            <div class="flex justify-between w-full px-4">
                <!-- navigation links -->
                <ul class="flex gap-4 list-none items-center">
                    <li class="text-white"><router-link to="/">Home</router-link></li>
                    <li class="text-white"><a href="#">Services</a></li>
                    <li class="text-white"><a href="#">About Us</a></li>
                </ul>
                
                <!-- login and signup links -->
                <div class="flex text-white gap-4 items-center">
                    <router-link to="/login" class="text-white">Login</router-link>
                    <router-link to="/register" class="text-white">Sign Up</router-link>
                </div>

            </div>
            
            <!-- links when logged as admin -->
            <div class="hidden flex text-white gap-4 items-center">
                <a href="#" class="text-white">Dashboard</a>
                <a href="#" class="text-white">Posts</a>
                <a href="#" class="text-white">Topics</a>
                <a href="#" class="text-white">Comments</a>
                <a href="#" class="text-white">Users</a>
                <a href="#" class="text-white">Logout</a>
            </div>
        </div>
    </nav>
</template>