package com.mita.webtech3.controller;

import com.mita.webtech3.db.CourseDao;
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

@WebServlet(name = "Courses", value = "/courses")
public class CoursesServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        CourseDao courseDao = CourseDao.getInstance();
        List<Course> courses = courseDao.AllCourses();
        request.setAttribute("allCourses",courses);

        HttpSession session = request.getSession();
        User user = (User) session.getAttribute("loggedInUser");
        if (user != null && user.getRole().compareTo("Admin") == 0) {
            RequestDispatcher dispatcher = request.getRequestDispatcher("/pages/Courses.jsp");
            dispatcher.forward(request, response);
        }
        if (user != null && user.getRole().compareTo("Teacher") == 0) {
            RequestDispatcher dispatcher = request.getRequestDispatcher("/pages/Courses.jsp");
            dispatcher.forward(request, response);
        }
        if (user != null && user.getRole().compareTo("Student") == 0) {
            RequestDispatcher dispatcher = request.getRequestDispatcher("/pages/Courses.jsp");
            dispatcher.forward(request, response);
        } else {
            response.sendRedirect("/login");
        }
    }
}
