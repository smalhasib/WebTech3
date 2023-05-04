package com.mita.webtech3.db;

import com.mita.webtech3.model.Course;
import com.mita.webtech3.model.User;
import com.mita.webtech3.utils.FactoryProvider;
import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.query.Query;

import java.util.List;

public class CourseDao {
    private static CourseDao instance = null;
    private final SessionFactory sessionFactory;

    private CourseDao() {
        sessionFactory = FactoryProvider.getSessionFactory();
    }

    public static CourseDao getInstance() {
        if (instance == null) {
            instance = new CourseDao();
        }
        return instance;
    }

    public void addCourse(Course course) {
        try {
            Session session = sessionFactory.openSession();
            Transaction transaction = session.beginTransaction();
            session.persist(course);
            transaction.commit();
            session.close();
        } catch (HibernateException e) {
            throw new RuntimeException(e);
        }
    }

    public List<Course> AllCourses() {
        List<Course> courses;
        try {
            Session session = sessionFactory.openSession();
            Query<Course> query = session.createQuery("FROM Course", Course.class);
            courses = query.getResultList();
            System.out.println(courses);
            session.close();
        } catch (HibernateException e) {
            throw new RuntimeException(e);
        }
        return courses;
    }

    public List<Course> loadCoursesByTeacherId(User user) {
        List<Course> courses;
        try {
            Session session = sessionFactory.openSession();
            Query<Course> query = session.createQuery("SELECT u FROM Course u WHERE u.teacher = :user", Course.class);
            query.setParameter("user", user);
            courses = query.getResultList();
            System.out.println(courses);
            session.close();
        } catch (HibernateException e) {
            throw new RuntimeException(e);
        }
        return courses;
    }
}
