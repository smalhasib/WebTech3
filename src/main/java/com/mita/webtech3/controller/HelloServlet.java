package com.mita.webtech3.controller;

import com.mita.webtech3.db.CourseDao;
import com.mita.webtech3.db.UserDao;
import com.mita.webtech3.model.User;
import com.mita.webtech3.utils.Department;
import com.mita.webtech3.utils.UserType;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import org.hibernate.HibernateException;

import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "helloServlet", value = "/hello-servlet")
public class HelloServlet extends HttpServlet {

    private String message;

    public void init() {
        message = "He World!";
    }

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
        System.out.println("Working ....");
        try {
            CourseDao dao = CourseDao.getInstance();
            UserDao userDao = UserDao.getInstance();
            User user = User.builder().id(2).username("teacher1").email("e2").password("p2").department(Department.CSE).role(UserType.TEACHER).build();
//            Course course = Course.builder().name("Web Tech").teacher(user).department(Department.CSE).build();
//            dao.addCourse(course);
            dao.loadCoursesByTeacherId(user);
        } catch (HibernateException e) {
            throw new RuntimeException(e);
        }

        // Hello
        PrintWriter out = response.getWriter();
        out.println("<html><body>");
        out.println("<h1>" + message + "</h1>");
        out.println("</body></html>");
    }

    public void destroy() {
    }
}