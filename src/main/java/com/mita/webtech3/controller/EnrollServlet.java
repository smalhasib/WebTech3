package com.mita.webtech3.controller;

import com.mita.webtech3.db.CourseDao;
import com.mita.webtech3.db.EnrollmentDao;
import com.mita.webtech3.model.Course;
import com.mita.webtech3.model.Enrollment;
import com.mita.webtech3.model.User;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;

@WebServlet(name = "Enrollment", value = "/enroll")
public class EnrollServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        HttpSession session = request.getSession();
        User user = (User) session.getAttribute("loggedInUser");
        CourseDao courseDao = CourseDao.getInstance();
        Course course = courseDao.loadCoursesById(id);
        EnrollmentDao enrollmentDao = EnrollmentDao.getInstance();
        Enrollment enrollment = Enrollment.builder().course(course).student(user).build();
        enrollmentDao.addEnrollment(enrollment);
        response.sendRedirect("/student");
    }
}