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
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.util.List;

@WebServlet(name = "CreateCourse", value = "/create")
public class CreateCourseServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        UserDao userDao = UserDao.getInstance();
        List<User> teachers = userDao.loadAllTeachers();
        request.setAttribute("teachers", teachers);


        HttpSession session = request.getSession();
        User user = (User) session.getAttribute("loggedInUser");
        if (user != null && user.getRole().compareTo("Admin") == 0) {
            RequestDispatcher dispatcher = request.getRequestDispatcher("/pages/CreateCourse.jsp");
            dispatcher.forward(request, response);
        } else {
            response.sendRedirect("/");
        }

    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String title = req.getParameter("title");
        String description = req.getParameter("description");
        String teacherId = req.getParameter("teacher");
        UserDao userDao = UserDao.getInstance();
        User user = userDao.userById(Integer.parseInt(teacherId));
        Course course = Course.builder().title(title).description(description).teacher(user).build();
        System.out.println(course);
        CourseDao courseDao = CourseDao.getInstance();
        courseDao.addCourse(course);
        resp.sendRedirect("/admin");
    }
}