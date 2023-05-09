<%--
  Created by IntelliJ IDEA.
  User: shanto
  Date: 5/5/23
  Time: 12:31 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div class="w-full flex justify-center items-center shadow-md">
   <div class="w-[80%] p-4 flex justify-between items-center ">
       <div class="w-full flex items-center gap-4">
           <h1 style="font-family: 'Lobster'" class="text-3xl text-[#142580] font-bold">Learn-Online</h1>
       </div>
       <ul class="w-full flex justify-end gap-20 items-center decoration-none">
           <li><a href="/" class="text-lg font-bold text-[#142580]">Home</a></li>
           <li><a href="courses" class="text-lg font-bold text-[#142580]">Courses</a></li>

           <c:choose>
               <c:when test="${loggedInUser.role == 'Teacher'}">
                   <li><a href="logout" class="text-lg font-bold text-[#142580]">Logout</a></li>
                   <li><a href="teacher" class="text-lg font-bold text-[#142580]">
                       <img class="w-10 h-10 p-1 rounded-full ring-2 ring-gray-300 dark:ring-gray-500" src="https://img.freepik.com/premium-psd/3d-rendering-graduation-male-avatar_52659-1060.jpg?w=826" alt="Bordered avatar">
                   </a></li>
               </c:when>
               <c:when test="${loggedInUser.role == 'Admin'}">
                   <li><a href="create" class="text-lg font-bold text-[#142580]">Create Course</a></li>
                   <li><a href="logout" class="text-lg font-bold text-[#142580]">Logout</a></li>
                   <li><a href="admin" class="text-lg font-bold text-[#142580]">
                       <img class="w-10 h-10 p-1 rounded-full ring-2 ring-gray-300 dark:ring-gray-500" src="https://img.freepik.com/premium-psd/3d-rendering-graduation-male-avatar_52659-1060.jpg?w=826" alt="Bordered avatar">
                   </a></li>
               </c:when>
               <c:when test="${loggedInUser.role == 'Student'}">
                   <li><a href="logout" class="text-lg font-bold text-[#142580]">Logout</a></li>
                   <li><a href="student" class="text-lg font-bold text-[#142580]">
                       <img class="w-10 h-10 p-1 rounded-full ring-2 ring-gray-300 dark:ring-gray-500" src="https://img.freepik.com/premium-psd/3d-rendering-graduation-male-avatar_52659-1060.jpg?w=826" alt="Bordered avatar">
                   </a></li>
               </c:when>
               <c:otherwise>
                   <li><a href="login" class="text-lg font-bold text-[#142580]">Signin</a></li>
                   <li><a href="register" class="text-lg font-bold text-[#142580]">Signup</a></li>
               </c:otherwise>
           </c:choose>
       </ul>
   </div>
</div>

