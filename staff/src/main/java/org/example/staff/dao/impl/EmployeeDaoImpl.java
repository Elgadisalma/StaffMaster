package org.example.staff.dao.impl;

import jakarta.transaction.Transaction;
import org.example.staff.dao.EmployeeDAO;
import org.example.staff.model.Employee;
import org.hibernate.Session;

import java.util.List;
import java.util.Optional;

public class EmployeeDaoImpl implements EmployeeDAO {

    @Override
    public void addEmployee(Employee employee) {
//        Transaction transaction = null;
//        try (Session session = HibernateUtil.getSessionFactory().openSession()) {
//            transaction = session.beginTransaction();
//            session.save(employee);
//            transaction.commit();
//        } catch (Exception e) {
//            if (transaction != null) {
//                transaction.rollback();
//            }
//            e.printStackTrace();
//        }
    }

    @Override
    public void updateEmployee(Employee employee) {

    }

    @Override
    public void deleteEmployee(Employee employee) {

    }

    @Override
    public Optional<Employee> getEmployee(int id) {
        return Optional.empty();
    }

    @Override
    public List<Employee> getEmployees() {
        return List.of();
    }
}
