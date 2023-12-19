<script setup>
import sideBar from '@/components/sideBar.vue';
import dashNavbar from '@/components/dashNavbar.vue';
</script>
<template>
    <div class="min-h-screen bg-gray-50/50">
        <sideBar />
        <div class="p-4 xl:ml-80">
            <dashNavbar />
        </div>
    </div>
</template>