package com.mita.webtech3.db;

import com.mita.webtech3.model.Course;
import com.mita.webtech3.model.Enrollment;
import com.mita.webtech3.model.User;
import com.mita.webtech3.utils.FactoryProvider;
import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.query.Query;

import java.util.List;

public class EnrollmentDao {
    private static EnrollmentDao instance = null;
    private final SessionFactory sessionFactory;

    private EnrollmentDao() {
        sessionFactory = FactoryProvider.getSessionFactory();
    }

    public static EnrollmentDao getInstance() {
        if (instance == null) {
            instance = new EnrollmentDao();
        }
        return instance;
    }

    public void addEnrollment(Enrollment enrollment) {
        try {
            Session session = sessionFactory.openSession();
            Transaction transaction = session.beginTransaction();
            session.persist(enrollment);
            transaction.commit();
            session.close();
        } catch (HibernateException e) {
            throw new RuntimeException(e);
        }
    }

    public List<Course> coursesByStudentId(int studentId) {
        List<Course> courses;
        try {
            Session session = sessionFactory.openSession();
            Query<Enrollment> query = session.createQuery("SELECT e FROM Enrollment e WHERE e.student.id = :studentId", Enrollment.class);
            query.setParameter("studentId", studentId);
            courses = query.getResultList().stream().map(Enrollment::getCourse).toList();
            System.out.println(courses);
            session.close();
        } catch (HibernateException e) {
            throw new RuntimeException(e);
        }
        return courses;
    }

    public List<User> studentsByCourseId(int courseId) {
        List<User> students;
        try {
            Session session = sessionFactory.openSession();
            Query<Enrollment> query = session.createQuery("SELECT e FROM Enrollment e WHERE e.course.id = :courseId", Enrollment.class);
            query.setParameter("courseId", courseId);
            students = query.getResultList().stream().map(Enrollment::getStudent).toList();
            System.out.println(students);
            session.close();
        } catch (HibernateException e) {
            throw new RuntimeException(e);
        }
        return students;
    }
}

