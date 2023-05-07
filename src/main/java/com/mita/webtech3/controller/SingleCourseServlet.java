package com.mita.webtech3.controller;

import com.mita.webtech3.db.CourseDao;
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

@WebServlet(name = "SingleCourse", value = "/single-course")
public class SingleCourseServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        User user = (User) session.getAttribute("loggedInUser");
        if (user.getRole().compareTo("Student") != 0) {
            int id = Integer.parseInt(request.getParameter("id"));

            CourseDao courseDao = CourseDao.getInstance();
            Course course = courseDao.loadCoursesById(id);
            User teacher = course.getTeacher();
            System.out.println(teacher);
            request.setAttribute("singleCourse", course);
            request.setAttribute("courseTeacher", teacher);
            EnrollmentDao enrollmentDao = EnrollmentDao.getInstance();
            request.setAttribute("enrolledStudents", enrollmentDao.studentsByCourseId(course.getId()));

            RequestDispatcher dispatcher = request.getRequestDispatcher("/pages/SingleCourse.jsp");
            dispatcher.forward(request, response);
        } else {
            response.sendRedirect("/login");
        }
    }

}
