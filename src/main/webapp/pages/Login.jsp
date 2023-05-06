<%--
  Created by IntelliJ IDEA.
  User: shanto
  Date: 5/4/23
  Time: 8:00 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Login</title>
    <script src="https://cdn.tailwindcss.com"></script>
    <script src="https://cdn.tailwindcss.com"></script>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Lobster&display=swap" rel="stylesheet">
</head>
<body>
<%@ include file="/layout/header.jsp" %>
<div class="w-[100%] h-full flex justify-center items-center">
    <div class="w-[50%] flex justify-between items-start p-3 mb-20">
        <div class="w-full">
            <img src="https://static.vecteezy.com/system/resources/previews/005/879/539/original/cloud-computing-modern-flat-concept-for-web-banner-design-man-enters-password-and-login-to-access-cloud-storage-for-uploading-and-processing-files-illustration-with-isolated-people-scene-free-vector.jpg" alt="login"
                 class="w-full h-[35vh]">
        </div>
        <div class="w-full flex flex-col items-center">
            <div class="w-full flex justify-center">
                <h1 class="text-3xl font-bold text-[#142580]">Signin</h1>
            </div>
            <div class="w-full flex flex-col items-start mt-5">
                <div class="w-full flex flex-col items-start">
                    <span class="text-xl font-bold text-[#142580]">Username</span>
                    <input type="text" placeholder="username" class="outline-none mt-2 w-full border-[1px] border-[#9BA4B5] p-2 rounded-md text-xl focus:border-[#142580] focus:border-[2px]">
                </div>
                <div class="w-full flex flex-col items-start mt-4">
                    <span class="text-xl font-bold text-[#142580]">Password</span>
                    <input type="password" placeholder="*******" class="outline-none mt-2 w-full border-[1px] border-[#9BA4B5] p-2 rounded-md text-xl focus:border-[#142580] focus:border-[2px]">
                </div>
                <div class="w-full flex justify-center">
                    <button class="border-none w-[200px] py-2 px-4 bg-[#142580] text-xl text-white rounded-md mt-5">Signin</button>
                </div>
            </div>
        </div>
    </div>
</div>
</body>
</html>
