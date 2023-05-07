package com.mita.webtech3.db;

import com.mita.webtech3.model.Enrollment;
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

    public void coursesByStudentId(int studentId) {
        List<Enrollment> courses;
        try {
            Session session = sessionFactory.openSession();
            Query<Enrollment> query = session.createQuery("FROM Enrollment", Enrollment.class);
//            query.setParameter("studentId", studentId);
            courses = query.getResultList();
            System.out.println(courses);
            session.close();
        } catch (HibernateException e) {
            throw new RuntimeException(e);
        }
        //return courses;
    }
}
