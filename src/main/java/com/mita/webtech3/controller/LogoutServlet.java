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

@WebServlet(name = "Logout", value = "/logout")
public class LogoutServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        session.setAttribute("loggedInUser", null);
        RequestDispatcher dispatcher = request.getRequestDispatcher("/pages/Login.jsp");
        dispatcher.forward(request, response);
    }

}
