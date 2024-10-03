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
    <option value="view">Afficher les employees</option>
  </select>
  <br><br>
  <input type="submit" value="Soumettre">
</form>

</body>
</html>