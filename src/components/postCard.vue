<script setup>
import { onBeforeMount } from 'vue';
import { ref } from 'vue';
import axios from 'axios';


const posts = ref([]);

let fetchPosts = ()=>{
    axios.post('http://localhost/vueBlog/src/Api/posts.php?action=posts')
        .then(
            response => {
                console.log(response.data.posts);
                posts.value = response.data.posts;
            })
            .catch(error =>{
                console.error(error);
            })
}
onBeforeMount(fetchPosts);

const getImage =(imagePath)=>{
    return `http://localhost/vueBlog/src/uploads/${imagePath}`;
}

// Function to decode HTML entities
const decodeHTMLEntities = (text) => {
    const textarea = document.createElement('textarea');
    textarea.innerHTML = text;
    return textarea.value;
};

const substringedbody = (body)=>{
    return decodeHTMLEntities(body.substring(0,80)+"...");
};

</script>

<template>
    
    <div class="flex flex-col gap-4">
        <!-- {{ data }} -->
        <div v-for="post in posts" :key="post" class="flex flex-col md:flex-row max-w-3xl bg-white border border-gray-200 rounded-lg shadow-lg dark:bg-gray-800 dark:border-gray-700">
            <a href="#">
                <img class="rounded-l-lg w-96 h-full object-cover" :src="getImage(post.image)" alt="" />
            </a>
            <div class="flex flex-col justify-between p-5">
                <a href="#">
                    <h5 class="mb-2 text-xl font-bold tracking-tight text-gray-900 dark:text-white">{{ post.title }}</h5>
                </a>
                <p class="mb-3 font-normal text-gray-700 dark:text-gray-400">{{ substringedbody(post.body) }}</p>
                <a href="#" class="w-1/3 inline-flex items-center px-3 py-2 text-sm font-medium text-center text-white bg-blue-700 rounded-lg hover:bg-blue-800 focus:ring-4 focus:outline-none focus:ring-blue-300 dark:bg-blue-600 dark:hover:bg-blue-700 dark:focus:ring-blue-800">
                    Read more
                    <svg class="rtl:rotate-180 w-3.5 h-3.5 ms-2" aria-hidden="true" xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 14 10">
                        <path stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M1 5h12m0 0L9 1m4 4L9 9"/>
                    </svg>
                </a>
            </div>
        </div>
    </div>
</template>