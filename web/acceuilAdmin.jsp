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
            <a href="#ajouter-vol">Ajouter un Vol</a>
            <a href="#liste-vols">Liste des Vols</a>
            <a href="#liste-promotion">liste Promotion</a>
            <a href="#liste-heure-annulation">liste heure Annulation</a>
            <a href="#liste-heure-reservation">liste heure Reservation</a>
        </div>
    </nav>

    <!-- Header -->
    <header class="header">
        <h1>Bienvenue sur GestionVols</h1>
        <p>Gérez efficacement vos vols, passagers et statistiques en temps réel.</p>
    </header>

    <!-- Contenu principal -->
    <main class="container">
        <% 
            List<Ville> Villes=null;
            List<Avion> Avions=null;
        %>
        <%if(request.getAttribute("listeAvion")!=null){%>
        <% Avions = (List<Avion>)request.getAttribute("listeAvion");%>
        <%}%>
        <%if(request.getAttribute("listeVille")!=null){%>
        <% Villes = (List<Ville>)request.getAttribute("listeVille");%>
        <%}%>

        <!-- Section Ajouter un Vol -->
        <section id="ajouter-vol">
            <h2>Ajouter un nouveau vol</h2>
            <form class="crud-form" action="<%=request.getContextPath()%>/home/validerInsertVol" method="get">
                <label for="idAvion">Avion :</label>
                <select name="vol.idAvion" id="idAvion" required>
                    <% for (Avion vol : Avions) { %>
                            <option value="<%=vol.getId()%>"><%=vol.getModele()%></option>
                    <% } %>
                </select>

                <label for="idVilleDepart">Ville de départ :</label>
                <select name="vol.idVilleDepart" id="idVilleDepart" required>
                    <% for (Ville vol : Villes) { %>
                            <option value="<%=vol.getId()%>"><%=vol.getVal()%></option>
                    <% } %>
                </select>

                <label for="idVilleArrive">Ville d'arrivée :</label>
                <select name="vol.idVilleArrive" id="idVilleArrive" required>
                    <% for (Ville vol : Villes) { %>
                            <option value="<%=vol.getId()%>"><%=vol.getVal()%></option>
                    <% } %>
                </select>

                <label for="dateDepart">Date de départ :</label>
                <input type="datetime-local" name="vol.dateDepart" id="dateDepart" required>

                <label for="dateArrive">Date d'arrivée :</label>
                <input type="datetime-local" name="vol.dateArrive" id="dateArrive" required>

                <label for="duree">Durée (en secondes) :</label>
                <input type="number" name="vol.dure" id="dure" required>

                <input type="hidden" name="vol.prix" id="prix" value="0" required>
                <input type="hidden" name="vol.statut" id="statut" value="1" required>

                <button type="submit">Ajouter le Vol</button>
            </form>
        </section>
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
                                <th>Départ</th>
                                <th>Arrivée</th>
                                <th>Dates</th>
                                <th>Durée</th>
                                <th>Prix</th>
                                <th>Actions</th>
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
                                        <td>
                                            <div><strong>Départ:</strong> <%= vol.getDateDepart() %></div>
                                            <div><strong>Arrivée:</strong> <%= vol.getDateArrive() %></div>
                                        </td>
                                        <td><%= vol.getDure() %>s</td>
                                        <td><%= vol.getPrix() %> Ar</td>
                                        <td>
                                            <a href="<%=request.getContextPath()%>/home/promotionForm?idVol=<%=vol.getId()%>&idTypeSiege=<%=vol.getIdtypesiege()%>" 
                                               class="action-link">Promo</a>
                                            <a href="<%=request.getContextPath()%>/home/annulationTempsForm?idVol=<%=vol.getId()%>" 
                                               class="action-link">Annuler</a>
                                            <a href="<%=request.getContextPath()%>/home/reservationTempsForm?idVol=<%=vol.getId()%>" 
                                               class="action-link">Réserver</a>
                                        </td>
                                    </tr>
                                <% }
                            } else { %>
                                <tr>
                                    <td colspan="8" class="no-data">Aucun vol disponible</td>
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
        <section id="liste-heure-annulation">
            <h2>Liste heure Annulation vol</h2>
            
            <% if(request.getAttribute("listeHeureAnnulation") != null) { %>
                <% List<LiaisonHeureVolDAO> vols = (List<LiaisonHeureVolDAO>) request.getAttribute("listeHeureAnnulation"); %>
                
                <div class="table-container">
                    <table class="vols-table">
                        <thead>
                            <tr>
                                <th>ID</th>
                                <th>dureavantvol</th>
                                <th>idvol</th>
                            </tr>
                        </thead>
                        <tbody>
                            <% if (vols != null && !vols.isEmpty()) {
                                for (LiaisonHeureVolDAO vol : vols) { %>
                                    <tr>
                                        <td><%= vol.getId() %></td>
                                        <td><%= vol.getHeure() %></td>
                                        <td><%= vol.getIdVol() %></td>
                                    </tr>
                                <% }
                            } else { %>
                                <tr>
                                    <td colspan="8" class="no-data">Aucun vol disponible</td>
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
        <section id="liste-heure-reservation">
            <h2>Liste heure reservation vol</h2>
            
            <% if(request.getAttribute("listeHeureReservation") != null) { %>
                <% List<LiaisonHeureVolDAO> vols = (List<LiaisonHeureVolDAO>) request.getAttribute("listeHeureReservation"); %>
                
                <div class="table-container">
                    <table class="vols-table">
                        <thead>
                            <tr>
                                <th>ID</th>
                                <th>dureavantvol</th>
                                <th>idvol</th>
                            </tr>
                        </thead>
                        <tbody>
                            <% if (vols != null && !vols.isEmpty()) {
                                for (LiaisonHeureVolDAO vol : vols) { %>
                                    <tr>
                                        <td><%= vol.getId() %></td>
                                        <td><%= vol.getHeure() %></td>
                                        <td><%= vol.getIdVol() %></td>
                                    </tr>
                                <% }
                            } else { %>
                                <tr>
                                    <td colspan="8" class="no-data">Aucun vol disponible</td>
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

        <section id="liste-promotion">
            <h2>Liste heure promotion vol</h2>
            
            <% if(request.getAttribute("listeVolPromotion") != null) { %>
                <% List<LiaisonVolPromotionDAO> vols = (List<LiaisonVolPromotionDAO>) request.getAttribute("listeVolPromotion"); %>
                
                <div class="table-container">
                    <table class="vols-table">
                        <thead>
                            <tr>
                                <th>ID</th>
                                <th>siege</th>
                                <th>idvol</th>
                                <th>promotion</th>
                            </tr>
                        </thead>
                        <tbody>
                            <% if (vols != null && !vols.isEmpty()) {
                                for (LiaisonVolPromotionDAO vol : vols) { %>
                                    <tr>
                                        <td><%= vol.getId() %></td>
                                        <td><%= vol.getVal() %></td>
                                        <td><%= vol.getIdVol() %></td>
                                        <td><%= vol.getPromotion() %></td>
                                    </tr>
                                <% }
                            } else { %>
                                <tr>
                                    <td colspan="8" class="no-data">Aucun vol disponible</td>
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


