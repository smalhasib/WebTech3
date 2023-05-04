package com.mita.webtech3.db;

import com.mita.webtech3.model.User;
import com.mita.webtech3.utils.FactoryProvider;
import com.mita.webtech3.utils.UserType;
import jakarta.persistence.TypedQuery;
import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

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

    public void createUser(String email, String password, UserType role) {
        User user = User.builder().email(email).password(password).role(role).build();
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

    public void loginUser(String email, String password) {
        try {
            Session session = sessionFactory.openSession();
            TypedQuery<User> query = session.createQuery("SELECT u FROM User u WHERE u.email = :email AND u.password = :password", User.class);
            query.setParameter("email", email);
            query.setParameter("password", password);
            User user = query.getSingleResult();
            System.out.println(user);
            session.close();
        } catch (HibernateException e) {
            throw new RuntimeException(e);
        }
    }

}
