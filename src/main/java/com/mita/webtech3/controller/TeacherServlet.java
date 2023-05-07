package com.mita.webtech3.controller;

import com.mita.webtech3.db.CourseDao;
import com.mita.webtech3.model.User;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;

@WebServlet(name = "Teacher", value = "/teacher")
public class TeacherServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        HttpSession session = request.getSession();
        User user = (User) session.getAttribute("loggedInUser");
        if (user != null && user.getRole().compareTo("Teacher") == 0) {
            CourseDao courseDao = CourseDao.getInstance();
            request.setAttribute("courses", courseDao.loadCoursesByTeacherId(user.getId()));
            RequestDispatcher dispatcher = request.getRequestDispatcher("/pages/Teacher.jsp");
            dispatcher.forward(request, response);
        } else {
            response.sendRedirect("/login");
        }

    }
}
