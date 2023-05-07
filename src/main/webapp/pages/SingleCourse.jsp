<%--
  Created by IntelliJ IDEA.
  User: shanto
  Date: 5/6/23
  Time: 2:52 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
<%@ include file="/layout/header.jsp" %>
<div>
        <%-- short details with search bar...--%>
        <div style="border-bottom-left-radius: 6rem" class="w-full h-[35vh] bg-[#142580] flex justify-center items-center">
            <div class="w-[80%] flex justify-center items-center p-3">
                <div class="w-full flex flex-col items-center p-4">
                    <h1 class="text-[2.5rem] font-bold text-white">${singleCourse.title}</h1>
                    <p class="text-md leading-6 text-white px-4">${singleCourse.description}</p>
                </div>
                <div class="w-full flex flex-col items-center p-4">
                    <p class="text-xl text-white px-4">Course Instructor : ${courseTeacher.name}</p>
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
                    <c:forEach items="${enrolledStudents}" var="student">
                        <tbody>
                        <tr class="bg-white border-b hover:bg-gray-50">
                            <th scope="row" class="px-6 py-4 font-medium text-gray-900 whitespace-nowrap ">
                                    ${student.name}
                            </th>
                            <td class="px-6 py-4">
                                    ${student.department}
                            </td>
                            <td class="px-6 py-4">
                                    ${student.username}
                            </td>
                            <td class="px-6 py-4">
                                    ${student.email}
                            </td>
                        </tr>
                        </tbody>
                    </c:forEach>
                </table>
            </div>
        </div>
</div>
</body>
</html>
