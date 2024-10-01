package org.example.staff.dao;

import org.example.staff.model.Employee;

import java.util.List;
import java.util.Optional;

public interface EmployeeDAO {
    void addEmployee(Employee employee);
    void updateEmployee(Employee employee);
    void deleteEmployee(Employee employee);
    Optional<Employee> getEmployee(int id);
    List<Employee> getEmployees();
}
