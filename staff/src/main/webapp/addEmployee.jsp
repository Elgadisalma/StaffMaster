<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>StaffMaster</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/app.css">
</head>
<body class="dark-background">
<div class="container">
    <h2>Ajouter un Employe</h2>
    <form action="add" method="post" class="form">
        <div class="form-group">
            <label for="name">Nom:</label><br>
            <input type="text" id="name" name="name" class="input-field" required><br><br>
        </div>
        <div class="form-group">
            <label for="email">Email:</label><br>
            <input type="email" id="email" name="email" class="input-field" required><br><br>
        </div>
        <div class="form-group">
            <label for="phone">Telephone:</label><br>
            <input type="text" id="phone" name="phone" class="input-field" required><br><br>
        </div>
        <div class="form-group">
            <label for="department">Departement:</label><br>
            <input type="text" id="department" name="department" class="input-field" required><br><br>
        </div>
        <div class="form-group">
            <label for="position">Poste:</label><br>
            <input type="text" id="position" name="position" class="input-field" required><br><br>
        </div>

        <input type="submit" value="Ajouter" class="submit-btn">
    </form>
</div>
</body>
</html>
