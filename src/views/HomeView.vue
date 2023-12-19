<script setup>
import swiperContainer from '@/components/swiperContainer.vue';
import topicsCard from '@/components/topicsCard.vue';
import recentPosts from '@/components/recentPosts.vue';
import navbar from '@/components/navbar.vue';


</script>
<template>
    <navbar />
   <main class="bg-gray-100">
        <div class="w-full overflow-hidden bg-white">
            <div class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8 py-4">
                <h2 class="text-3xl font-semibold text-black mb-8">Trending Posts</h2>
                <div class="overflow-x-auto">
                    <!-- swiper container -->
                    <swiperContainer />
                </div>
            </div>
        </div>
        <recentPosts />
   </main> 
    
</template>