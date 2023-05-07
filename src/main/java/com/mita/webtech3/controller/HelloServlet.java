package com.mita.webtech3.controller;

import com.mita.webtech3.db.CourseDao;
import com.mita.webtech3.db.EnrollmentDao;
import com.mita.webtech3.db.UserDao;
import com.mita.webtech3.model.Course;
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
            CourseDao courseDao = CourseDao.getInstance();
            UserDao userDao = UserDao.getInstance();
            EnrollmentDao enrollmentDao = EnrollmentDao.getInstance();
            User user = User.builder().id(1).username("student15").email("e20").password("p20").department(Department.CSE).role(UserType.STUDENT).build();
            User teacher = User.builder().id(2).username("teacher4").email("e6").password("p6").department(Department.CSE).role(UserType.TEACHER).build();
            Course course = Course.builder().id(1).name("OOP").teacher(teacher).department(Department.CSE).build();
//            userDao.createUser(user);
//            userDao.createUser(teacher);
//            dao.addCourse(course);
//            dao.loadCoursesByTeacherId(user);
            //System.out.println(dao.loadCoursesById(1));;
            System.out.println(enrollmentDao.studentsByCourseId(2));
//            enrollmentDao.coursesByStudentId(7);
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