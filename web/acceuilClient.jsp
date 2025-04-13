<%@ page import="framework.*" %>
<%@ page import="java.util.HashMap" %>
<%@ page import="materielle.*" %>
<%@ page import="utilitaire.*" %>
<%@ page import="java.util.*" %>
<%@ page import="action.*" %>
<%@ page import="base.*" %>
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

        /* Formulaire */
        .crud-form {
            background: white;
            border-radius: 8px;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
            padding: 2rem;
            margin-top: 2rem;
            max-width: 800px;
            margin-left: auto;
            margin-right: auto;
        }

        .crud-form label {
            display: block;
            margin-bottom: 0.5rem;
            font-weight: 500;
            color: #555;
        }

        .crud-form select,
        .crud-form input[type="datetime-local"],
        .crud-form input[type="number"] {
            width: 100%;
            padding: 0.75rem;
            margin-bottom: 1.5rem;
            border: 1px solid #ddd;
            border-radius: 4px;
            font-size: 1rem;
        }

        .crud-form button {
            background: linear-gradient(to right, #667eea, #764ba2);
            color: white;
            border: none;
            padding: 0.75rem 1.5rem;
            border-radius: 4px;
            font-size: 1rem;
            cursor: pointer;
            transition: all 0.3s;
        }

        .crud-form button:hover {
            background: linear-gradient(to right, #5a6fd1, #6a3d9a);
        }

         /* Tableau des vols */
        .vols-table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 2rem;
            box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
            background: white;
            border-radius: 8px;
            overflow: hidden;
        }

        .vols-table th, .vols-table td {
            padding: 12px 15px;
            text-align: left;
            border-bottom: 1px solid #e0e0e0;
        }

        .vols-table th {
            background-color: #764ba2;
            color: white;
            font-weight: 500;
        }

        .vols-table tr:hover {
            background-color: #f8f5ff;
        }

        .vols-table tr:nth-child(even) {
            background-color: #f9f9f9;
        }

        .vols-table tr:nth-child(even):hover {
            background-color: #f8f5ff;
        }

        .action-link {
            color: #764ba2;
            text-decoration: none;
            font-weight: 500;
            padding: 4px 8px;
            border-radius: 4px;
            transition: all 0.3s;
            white-space: nowrap;
        }

        .action-link:hover {
            background-color: #764ba2;
            color: white;
            text-decoration: none;
        }

        .no-data {
            text-align: center;
            padding: 2rem;
            color: #666;
        }

        .table-container {
            overflow-x: auto;
            background: white;
            border-radius: 8px;
            box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
            margin-bottom: 2rem;
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
            <a href="#liste-vols">Ajouter un Reservation</a>
            <a href="#liste-reservation">liste reservation</a>
        </div>
    </nav>

    <!-- Header -->
    <header class="header">
        <h1>Bienvenue sur GestionVols</h1>
        <p>Gérez efficacement vos vols, passagers et statistiques en temps réel.</p>
    </header>

    <!-- Contenu principal -->
    <main class="container">
        <section id="liste-vols">
            <h2>Liste des Vols</h2>
            
            <% if(request.getAttribute("listeVols") != null) { %>
                <% List<VolDAOCpl> vols = (List<VolDAOCpl>) request.getAttribute("listeVols"); %>
                
                <div class="table-container">
                    <table class="vols-table">
                        <thead>
                            <tr>
                                <th>ID</th>
                                <th>Avion</th>
                                <th>Ville Départ</th>
                                <th>Ville Arrivée</th>
                                <th>Date Départ</th>
                                <th>Date Arrivée</th>
                                <th>Durée (seconde)</th>
                                <th>Prix</th>
                                <th>TypeSiege</th>
                                <th>Nombre Total Siege</th>
                                <th>Nombre Siege Promotion</th>
                                <th>Promotion</th>
                                <th>Action</th>
                            </tr>
                        </thead>
                        <tbody>
                            <% if (vols != null && !vols.isEmpty()) {
                                for (VolDAOCpl vol : vols) { %>
                                    <tr>
                                        <td><%= vol.getId() %></td>
                                        <td><%= vol.getNomAvion() %></td>
                                        <td><%= vol.getNomVilleDepart() %></td>
                                        <td><%= vol.getNomVilleArrivee() %></td>
                                        <td><%= vol.getDateDepart() %></td>
                                        <td><%= vol.getDateArrive() %></td>
                                        <td><%= vol.getDure() %></td>
                                        <td><%= vol.getPrix() %></td>
                                        <td><%= vol.getNomTypeSiege() %></td>
                                        <td><%= vol.getNombreTotalSiege() %></td>
                                        <td><%= vol.getNombreSiegePromotion() %></td>
                                        <td><%= vol.getPromotion() %>%</td>
                                            <td><a href="<%=request.getContextPath()%>/home/formReservation?idVol=<%=vol.getId()%>&idtypesiege=<%=vol.getIdtypesiege()%>">Reserver</a></td>
                                        </tr>
                                    <% }
                                } else { %>
                                    <tr>
                                        <td>Aucun vol disponible</td>
                                    </tr>
                                <% } %>
                        </tbody>
                    </table>
                </div>
            <% } else { %>
                <div class="no-data">
                    <p>Aucune donnée disponible.</p>
                </div>
            <% } %>
        </section>
        <section id="liste-reservation">
            <h2>Liste des Vols</h2>
            
            <% if(request.getAttribute("listeReservation")!=null){ %>
                <% List<ReservationDAO> vols = (List<ReservationDAO>)request.getAttribute("listeReservation"); %>
                
                <div class="table-container">
                    <table class="vols-table">
                        <thead>
                            <tr>
                                <th>ID</th>
                                <th>Utilisateur</th>
                                <th>Vol</th>
                                <th>date de reservation</th>
                                <th>place</th>
                                <th>prix</th>
                                <th>Annulation</th>
                            </tr>
                        </thead>
                        <tbody>
                            <% if (vols != null && !vols.isEmpty()) {
                                for (ReservationDAO vol : vols) { %>
                                    <tr>
                                        <td><%= vol.getId() %></td>
                                        <td><%= vol.getIdUtilisateur() %></td>
                                        <td><%= vol.getIdVol() %></td>
                                        <td><%= vol.getDatyheure() %></td>
                                        <td><%= vol.getPlace() %></td>
                                        <td><%= vol.getPrix() %></td>
                                        <td><a href="<%=request.getContextPath()%>/home/annulerReservation?idReservation=<%=vol.getId()%>&idVol=<%=vol.getIdVol()%>">Annuler</a></td>
                                        </tr>
                                    <% }
                                } else { %>
                                    <tr>
                                        <td>Aucun vol disponible</td>
                                    </tr>
                                <% } %>
                        </tbody>
                    </table>
                </div>
            <% } else { %>
                <div class="no-data">
                    <p>Aucune donnée disponible.</p>
                </div>
            <% } %>
        </section>
    </main>

    <!-- Footer -->
    <footer class="footer">
        <p>&copy; 2023 GestionVols. Tous droits réservés.</p>
    </footer>
</body>
</html>


