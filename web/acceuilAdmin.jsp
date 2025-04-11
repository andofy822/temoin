<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Gestion des Vols - Accueil</title>
    <style>
        /* === CSS INTÉGRÉ === */
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: 'Arial', sans-serif;
        }

        body {
            background-color: #f4f4f9;
            color: #333;
            line-height: 1.6;
        }

        /* Navbar */
        .navbar {
            background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
            color: white;
            padding: 1rem 2rem;
            display: flex;
            justify-content: space-between;
            align-items: center;
            box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
        }

        .logo {
            font-size: 1.5rem;
            font-weight: bold;
        }

        .nav-links {
            display: flex;
            gap: 1.5rem;
        }

        .nav-links a {
            color: white;
            text-decoration: none;
            font-weight: 500;
            padding: 0.5rem 1rem;
            border-radius: 4px;
            transition: background 0.3s;
        }

        .nav-links a:hover {
            background: rgba(255, 255, 255, 0.2);
        }

        /* Header */
        .header {
            background: url('data:image/svg+xml;utf8,<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 1440 320"><path fill="%23667eea" fill-opacity="0.2" d="M0,192L48,197.3C96,203,192,213,288,229.3C384,245,480,267,576,250.7C672,235,768,181,864,181.3C960,181,1056,235,1152,234.7C1248,235,1344,181,1392,154.7L1440,128L1440,0L1392,0C1344,0,1248,0,1152,0C1056,0,960,0,864,0C768,0,672,0,576,0C480,0,384,0,288,0C192,0,96,0,48,0L0,0Z"></path></svg>') no-repeat center bottom;
            background-size: cover;
            padding: 4rem 2rem;
            text-align: center;
            color: #333;
        }

        .header h1 {
            font-size: 2.5rem;
            margin-bottom: 1rem;
            color: #764ba2;
        }

        .header p {
            font-size: 1.2rem;
            max-width: 800px;
            margin: 0 auto;
        }

        /* Contenu principal */
        .container {
            padding: 2rem;
            max-width: 1200px;
            margin: 0 auto;
        }

        .cards {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(300px, 1fr));
            gap: 1.5rem;
            margin-top: 2rem;
        }

        .card {
            background: white;
            border-radius: 8px;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
            padding: 1.5rem;
            transition: transform 0.3s;
        }

        .card:hover {
            transform: translateY(-5px);
        }

        .card h3 {
            color: #764ba2;
            margin-bottom: 1rem;
        }

        /* Footer */
        .footer {
            background: #333;
            color: white;
            text-align: center;
            padding: 1.5rem;
            margin-top: 2rem;
        }

        /* Responsive */
        @media (max-width: 768px) {
            .nav-links {
                gap: 0.5rem;
            }
            .header h1 {
                font-size: 2rem;
            }
        }
    </style>
</head>
<body>
    <!-- Navbar -->
    <nav class="navbar">
        <div class="logo">GestionVols</div>
        <div class="nav-links">
            <a href="#">Accueil</a>
            <a href="#">Ajouter un Vol</a>
            <a href="#">Liste des Vols</a>
            <a href="#">Rechercher</a>
            <a href="#">Statistiques</a>
        </div>
    </nav>

    <!-- Header -->
    <header class="header">
        <h1>Bienvenue sur GestionVols</h1>
        <p>Gérez efficacement vos vols, passagers et statistiques en temps réel.</p>
    </header>

    <!-- Contenu principal -->
    <main class="container">
        <h2>Fonctionnalités</h2>
        <div class="cards">
            <div class="card">
                <h3>Ajout de Vols</h3>
                <p>Ajoutez de nouveaux vols à la base de données avec tous les détails nécessaires.</p>
            </div>
            <div class="card">
                <h3>Liste des Vols</h3>
                <p>Consultez tous les vols disponibles avec des options de filtrage avancées.</p>
            </div>
            <div class="card">
                <h3>Recherche Rapide</h3>
                <p>Trouvez un vol spécifique par numéro, destination ou date.</p>
            </div>
        </div>
    </main>

    <!-- Footer -->
    <footer class="footer">
        <p>&copy; 2023 GestionVols. Tous droits réservés.</p>
    </footer>
</body>
</html>