<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin - Gestion des Vols</title>
    <link rel="stylesheet" href="<%=request.getContextPath()%>/styles.css">
</head>
<body>
    <header class="backoffice-header">
        <h1>Admin - Gestion des Vols</h1>
        <nav>
            <ul>
                <li><a href="#gestion-vols">Gestion des Vols</a></li>
                <li><a href="#regles">Règles de Gestion</a></li>
                <li><a href="index.html">Retour au site</a></li>
            </ul>
        </nav>
    </header>

    <main>
        <section id="gestion-vols">
            <h2>Gestion des Vols</h2>
            <form class="crud-form">
                <label for="vol-id">ID Vol:</label>
                <input type="text" id="vol-id" name="vol-id">

                <label for="vol-destination">Destination:</label>
                <input type="text" id="vol-destination" name="vol-destination">

                <label for="vol-date">Date:</label>
                <input type="date" id="vol-date" name="vol-date">

                <button type="submit">Ajouter/Modifier</button>
                <button type="button" class="delete-btn">Supprimer</button>
            </form>
        </section>

        <section id="regles">
            <h2>Règles de Gestion</h2>
            <form class="regles-form">
                <label for="regle-nom">Nom de la règle:</label>
                <input type="text" id="regle-nom" name="regle-nom">

                <label for="regle-description">Description:</label>
                <textarea id="regle-description" name="regle-description"></textarea>

                <button type="submit">Ajouter une règle</button>
            </form>
        </section>
    </main>
</body>
</html>