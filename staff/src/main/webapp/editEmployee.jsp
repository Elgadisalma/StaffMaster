<%@ page import="org.example.staff.model.Employee" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Modifier Employe</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/app.css">
</head>
<body class="dark-background">
<div class="container">
    <h2>Modifier les informations de l'employe</h2>

    <%
        Employee employee = (Employee) request.getAttribute("employee");
    %>

    <form action="edit" method="post" class="form">
        <input type="hidden" name="id" value="<%= employee.getId() %>">

        <div class="form-group">
            <label for="name" class="form-label">Nom:</label>
            <input type="text" id="name" name="name" value="<%= employee.getName() %>" class="input-field" required><br><br>
        </div>

        <div class="form-group">
            <label for="email" class="form-label">Email:</label>
            <input type="email" id="email" name="email" value="<%= employee.getEmail() %>" class="input-field" required><br><br>
        </div>

        <div class="form-group">
            <label for="phone" class="form-label">Telephone:</label>
            <input type="text" id="phone" name="phone" value="<%= employee.getPhone() %>" class="input-field" required><br><br>
        </div>

        <div class="form-group">
            <label for="department" class="form-label">Departement:</label>
            <input type="text" id="department" name="department" value="<%= employee.getDepartment() %>" class="input-field" required><br><br>
        </div>

        <div class="form-group">
            <label for="position" class="form-label">Poste:</label>
            <input type="text" id="position" name="position" value="<%= employee.getPosition() %>" class="input-field" required><br><br>
        </div>

        <input type="submit" value="Mettre à jour" class="submit-btn">
    </form>
</div>
</body>
</html>
