<%@ page import="org.example.staff.model.Employee" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>StaffMaster</title>
</head>
<body>
<h2>Modifier un Employe</h2>

<%
    // Get the employee to be updated from request
    Employee employee = (Employee) request.getAttribute("employee");
%>


<form action="add" method="post">
    <label for="name">Nouveau Nom:</label><br>
    <input type="text" id="name" name="name" required><br><br>

    <label for="email">Nouveau Email:</label><br>
    <input type="email" id="email" name="email" required><br><br>

    <label for="phone">Nouveau Téléphone:</label><br>
    <input type="text" id="phone" name="phone" required><br><br>

    <label for="department">Nouveau Département:</label><br>
    <input type="text" id="department" name="department" required><br><br>

    <label for="position">Nouveau Poste:</label><br>
    <input type="text" id="position" name="position" required><br><br>

    <input type="submit" value="Submit">
</form>

</body>
</html>