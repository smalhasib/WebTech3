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

@WebServlet(name = "Admin", value = "/admin")
public class AdminServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        UserDao userDao = UserDao.getInstance();
        CourseDao courseDao = CourseDao.getInstance();

        List<User> students = userDao.loadAllStudents();
        List<User> teachers = userDao.loadAllTeachers();
        List<Course> courses = courseDao.AllCourses();

        request.setAttribute("allStudents", students);
        request.setAttribute("allTeachers", teachers);
        request.setAttribute("allCourses", courses);

        HttpSession session = request.getSession();
        User user = (User) session.getAttribute("loggedInUser");
        if (user != null && user.getRole().compareTo("Admin") == 0) {
            RequestDispatcher dispatcher = request.getRequestDispatcher("/pages/Admin.jsp");
            dispatcher.forward(request, response);
        } else {
            response.sendRedirect("/login");
        }
    }
}