<%--
  Created by IntelliJ IDEA.
  User: shanto
  Date: 5/5/23
  Time: 7:52 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Courses</title>
    <script src="https://cdn.tailwindcss.com"></script>
    <script src="https://cdn.tailwindcss.com"></script>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Lobster&display=swap" rel="stylesheet">
</head>
<body>
<%@ include file="/layout/header.jsp" %>
<div class="w-full bg-white">
<div style="border-bottom-left-radius: 6rem" class="w-full h-[35vh] bg-[#142580] flex justify-center items-center">
 <div class="w-[80%] flex justify-center items-center p-3">
     <div class="w-full flex flex-col p-4">
         <h1 class="text-[3rem] font-bold text-white">Get Your Courses.</h1>
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
    <div class="w-full flex flex-col justify-center items-center">
       <div class="flex flex-col justify-center items-center mt-5">
           <h1 class="text-[2.5rem] font-bold text-[#142580]">Courses</h1>
           <div class="w-[100px] h-[5px] bg-[#142580]"></div>
       </div>

        <div class="w-[80%] grid grid-cols-3 gap-20 mt-4 p-5">

            <c:forEach items="${allCourses}" var="course">
                <div style="border-top-left-radius: 100px" class="min-w-[300px] border-2 flex flex-col justify-center items-center shadow-md pb-5">
                    <div style="border-top-left-radius: 100px" class="bg-[#142580] h-[200px] w-full"></div>
                    <div class="w-full h-[200px] flex flex-col justify-center items-center p-3">
                        <h1 class="text-lg font-bold">${course.title}</h1>
                        <p class="text-l text-gray-700 mt-3">${course.description}</p>
                    </div>
                    <div class="w-full flex justify-center">
                        <c:if test="${loggedInUser.role == 'Teacher'}">
                            <a href="single-course?id=${course.id}" class="border-none px-10 py-2 bg-[#142580] text-lg text-white rounded-md mt-4">Details</a>
                        </c:if>
                        <c:if test="${loggedInUser.role == 'Admin'}">
                            <a href="single-course?id=${course.id}" class="border-none px-10 py-2 bg-[#142580] text-lg text-white rounded-md mt-4">Details</a>
                        </c:if>
                          <c:if test="${loggedInUser.role == 'Student'}">
                              <a href="enroll?id=${course.id}" class="border-none px-10 py-2 bg-[#142580] text-lg text-white rounded-md mt-4">Enroll</a>
                          </c:if>

                    </div>
                </div>
            </c:forEach>
        </div>
    </div>
</div>

</body>
</html>
