<%--
  Created by IntelliJ IDEA.
  User: shanto
  Date: 5/6/23
  Time: 2:21 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create Course</title>
    <script src="https://cdn.tailwindcss.com"></script>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Lobster&display=swap" rel="stylesheet">
</head>
<body>
<div class="w-full">
    <%--Header part.....--%>
    <div class="w-full flex justify-center items-center shadow-md">
        <div class="w-[70%] p-4 flex justify-between items-center ">
            <div class="w-full flex items-center gap-4">
                <h1 style="font-family: 'Lobster'" class="text-3xl text-[#142580] font-bold">Learn-Online</h1>
            </div>
            <ul class="w-full flex justify-end gap-20 items-center decoration-none">
                <li><a href="/create" class="text-lg font-bold text-[#142580]">Create Course</a></li>
                <li><a href="/courses" class="text-lg font-bold text-[#142580]">Courses</a></li>
                <li><a href="/admin" class="text-lg font-bold text-[#142580]">
                    <img class="w-10 h-10 p-1 rounded-full ring-2 ring-gray-300 dark:ring-gray-500" src="https://img.freepik.com/premium-psd/3d-rendering-graduation-male-avatar_52659-1060.jpg?w=826" alt="Bordered avatar">
                </a></li>
            </ul>
        </div>
    </div>

        <%-- short details with search bar...--%>
        <div style="border-bottom-left-radius: 6rem" class="w-full h-[35vh] bg-[#142580] flex justify-center items-center">
            <div class="w-[80%] flex justify-center items-center p-3">
                <div class="w-full flex flex-col p-4">
                    <h1 class="text-[2.5rem] font-bold text-white">Create New Courses.</h1>
                    <p class="text-xl text-white px-4">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Earum, sed!</p>
                </div>
            </div>
        </div>

<%--    Create course fields......--%>
    <div class="w-full flex justify-center items-center">
        <div class="w-[60%] flex flex-col items-center mt-10">
            <div class="w-full flex flex-col items-start mt-4">
                <span class="text-xl font-bold text-[#142580]">Course Title</span>
                <input type="text" placeholder="username" class="outline-none mt-2 w-full border-[1px] border-[#9BA4B5] p-2 rounded-md text-xl focus:border-[#142580] focus:border-[2px]">
            </div>
            <div class="w-full flex flex-col items-start mt-4">
                <span class="text-xl font-bold text-[#142580]">Course Description</span>
                <textarea placeholder="Description" class="outline-none mt-2 w-full border-[1px] border-[#9BA4B5] p-2 rounded-md text-xl focus:border-[#142580] focus:border-[2px]"></textarea>
            </div>
            <div class="w-full flex flex-col items-start mt-4">
                <span class="text-xl font-bold text-[#142580]">Assign a Teacher</span>
                <select name="Role" id="role" class="w-full mt-2 bg-white border-[1px] border-[#9BA4B5] p-2 px-2 rounded-md text-xl focus:border-[#142580] focus:border-[2px]">
                    <option value="Student">Teacher - 1</option>
                    <option value="Techer">Teacher - 2</option>
                    <option value="Student">Teacher - 3</option>
                    <option value="Techer">Teacher - 4</option>
                </select>
            </div>
            <div class="w-full flex justify-center items-center">
                <button class="border-none w-[200px] py-4 px-6 bg-[#142580] text-xl text-white rounded-md mt-8">Create Course</button>
            </div>
        </div>
    </div>
</div>
</body>
</html>
