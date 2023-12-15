<script setup>
import postCard from './postCard.vue';
import topicsCard from './topicsCard.vue';
</script>
<template>
    <section class="flex  flex-col p-2 max-w-7xl mx-auto px-4 sm:px-6 lg:px-8 py-4 md:justify-between">

        <h2 class="text-3xl font-semibold text-black mb-8">Recent posts</h2>

        <div class="flex md:flex-row-reverse flex-row md:justify-between">
            <topicsCard />
            <postCard />
        </div> 
    </section>
</template>