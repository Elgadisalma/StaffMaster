<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Liste des Employes</title>
  <link rel="stylesheet" href="${pageContext.request.contextPath}/static/list.css">
</head>
<body>
<div class="container">
  <h2>Liste des Employes</h2>

  <!-- Formulaire de recherche -->
  <form action="display" method="get" class="form-search">
    <label for="search" class="form-label">Rechercher :</label>
    <input type="text" id="search" name="searchQuery" placeholder="Rechercher un employee" class="input-field">

    <label for="department" class="form-label">Departement :</label>
    <input type="text" id="department" name="department" placeholder="Departement" class="input-field">

    <input type="submit" value="Rechercher" class="btn-submit">
  </form>

  <table class="employee-table">
    <thead>
    <tr>
      <th>ID</th>
      <th>Nom</th>
      <th>Email</th>
      <th>Telephone</th>
      <th>Departement</th>
      <th>Poste</th>
      <th>Actions</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach var="employee" items="${employees}">
      <tr>
        <td>${employee.id}</td>
        <td>${employee.name}</td>
        <td>${employee.email}</td>
        <td>${employee.phone}</td>
        <td>${employee.department}</td>
        <td>${employee.position}</td>
        <td>
          <div class="df">
            <a href="edit?id=${employee.id}" class="btn-edit">Modifier</a>
            <a href="delete?id=${employee.id}" class="btn-delete" onclick="return confirm('Êtes-vous sûr de vouloir supprimer cet employe ?');">Supprimer</a>
          </div>
        </td>
      </tr>
    </c:forEach>
    </tbody>
  </table>
</div>
</body>
</html>
