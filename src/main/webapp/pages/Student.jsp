<%--
  Created by IntelliJ IDEA.
  User: shanto
  Date: 5/5/23
  Time: 11:53 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Student</title>
    <script src="https://cdn.tailwindcss.com"></script>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Lobster&display=swap" rel="stylesheet">
</head>
<body>
<div class="w-full bg-white">
    <div class="w-full flex justify-center items-center shadow-md">
        <div class="w-[70%] p-4 flex justify-between items-center ">
            <div class="w-full flex items-center gap-4">
                <h1 style="font-family: 'Lobster'" class="text-3xl text-[#142580] font-bold">Learn-Online</h1>

            </div>
            <ul class="w-full flex justify-end gap-20 items-center decoration-none">
                <li><a href="/student" class="text-lg font-bold text-[#142580]">
                    <img class="w-10 h-10 p-1 rounded-full ring-2 ring-gray-300 dark:ring-gray-500" src="https://img.freepik.com/premium-psd/3d-rendering-graduation-male-avatar_52659-1060.jpg?w=826" alt="Bordered avatar">
                </a></li>
            </ul>
        </div>
    </div>

<%-- short details with search bar...--%>
    <div style="border-bottom-left-radius: 6rem" class="w-full h-[35vh] bg-[#142580] flex justify-center items-center">
        <div class="w-[80%] flex justify-center items-center p-3">
            <div class="w-full flex flex-col p-4">
                <h1 class="text-[2.5rem] font-bold text-white">Learn New Things.</h1>
                <p class="text-xl text-white px-4">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Earum, sed!</p>
            </div>
            <div class="flex justify-between w-full items-center bg-white border-2 border-[] p-2 px-3">
                <input type="text" placeholder="Search.." class="outline-none border-none p-2 w-full">
                <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="1.5" stroke="currentColor" class="w-6 h-6">
                    <path stroke-linecap="round" stroke-linejoin="round" d="M21 21l-5.197-5.197m0 0A7.5 7.5 0 105.196 5.196a7.5 7.5 0 0010.607 10.607z" />
                </svg>
            </div>
        </div>
    </div>

<%--    Enrolled courses here....--%>
    <div class="w-full flex flex-col justify-center items-center">
        <div class="flex flex-col justify-center items-center mt-5">
            <h1 class="text-[2rem] font-bold text-[#142580]">Enrolled Courses</h1>
            <div class="w-[180px] h-[5px] bg-[#142580]"></div>
        </div>
        <div class="w-[80%] grid grid-cols-3 gap-20 mt-4 p-5">

            <div style="border-top-left-radius: 100px" class="min-w-[300px] flex flex-col justify-center items-center shadow-md pb-5">
                <div style="border-top-left-radius: 100px" class="bg-[#142580] h-[200px] w-full"></div>
                <div class="w-full flex flex-col justify-center items-center p-3">
                    <h1 class="text-lg font-bold">Computer Security</h1>
                    <p class="text-l text-gray-700 mt-3">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Magnam officiis perspiciatis quam quibusdam quisquam quo recusandae, saepe soluta! Aliquam, reprehenderit.</p>
                </div>
                <button class="border-none px-10 py-3 bg-[#142580] text-xl text-white rounded-md mt-4">Show</button>
            </div>

            <div style="border-top-left-radius: 100px" class="min-w-[300px] flex flex-col justify-center items-center shadow-md pb-5">
                <div style="border-top-left-radius: 100px" class="bg-[#142580] h-[200px] w-full"></div>
                <div class="w-full flex flex-col justify-center items-center p-3">
                    <h1 class="text-lg font-bold">Computer Security</h1>
                    <p class="text-l text-gray-700 mt-3">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Magnam officiis perspiciatis quam quibusdam quisquam quo recusandae, saepe soluta! Aliquam, reprehenderit.</p>
                </div>
                <button class="border-none px-10 py-3 bg-[#142580] text-xl text-white rounded-md mt-4">Show</button>
            </div>
        </div>


<%--   Available all courses are here........--%>
        <div class="w-full flex flex-col justify-center items-center mt-10">
            <div class="flex flex-col justify-center items-center mt-5">
                <h1 class="text-[2rem] font-bold text-[#142580]">All Courses</h1>
                <div class="w-[180px] h-[5px] bg-[#142580]"></div>
            </div>

            <div class="w-[80%] grid grid-cols-3 gap-20 mt-4 p-5">

                <div style="border-top-left-radius: 100px" class="min-w-[300px] flex flex-col justify-center items-center shadow-md pb-5">
                    <div style="border-top-left-radius: 100px" class="bg-[#142580] h-[200px] w-full"></div>
                    <div class="w-full flex flex-col justify-center items-center p-3">
                        <h1 class="text-lg font-bold">Computer Security</h1>
                        <p class="text-l text-gray-700 mt-3">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Magnam officiis perspiciatis quam quibusdam quisquam quo recusandae, saepe soluta! Aliquam, reprehenderit.</p>
                    </div>
                    <button class="border-none px-10 py-3 bg-[#142580] text-xl text-white rounded-md mt-4">Enroll</button>
                </div>

                <div style="border-top-left-radius: 100px" class="min-w-[300px] flex flex-col justify-center items-center shadow-md pb-5">
                    <div style="border-top-left-radius: 100px" class="bg-[#142580] h-[200px] w-full"></div>
                    <div class="w-full flex flex-col justify-center items-center p-3">
                        <h1 class="text-lg font-bold">Computer Security</h1>
                        <p class="text-l text-gray-700 mt-3">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Magnam officiis perspiciatis quam quibusdam quisquam quo recusandae, saepe soluta! Aliquam, reprehenderit.</p>
                    </div>
                    <button class="border-none px-10 py-3 bg-[#142580] text-xl text-white rounded-md mt-4">Enroll</button>
                </div>


            </div>

</div>
</body>
</html>
