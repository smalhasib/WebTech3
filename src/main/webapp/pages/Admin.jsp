<%--
  Created by IntelliJ IDEA.
  User: shanto
  Date: 5/5/23
  Time: 11:54 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Admin</title>
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
                <h1 class="text-[2.5rem] font-bold text-white">Manage Courses Properly.</h1>
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

<%-- students, teachers, courses, enrolled course numbers....--%>
    <div class="w-full flex justify-center items-center mt-20">
        <div class="w-[80%] grid grid-cols-3 gap-10">

            <div class="flex items-center p-8 bg-white border-2 shadow-sm rounded-lg">
                <div class="inline-flex flex-shrink-0 items-center justify-center h-16 w-16 text-blue-600 bg-blue-100 rounded-full mr-6">
                    <svg aria-hidden="true" fill="none" viewBox="0 0 24 24" stroke="currentColor" class="h-6 w-6">
                        <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M17 20h5v-2a3 3 0 00-5.356-1.857M17 20H7m10 0v-2c0-.656-.126-1.283-.356-1.857M7 20H2v-2a3 3 0 015.356-1.857M7 20v-2c0-.656.126-1.283.356-1.857m0 0a5.002 5.002 0 019.288 0M15 7a3 3 0 11-6 0 3 3 0 016 0zm6 3a2 2 0 11-4 0 2 2 0 014 0zM7 10a2 2 0 11-4 0 2 2 0 014 0z" />
                    </svg>
                </div>
                <div>
                    <span class="block text-2xl font-bold">6</span>
                    <span class="block text-gray-500">Students</span>
                </div>
            </div>

            <div class="flex items-center p-8 bg-white border-2 shadow-sm rounded-lg">
                <div class="inline-flex flex-shrink-0 items-center justify-center h-16 w-16 text-green-600 bg-green-100 rounded-full mr-6">
                    <svg aria-hidden="true" fill="none" viewBox="0 0 24 24" stroke="currentColor" class="h-6 w-6">
                        <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M17 20h5v-2a3 3 0 00-5.356-1.857M17 20H7m10 0v-2c0-.656-.126-1.283-.356-1.857M7 20H2v-2a3 3 0 015.356-1.857M7 20v-2c0-.656.126-1.283.356-1.857m0 0a5.002 5.002 0 019.288 0M15 7a3 3 0 11-6 0 3 3 0 016 0zm6 3a2 2 0 11-4 0 2 2 0 014 0zM7 10a2 2 0 11-4 0 2 2 0 014 0z" />
                    </svg>
                </div>
                <div>
                    <span class="block text-2xl font-bold">6</span>
                    <span class="block text-gray-500">Teachers</span>
                </div>
            </div>
            <div class="flex items-center p-8 bg-white border-2 shadow-sm rounded-lg">
                <div class="inline-flex flex-shrink-0 items-center justify-center h-16 w-16 text-blue-600 bg-orange-100 rounded-full mr-6">
                    <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="1.5" stroke="currentColor" class="w-6 h-6">
                        <path stroke-linecap="round" stroke-linejoin="round" d="M9 17.25v1.007a3 3 0 01-.879 2.122L7.5 21h9l-.621-.621A3 3 0 0115 18.257V17.25m6-12V15a2.25 2.25 0 01-2.25 2.25H5.25A2.25 2.25 0 013 15V5.25m18 0A2.25 2.25 0 0018.75 3H5.25A2.25 2.25 0 003 5.25m18 0V12a2.25 2.25 0 01-2.25 2.25H5.25A2.25 2.25 0 013 12V5.25" />
                    </svg>
                </div>
                <div>
                    <span class="block text-2xl font-bold">6</span>
                    <span class="block text-gray-500">Total Courses</span>
                </div>
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

<%--    teachers list--%>

        <div class="w-full flex flex-col justify-center items-center mt-10 pb-8">
            <div class="w-[80%] flex justify-start items-center gap-2">
                <svg aria-hidden="true" fill="none" viewBox="0 0 24 24" stroke="currentColor" class="h-6 w-6">
                    <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M17 20h5v-2a3 3 0 00-5.356-1.857M17 20H7m10 0v-2c0-.656-.126-1.283-.356-1.857M7 20H2v-2a3 3 0 015.356-1.857M7 20v-2c0-.656.126-1.283.356-1.857m0 0a5.002 5.002 0 019.288 0M15 7a3 3 0 11-6 0 3 3 0 016 0zm6 3a2 2 0 11-4 0 2 2 0 014 0zM7 10a2 2 0 11-4 0 2 2 0 014 0z" />
                </svg>
                <h1 class="text-2xl font-bold ">Teachers list</h1>
            </div>
            <div class="w-[80%] mt-3">
                <table class="w-full text-s text-left text-gray-500">
                    <thead class="text-md text-gray-700 bg-gray-50">
                    <tr>
                        <th scope="col" class="px-6 py-3">
                            Name
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
<%--    --%>
</div>
</body>
</html>
