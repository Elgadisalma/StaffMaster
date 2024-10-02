<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>StaffMaster</title>
</head>
<body>
    <h2>Ajouter un Employé</h2>
    <form action="add" method="post">
        <label for="name">Nom:</label><br>
        <input type="text" id="name" name="name" required><br><br>

        <label for="email">Email:</label><br>
        <input type="email" id="email" name="email" required><br><br>

        <label for="phone">Téléphone:</label><br>
        <input type="text" id="phone" name="phone" required><br><br>

        <label for="department">Département:</label><br>
        <input type="text" id="department" name="department" required><br><br>

        <label for="position">Poste:</label><br>
        <input type="text" id="position" name="position" required><br><br>

        <input type="submit" value="Ajouter">
    </form>

</body>
</html>