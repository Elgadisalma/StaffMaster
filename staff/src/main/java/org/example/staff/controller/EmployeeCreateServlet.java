package org.example.staff.controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import org.example.staff.dao.EmployeeDao;
import org.example.staff.model.Employee;

import java.io.IOException;

public class EmployeeCreateServlet extends HttpServlet {
    private EmployeeDao employeeDAO;

    @Override
    public void init() throws ServletException {
        employeeDAO = new EmployeeDao();
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String name = req.getParameter("name");
        String email = req.getParameter("email");
        String phone = req.getParameter("phone");
        String department = req.getParameter("department");
        String position = req.getParameter("position");

        Employee employee = new Employee();
        employee.setName(name);
        employee.setEmail(email);
        employee.setPhone(phone);
        employee.setDepartment(department);
        employee.setPosition(position);

        employeeDAO.addEmployee(employee);

        resp.sendRedirect("index.jsp");
    }

    @Override
    public void destroy() {
        // Il est recommandé de fermer la connexion à la base de données ici si nécessaire
    }
}
