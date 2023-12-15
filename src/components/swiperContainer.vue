<script setup>
import { Navigation, Pagination, Scrollbar, A11y, Autoplay } from 'swiper/modules';
import { Swiper, SwiperSlide } from 'swiper/vue';
import 'swiper/css';
import 'swiper/css/navigation';
import 'swiper/css/pagination';
import 'swiper/css/scrollbar';
import 'swiper/css/autoplay';


const modules = [Navigation, Pagination, Scrollbar, A11y, Autoplay];
</script>

<template>
    
    <Swiper :modules="modules" :slides-per-view="3" :space-between="50"  :pagination="{ clickable: true }" loop :autoplay="{ delay: 2500, disableOnInteraction: false }"   >
        <SwiperSlide v-for="i in 10" :key="i" class="bg-white shadow-lg rounded-lg overflow-hidden ml-2">
            <img src="https://blog.hootsuite.com/wp-content/uploads/2022/06/best-time-to-post-on-instagram-556x556.png" class="w-full h-60" alt="">
            <div class="p-4">
            <h3 class="text-xl font-serif font-semibold mb-2"> Post Title</h3>
            <p class="text-gray-600 mb-2">Author: John Doe</p>
            <p class="text-gray-600">Date: 12/12/2023 12:00pm</p>
          </div>
        </SwiperSlide>
    </Swiper>
</template>
