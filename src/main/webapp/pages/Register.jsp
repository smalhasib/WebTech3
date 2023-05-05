<%--
  Created by IntelliJ IDEA.
  User: shanto
  Date: 5/4/23
  Time: 11:27 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Register</title>
    <script src="https://cdn.tailwindcss.com"></script>
</head>
<body>
<%@ include file="/layout/header.jsp" %>
<div class="w-[100%] h-full flex justify-center items-center">
    <div class="w-[55%] flex justify-between flex-row-reverse items-start p-3 mb-10">
        <div class="w-full">
            <img src="https://img.freepik.com/free-vector/sign-up-concept-illustration_114360-7965.jpg?w=826&t=st=1683221106~exp=1683221706~hmac=79686b2950e336d8abcdf50c1e0cb819b98d19f15aa562aa64d4ed23c13b6d88" alt="login"
                 class="w-full h-[65vh]">
        </div>
        <div class="w-full flex flex-col items-center">
            <div class="w-full flex justify-center">
                <h1 class="text-3xl font-bold text-[#142580]">Signup</h1>
            </div>
            <div class="w-full flex flex-col items-start mt-5">
                <div class="w-full flex flex-col items-start">
                    <span class="text-xl font-bold text-[#142580]">Name</span>
                    <input type="text" placeholder="Name" class="outline-none mt-2 w-full border-[1px] border-[#9BA4B5] p-2 rounded-md text-xl focus:border-[#142580] focus:border-[2px]">
                </div>
                <div class="w-full flex flex-col items-start mt-4">
                    <span class="text-xl font-bold text-[#142580]">Email</span>
                    <input type="text" placeholder="username" class="outline-none mt-2 w-full border-[1px] border-[#9BA4B5] p-2 rounded-md text-xl focus:border-[#142580] focus:border-[2px]">
                </div>
                <div class="w-full flex flex-col items-start mt-4">
                    <span class="text-xl font-bold text-[#142580]">Username</span>
                    <input type="text" placeholder="username" class="outline-none mt-2 w-full border-[1px] border-[#9BA4B5] p-2 rounded-md text-xl focus:border-[#142580] focus:border-[2px]">
                </div>
                <div class="w-full flex flex-col items-start mt-4">
                    <span class="text-xl font-bold text-[#142580]">Password</span>
                    <input type="password" placeholder="*******" class="outline-none mt-2 w-full border-[1px] border-[#9BA4B5] p-2 rounded-md text-xl focus:border-[#142580] focus:border-[2px]">
                </div>
                <div class="w-full flex flex-col items-start mt-4">
                    <span class="text-xl font-bold text-[#142580]">Role</span>
                    <select name="Role" id="role" class="w-full mt-2 bg-white border-[1px] border-[#9BA4B5] p-2 px-2 rounded-md text-xl focus:border-[#142580] focus:border-[2px]">
                        <option value="Student">Student</option>
                        <option value="Techer">Teacher</option>
                    </select>
                </div>
                <div class="w-full flex flex-col items-start mt-4">
                    <span class="text-xl font-bold text-[#142580]">Department</span>
                    <select name="Role" id="role" class="w-full mt-2 bg-white border-[1px] border-[#9BA4B5] p-2 px-2 rounded-md text-xl focus:border-[#142580] focus:border-[2px]">
                        <option value="CSE">CSE</option>
                        <option value="EEE">EEE</option>
                        <option value="SWE">SWE</option>
                        <option value="IPE">IPE</option>
                        <option value="CEE">CEE</option>
                        <option value="CEP">CEP</option>
                    </select>
                </div>
                <div class="w-full flex justify-center">
                    <button class="border-none w-[200px] py-2 px-4 bg-[#142580] text-xl text-white rounded-md mt-5">Signup</button>
                </div>
            </div>
        </div>
    </div>
</div>
</body>
</html>
