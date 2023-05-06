package com.mita.webtech3.controller;


import com.mita.webtech3.db.UserDao;
import com.mita.webtech3.model.User;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;

@WebServlet(name = "Login", value = "/login")
public class LoginServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        RequestDispatcher dispatcher = request.getRequestDispatcher("/pages/Login.jsp");
        dispatcher.forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String username = req.getParameter("username");
        String password = req.getParameter("password");
        UserDao userDao = UserDao.getInstance();
        User user = userDao.loginUser(username, password);
        if (user != null) {
            HttpSession session = req.getSession();
            session.setAttribute("loggedInUser", user);
            if (user.getRole().compareTo("Student") == 0) {
                resp.sendRedirect("/student");
            } else if (user.getRole().compareTo("Teacher") == 0) {
                resp.sendRedirect("/teacher");
            } else if (user.getRole().compareTo("Admin") == 0) {
                resp.sendRedirect("/admin");
            }
        }
    }
}
