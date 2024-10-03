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

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // Récupérer la liste de tous les employés
        List<Employee> employees = employeeDAO.getEmployees();

        // Récupérer la requête de recherche
        String searchQuery = request.getParameter("searchQuery");

        // Vérifier s'il y a une requête de recherche
        if (searchQuery != null && !searchQuery.trim().isEmpty()) {
            // Filtrer les employés en fonction de la requête de recherche
            List<Employee> filteredEmployees = employees.stream()
                    .filter(e -> e.getName().toLowerCase().contains(searchQuery.toLowerCase()) ||
                            e.getEmail().toLowerCase().contains(searchQuery.toLowerCase()) ||
                            e.getDepartment().toLowerCase().contains(searchQuery.toLowerCase()) ||
                            e.getPosition().toLowerCase().contains(searchQuery.toLowerCase()))
                    .collect(Collectors.toList());

            // Si des résultats sont trouvés
            if (!filteredEmployees.isEmpty()) {
                request.setAttribute("employees", filteredEmployees);
            } else {
                request.setAttribute("message", "Aucun employé ne correspond à la recherche.");
            }
        } else {
            // Si pas de requête de recherche, afficher tous les employés
            if (!employees.isEmpty()) {
                request.setAttribute("employees", employees);
            } else {
                request.setAttribute("message", "Aucun employé trouvé dans le système.");
            }
        }

        // Rediriger vers la JSP pour afficher la liste des employés
        request.getRequestDispatcher("/listEmployees.jsp").forward(request, response);
    }

}

