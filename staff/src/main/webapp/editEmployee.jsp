<%@ page import="org.example.staff.model.Employee" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Modifier Employé</title>
</head>
<body>

<%
    Employee employee = (Employee) request.getAttribute("employee");
%>
<h2>Modifier les informations de l'employé</h2>
<form action="edit" method="post">
    <input type="hidden" name="id" value="<%= employee.getId() %>">

    <label for="name">Nom:</label>
    <input type="text" id="name" name="name" value="<%= employee.getName() %>"><br><br>

    <label for="email">Email:</label>
    <input type="email" id="email" name="email" value="<%= employee.getEmail() %>"><br><br>

    <label for="phone">Téléphone:</label>
    <input type="text" id="phone" name="phone" value="<%= employee.getPhone() %>"><br><br>

    <label for="department">Département:</label>
    <input type="text" id="department" name="department" value="<%= employee.getDepartment() %>"><br><br>

    <label for="position">Poste:</label>
    <input type="text" id="position" name="position" value="<%= employee.getPosition() %>"><br><br>

    <input type="submit" value="Mettre à jour">
</form>


</body>
</html>
