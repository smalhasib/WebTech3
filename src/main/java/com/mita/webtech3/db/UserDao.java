package com.mita.webtech3.db;

import com.mita.webtech3.model.User;
import com.mita.webtech3.utils.FactoryProvider;
import com.mita.webtech3.utils.UserType;
import jakarta.persistence.TypedQuery;
import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.query.Query;

import java.util.List;

public class UserDao {

    private static UserDao instance = null;
    private final SessionFactory sessionFactory;

    private UserDao() {
        sessionFactory = FactoryProvider.getSessionFactory();
    }

    public static UserDao getInstance() {
        if (instance == null) {
            instance = new UserDao();
        }
        return instance;
    }

    public void createUser(User user) {
        try {
            Session session = sessionFactory.openSession();
            Transaction transaction = session.beginTransaction();
            session.persist(user);
            transaction.commit();
            session.close();
        } catch (HibernateException e) {
            throw new RuntimeException(e);
        }
    }

    public User loginUser(String username, String password) {
        User user;
        try {
            Session session = sessionFactory.openSession();
            TypedQuery<User> query = session.createQuery("SELECT u FROM User u WHERE u.username = :username AND u.password = :password", User.class);
            query.setParameter("username", username);
            query.setParameter("password", password);
            user = query.getSingleResult();
            System.out.println(user);
            session.close();
        } catch (HibernateException e) {
            throw new RuntimeException(e);
        }
        return user;
    }

    public User userById(int userId) {
        User user;
        try {
            Session session = sessionFactory.openSession();
            TypedQuery<User> query = session.createQuery("SELECT u FROM User u WHERE u.id = :userId", User.class);
            query.setParameter("userId", userId);
            user = query.getSingleResult();
            System.out.println(user);
            session.close();
        } catch (HibernateException e) {
            throw new RuntimeException(e);
        }
        return user;
    }

    public List<User> loadAllTeachers() {
        List<User> teachers;
        try {
            Session session = sessionFactory.openSession();
            Query<User> query = session.createQuery("SELECT u FROM User u WHERE u.role = :role", User.class);
            query.setParameter("role", "Teacher");
            teachers = query.getResultList();
            System.out.println(teachers);
            session.close();
        } catch (HibernateException e) {
            throw new RuntimeException(e);
        }
        return teachers;
    }

    public List<User> loadAllStudents() {
        List<User> students;
        try {
            Session session = sessionFactory.openSession();
            Query<User> query = session.createQuery("SELECT u FROM User u WHERE u.role = :role", User.class);
            query.setParameter("role", "Student");
            students = query.getResultList();
            System.out.println(students);
            session.close();
        } catch (HibernateException e) {
            throw new RuntimeException(e);
        }
        return students;
    }
}
