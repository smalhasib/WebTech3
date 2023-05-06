<%--
  Created by IntelliJ IDEA.
  User: shanto
  Date: 5/6/23
  Time: 2:52 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Course</title>
    <script src="https://cdn.tailwindcss.com"></script>
    <script src="https://cdn.tailwindcss.com"></script>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Lobster&display=swap" rel="stylesheet">
</head>
<body>
<div>
    <%--Header part.....--%>
    <div class="w-full flex justify-center items-center shadow-md">
        <div class="w-[70%] p-4 flex justify-between items-center ">
            <div class="w-full flex items-center gap-4">
                <h1 style="font-family: 'Lobster'" class="text-3xl text-[#142580] font-bold">Learn-Online</h1>
            </div>
            <ul class="w-full flex justify-end gap-20 items-center decoration-none">
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
                <div class="w-full flex flex-col items-center p-4">
                    <h1 class="text-[2.5rem] font-bold text-white">Course Title</h1>
                    <p class="text-xl text-white px-4">Course Description</p>
                </div>
                <div class="w-full flex flex-col items-center p-4">
                    <p class="text-xl text-white px-4">Course Instructor : Dr. Farhad Rabby</p>
                    <p class="text-xl text-white px-4">Department : CSE</p>
                </div>
            </div>
        </div>


        <%--    student details table ...--%>
        <div class="w-full flex flex-col justify-center items-center mt-10">
            <div class="w-[80%] flex justify-start items-center gap-2">
                <svg aria-hidden="true" fill="none" viewBox="0 0 24 24" stroke="currentColor" class="h-6 w-6">
                    <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M17 20h5v-2a3 3 0 00-5.356-1.857M17 20H7m10 0v-2c0-.656-.126-1.283-.356-1.857M7 20H2v-2a3 3 0 015.356-1.857M7 20v-2c0-.656.126-1.283.356-1.857m0 0a5.002 5.002 0 019.288 0M15 7a3 3 0 11-6 0 3 3 0 016 0zm6 3a2 2 0 11-4 0 2 2 0 014 0zM7 10a2 2 0 11-4 0 2 2 0 014 0z" />
                </svg>
                <h1 class="text-2xl font-bold ">Students list</h1>
            </div>
            <div class="w-[80%] mt-3">
                <table class="w-full text-s text-left text-gray-500">
                    <thead class="text-md text-gray-700 bg-gray-50">
                    <tr>
                        <th scope="col" class="px-6 py-3">
                            Name
                        </th>
                        <th scope="col" class="px-6 py-3">
                            Registration
                        </th>
                        <th scope="col" class="px-6 py-3">
                            Department
                        </th>
                        <th scope="col" class="px-6 py-3">
                            Username
                        </th>
                        <th scope="col" class="px-6 py-3">
                            Email
                        </th>
                    </tr>
                    </thead>
                    <tbody>
                    <tr class="bg-white border-b hover:bg-gray-50">
                        <th scope="row" class="px-6 py-4 font-medium text-gray-900 whitespace-nowrap ">
                            Hasibul Islam Shanto
                        </th>
                        <td class="px-6 py-4">
                            2018331078
                        </td>
                        <td class="px-6 py-4">
                            CSE
                        </td>
                        <td class="px-6 py-4">
                            shanto78
                        </td>
                        <td class="px-6 py-4">
                            shanto78@gmail.com
                        </td>
                    </tr>

                    </tbody>
                </table>
            </div>
        </div>
</div>
</body>
</html>
