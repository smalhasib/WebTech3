package com.mita.webtech3.controller;

import com.mita.webtech3.db.EnrollmentDao;
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

@WebServlet(name = "Student", value = "/student")
public class StudentServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        HttpSession session = request.getSession();
        User user = (User) session.getAttribute("loggedInUser");

        if (user != null && user.getRole().compareTo("Student") == 0) {
            List<Course> courses = EnrollmentDao.getInstance().coursesByStudentId(user.getId());
            request.setAttribute("enrolledCourses", courses);

            RequestDispatcher dispatcher = request.getRequestDispatcher("/pages/Student.jsp");
            dispatcher.forward(request, response);
        } else {
            response.sendRedirect("/login");
        }
    }
}