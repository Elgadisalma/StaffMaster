package org.example.staff.controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import org.example.staff.dao.EmployeeDao;
import org.example.staff.model.Employee;

import java.io.IOException;

public class UpdateEmployeeServlet extends HttpServlet {

    private EmployeeDao employeeDAO;

    @Override
    public void init() throws ServletException {
        employeeDAO = new EmployeeDao();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String id = request.getParameter("id");
        if (id != null) {
            long employeeId = Long.parseLong(id);
            Employee employee = employeeDAO.getEmployeeById(employeeId);
            request.setAttribute("employee", employee);
            request.getRequestDispatcher("/editEmployee.jsp").forward(request, response);
        } else {
            response.sendRedirect("index.jsp");
        }
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        long id = Long.parseLong(request.getParameter("id"));
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String phone = request.getParameter("phone");
        String department = request.getParameter("department");
        String position = request.getParameter("position");

        Employee employee = new Employee(id, name, email, phone, department, position);
        employeeDAO.updateEmployee(employee);

        response.sendRedirect("index.jsp");
    }
}
