<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Product Card</title>
    <script src="https://cdn.tailwindcss.com"></script>
</head>
<body>
    <div class="max-w-sm rounded overflow-hidden shadow-lg my-2">
        <img class="w-full" src="path_to_your_image.jpg" alt="Product Image">
        <div class="px-6 py-4">
            <div class="font-bold text-xl mb-2">72,800 ₩</div>
            <p class="text-gray-700 text-base">
                <s>677,040 ₩</s>
            </p>
            <p class="text-gray-700 text-base">
                국민HERMES 에르메스실버 반지 SV
                <br>스마일반지54*13호
            </p>
            <div class="flex items-center mt-4">
                <button class="bg-red-500 hover:bg-red-700 text-white font-bold py-2 px-4 rounded">
                    장바구니
                </button>
                <span class="ml-auto text-gray-600 text-sm">판매자 oomoto122</span>
                <svg class="w-6 h-6 ml-2 fill-current text-gray-500 cursor-pointer" xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                    <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M5 15l7-7 7 7"/>
                </svg>
            </div>
        </div>
    </div>
</body>
</html>
