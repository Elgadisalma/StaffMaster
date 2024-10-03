<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Liste des Employes</title>
</head>
<body>
<h2>Liste des Employes</h2>

<!-- Formulaire de recherche -->
<form action="display" method="get">
  <label for="search">Rechercher :</label>
  <input type="text" id="search" name="searchQuery" placeholder="Nom, Email, Département, Poste">
  <input type="submit" value="Rechercher">
</form>

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
      <td>
        <a href="edit?id=${employee.id}">Modifier</a>
        <a href="delete?id=${employee.id}" onclick="return confirm('Êtes-vous sûr de vouloir supprimer cet employé ?');">Supprimer</a>
        </td>
    </tr>
  </c:forEach>
</table>
</body>
</html>
