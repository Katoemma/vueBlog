<script setup>

</script>
<template>
    <!-- search for blog post or choose topic card -->
    <div class="flex flex-col bg-white rounded-lg shadow h-fit p-2">
        <!-- search form -->
        <div class="flex items-center justify-center w-full">
            <input type="text" class="w-full h-10 px-2 text-sm text-gray-700 bg-gray-100 rounded-l-lg focus:outline-none" placeholder="Search for a blog post ">
            <button class="h-10 px-4 text-sm text-gray-700 bg-red-500 rounded-r-lg focus:outline-none"><i class="fa fa-search text-white"></i></button>
        </div>
        <!-- topics -->
        <div class="flex flex-col gap-2 mt-2">
            <hr class="border-2 rounded-full">
            <h1 class="text-xl font-bold underline">
                Topics
            </h1>
        </div>
        <div class="flex flex-col gap-2 mt-3">
            
            <a href="#" class="bg-gray-100 border-b-1 border-gray-400 p-2 rounded">
                <h2 class="text-md font-semibold text-gray-600">Adventure</h2>
            </a>
            <a href="#" class="bg-gray-100 border-b-1 border-gray-400 p-2 rounded">
                <h2 class="text-md font-semibold text-gray-600">Food</h2>
            </a>
            <a href="#" class="bg-gray-100 border-b-1 border-gray-400 p-2 rounded">
                <h2 class="text-md font-semibold text-gray-600">Travel</h2>
            </a>
            <a href="#" class="bg-gray-100 border-b-1 border-gray-400 p-2 rounded">
                <h2 class="text-md font-semibold text-gray-600">Fashion</h2>
            </a>
            <a href="#" class="bg-gray-100 border-b-1 border-gray-400 p-2 rounded">
                <h2 class="text-md font-semibold text-gray-600">Music</h2>
            </a>
        </div>
    </div>
    
</template>