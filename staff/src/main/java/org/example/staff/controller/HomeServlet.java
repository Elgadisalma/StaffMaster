package org.example.staff.controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import org.example.staff.dao.EmployeeDao;
import org.example.staff.model.Employee;

import java.io.IOException;
import java.util.List;

public class HomeServlet extends HttpServlet {

    private EmployeeDao employeeDAO;

    @Override
    public void init() throws ServletException {
        employeeDAO = new EmployeeDao();
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("view/index.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");

        switch (action) {
            case "add":
                response.sendRedirect("view/addEmployee.jsp");
                break;
//            case "update":
//                response.sendRedirect("updateEmployee.jsp"); // Rediriger vers la page de modification
//                break;
//            case "delete":
//                response.sendRedirect("deleteEmployee.jsp"); // Rediriger vers la page de suppression
//                break;
            case "view":
                List<Employee> employees = employeeDAO.getEmployees();

                request.setAttribute("employees", employees);

                request.getRequestDispatcher("view/listEmployees.jsp").forward(request, response);
                break;
            default:
                response.sendRedirect("view/index.jsp");
                break;
        }
    }

}
