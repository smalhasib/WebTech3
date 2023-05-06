package com.mita.webtech3.controller;

import com.mita.webtech3.db.CourseDao;
import com.mita.webtech3.db.UserDao;
import com.mita.webtech3.model.Course;
import com.mita.webtech3.model.User;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet(name = "SingleCourse", value = "/course/*")
public class SingleCourseServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String pathInfo = request.getPathInfo();
        String[] parts = pathInfo.split("/");
        int id = Integer.parseInt(parts[1]);

        CourseDao courseDao = CourseDao.getInstance();
        Course course = courseDao.loadCoursesById(id);
        User user = course.getTeacher();
        System.out.println(user);
        request.setAttribute("singleCourse", course);
        request.setAttribute("courseTeacher", user);

        RequestDispatcher dispatcher = request.getRequestDispatcher("/pages/SingleCourse.jsp");
        dispatcher.forward(request, response);
    }

}
