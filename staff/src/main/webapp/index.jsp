<%--<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>--%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>StaffMaster</title>
</head>
<body>
<h1>Bienvenue dans StaffMaster</h1>
<p>Que souhaitez-vous faire ?</p>

<form action="homeServlet" method="post">
  <label for="action">Choisissez une action :</label>
  <select id="action" name="action">
    <option value="add">Ajouter un employé</option>
    <option value="update">Modifier un employé</option>
    <option value="delete">Supprimer un employé</option>
    <option value="view">Aff</option>
  </select>
  <br><br>
  <input type="submit" value="Soumettre">
</form>


<%--<h2>Liste des Employés</h2>--%>
<%--<table>--%>
<%--  <tr>--%>
<%--    <th>ID</th>--%>
<%--    <th>Nom</th>--%>
<%--    <th>Email</th>--%>
<%--    <th>Téléphone</th>--%>
<%--    <th>Département</th>--%>
<%--    <th>Poste</th>--%>
<%--  </tr>--%>
<%--  <c:forEach var="employee" items="${employees}">--%>
<%--    <tr>--%>
<%--      <td>${employee.id}</td>--%>
<%--      <td>${employee.name}</td>--%>
<%--      <td>${employee.email}</td>--%>
<%--      <td>${employee.phone}</td>--%>
<%--      <td>${employee.department}</td>--%>
<%--      <td>${employee.position}</td>--%>
<%--    </tr>--%>
<%--  </c:forEach>--%>
<%--</table>--%>
</body>
</html>