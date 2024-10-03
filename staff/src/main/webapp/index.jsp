<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>StaffMaster</title>
  <link rel="stylesheet" href="${pageContext.request.contextPath}/static/app.css">
</head>
<body class="dark-background">
<div class="container">
  <h1>Bienvenue dans StaffMaster</h1>
  <p>Que souhaitez-vous faire ?</p>

  <form action="homeServlet" method="post" class="form">
    <div class="form-group">
      <select id="action" name="action" class="input-field">
        <option value="add">Ajouter un employe</option>
        <option value="view">Afficher les employes</option>
      </select>
    </div>
    <input type="submit" value="Soumettre" class="submit-btn">
  </form>
</div>
</body>
</html>
