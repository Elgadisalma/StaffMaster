<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Liste des Employes</title>
</head>
<body>
<h2>Liste des Employes</h2>


<table>
  <tr>
    <th>ID</th>
    <th>Nom</th>
    <th>Email</th>
    <th>Telephone</th>
    <th>Departement</th>
    <th>Poste</th>
  </tr>

  <c:forEach var="employee" items="${employees}">
    <tr>
      <td>${employee.id}</td>
      <td>${employee.name}</td>
      <td>${employee.email}</td>
      <td>${employee.phone}</td>
      <td>${employee.department}</td>
      <td>${employee.position}</td>
    </tr>
  </c:forEach>
</table>
</body>
</html>
