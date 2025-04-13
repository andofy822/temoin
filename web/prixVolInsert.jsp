<%@ page import="framework.*" %>
<%@ page import="java.util.HashMap" %>
<%@ page import="materielle.*" %>
<%@ page import="utilitaire.*" %>
<%@ page import="java.util.*" %>
<%@ page import="base.*" %>
<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Configuration des Prix - GestionVols</title>
    <style>
        /* === CSS 100% OFFLINE === */
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: Arial, sans-serif;
        }

        body {
            background-color: #f0f2f5;
            color: #333;
            line-height: 1.6;
            padding: 20px;
        }

        .header {
            text-align: center;
            margin-bottom: 30px;
            padding: 20px 0;
            background-color: #5d3a9e;
            color: white;
            border-radius: 8px;
            box-shadow: 0 4px 6px rgba(0,0,0,0.1);
        }

        .header h1 {
            font-size: 1.8rem;
        }

        .container {
            max-width: 1000px;
            margin: 0 auto;
            background: white;
            border-radius: 10px;
            box-shadow: 0 0 15px rgba(0,0,0,0.1);
            padding: 20px;
        }

        .vol-info {
            background: #f8f9fa;
            padding: 15px;
            border-radius: 8px;
            margin-bottom: 25px;
            border-left: 4px solid #5d3a9e;
        }

        .vol-info p {
            margin: 5px 0;
        }

        .price-grid {
            display: grid;
            grid-template-columns: repeat(auto-fill, minmax(280px, 1fr));
            gap: 20px;
        }

        .price-card {
            background: white;
            border-radius: 8px;
            padding: 20px;
            box-shadow: 0 2px 8px rgba(0,0,0,0.1);
            border: 1px solid #e0e0e0;
        }

        .card-header {
            display: flex;
            align-items: center;
            margin-bottom: 15px;
            color: #5d3a9e;
            font-weight: bold;
        }

        .card-icon {
            width: 24px;
            height: 24px;
            margin-right: 10px;
            fill: #5d3a9e;
        }

        .form-group {
            margin-bottom: 15px;
        }

        .form-group label {
            display: block;
            margin-bottom: 5px;
            font-weight: 500;
        }

        .form-group input {
            width: 100%;
            padding: 8px 12px;
            border: 1px solid #ddd;
            border-radius: 4px;
            font-size: 1rem;
        }

        .submit-btn {
            width: 100%;
            padding: 10px;
            background-color: #5d3a9e;
            color: white;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            font-size: 1rem;
            transition: background-color 0.3s;
        }

        .submit-btn:hover {
            background-color: #4a2d80;
        }

        @media (max-width: 600px) {
            .price-grid {
                grid-template-columns: 1fr;
            }
            
            .header h1 {
                font-size: 1.5rem;
            }
        }
    </style>
</head>
<body>
    <div class="header">
        <h1>Configuration des Prix de siege</h1>
    </div>

    <div class="container">
        <% 
            VolDAO vol = (VolDAO)request.getAttribute("vol");
            List<TypeSiegeDAO> liste = (List<TypeSiegeDAO>)request.getAttribute("listeSiege");
        %>
        <div class="price-grid">
            <% for (TypeSiegeDAO vol2 : liste) { %>
            <form class="price-card" action="<%=request.getContextPath()%>/home/validerInsertVolPrix" method="get">
                <div class="card-header">
                    <svg class="card-icon" viewBox="0 0 24 24">
                        <path d="M4 6h16v12H4zm2 2v8h12V8z"/>
                        <path d="M8 12h8v2H8z"/>
                    </svg>
                    <%= vol2.getVal() %>
                </div>
                
                <input type="hidden" name="px.idVol" value="<%= vol != null ? vol.getId() : "" %>">
                <input type="hidden" name="px.idtypesiege" value="<%= vol2.getId() %>">
                
                <div class="form-group">
                    <label>Prix Unitaire (Ar)</label>
                    <input type="number" name="px.prix" required min="0">
                </div>                
                <button type="submit" class="submit-btn">Valider</button>
            </form>
            <% } %>
        </div>
    </div>
</body>
</html>