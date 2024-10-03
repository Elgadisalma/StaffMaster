package org.example.staff.controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import org.example.staff.dao.EmployeeDao;

import java.io.IOException;

public class DeleteEmployeeServlet extends HttpServlet {

    private EmployeeDao employeeDAO;

    @Override
    public void init() throws ServletException {
        employeeDAO = new EmployeeDao();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        long id = Long.parseLong(request.getParameter("id"));

        employeeDAO.deleteEmployee(id);

        response.sendRedirect("index.jsp");
    }
}
