package com.mita.webtech3.db;

import com.mita.webtech3.model.Course;
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

    public Course loadCoursesById(int id) {
        Course course;
        try {
            Session session = sessionFactory.openSession();
            course = session.get(Course.class, id);
            System.out.println(course);
            session.close();
        } catch (HibernateException e) {
            throw new RuntimeException(e);
        }
        return course;
    }

    public List<Course> loadCoursesByTeacherId(int userId) {
        List<Course> courses;
        try {
            Session session = sessionFactory.openSession();
            Query<Course> query = session.createQuery("SELECT u FROM Course u WHERE u.teacher.id = :userId", Course.class);
            query.setParameter("userId", userId);
            courses = query.getResultList();
            System.out.println(courses);
            session.close();
        } catch (HibernateException e) {
            throw new RuntimeException(e);
        }
        return courses;
    }
}
