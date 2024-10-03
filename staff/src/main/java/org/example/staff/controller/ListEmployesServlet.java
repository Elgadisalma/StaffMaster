package org.example.staff.controller;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import org.example.staff.dao.EmployeeDao;
import org.example.staff.model.Employee;

import java.io.IOException;
import java.util.List;
import java.util.stream.Collectors;

public class ListEmployesServlet extends HttpServlet {

    private EmployeeDao employeeDAO;

    @Override
    public void init() throws ServletException {
        employeeDAO = new EmployeeDao();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Employee> employees = employeeDAO.getEmployees();

        String searchQuery = request.getParameter("searchQuery");
        String departmentQuery = request.getParameter("department");

//        search
        if (searchQuery != null && !searchQuery.trim().isEmpty()) {
            List<Employee> filteredEmployees = employees.stream()
                    .filter(e -> e.getName().toLowerCase().contains(searchQuery.toLowerCase()) ||
                            e.getEmail().toLowerCase().contains(searchQuery.toLowerCase()) ||
                            e.getPosition().toLowerCase().contains(searchQuery.toLowerCase()) ||
                            e.getDepartment().toLowerCase().contains(searchQuery.toLowerCase()))
                    .collect(Collectors.toList());

            if (!filteredEmployees.isEmpty()) {
                request.setAttribute("employees", filteredEmployees);
            } else {
                request.setAttribute("message", "Aucun employé ne correspond à la recherche.");
            }
        }
//        filter
        else if (departmentQuery != null && !departmentQuery.trim().isEmpty()) {
            List<Employee> filteredByDepartment = employees.stream()
                    .filter(e -> e.getDepartment().equalsIgnoreCase(departmentQuery))
                    .collect(Collectors.toList());

            if (!filteredByDepartment.isEmpty()) {
                request.setAttribute("employees", filteredByDepartment);
            } else {
                request.setAttribute("message", "Aucun employé trouvé dans ce département.");
            }
        }

        else {
            if (!employees.isEmpty()) {
                request.setAttribute("employees", employees);
            } else {
                request.setAttribute("message", "Aucun employé trouvé dans le système.");
            }
        }

        request.getRequestDispatcher("/listEmployees.jsp").forward(request, response);
    }


}

