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
    <title>Gestion des Promotions</title>
    <style>
        /* === CSS 100% OFFLINE === */
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: 'Arial', sans-serif;
        }

        body {
            background-color: #f5f7fa;
            color: #333;
            line-height: 1.6;
            display: flex;
            justify-content: center;
            align-items: center;
            min-height: 100vh;
            padding: 20px;
        }

        .promotion-container {
            width: 100%;
            max-width: 500px;
        }

        .promotion-header {
            text-align: center;
            margin-bottom: 30px;
        }

        .promotion-header h1 {
            color: #6a1b9a;
            font-size: 1.8rem;
            margin-bottom: 10px;
        }

        .promotion-header p {
            color: #666;
        }

        .crud-form {
            background: white;
            border-radius: 10px;
            box-shadow: 0 5px 15px rgba(0, 0, 0, 0.1);
            padding: 30px;
        }

        .form-group {
            margin-bottom: 20px;
        }

        .form-group label {
            display: block;
            margin-bottom: 8px;
            font-weight: 500;
            color: #555;
        }

        .form-group input {
            width: 100%;
            padding: 12px 15px;
            border: 1px solid #ddd;
            border-radius: 6px;
            font-size: 1rem;
            transition: all 0.3s;
        }

        .form-group input:focus {
            border-color: #6a1b9a;
            box-shadow: 0 0 0 3px rgba(106, 27, 154, 0.1);
            outline: none;
        }

        .submit-btn {
            width: 100%;
            padding: 12px;
            background: linear-gradient(to right, #6a1b9a, #8e44ad);
            color: white;
            border: none;
            border-radius: 6px;
            font-size: 1rem;
            font-weight: 500;
            cursor: pointer;
            transition: all 0.3s;
            margin-top: 10px;
        }

        .submit-btn:hover {
            background: linear-gradient(to right, #5a148a, #7d3c98);
            transform: translateY(-2px);
        }

        .hidden-fields {
            display: none;
        }

        /* Responsive */
        @media (max-width: 600px) {
            .crud-form {
                padding: 20px;
            }
            
            .promotion-header h1 {
                font-size: 1.5rem;
            }
        }
    </style>
</head>
<body>
    <div class="promotion-container">
        <div class="promotion-header">
            <h1>Configuration des Promotions</h1>
            <p>Définissez les promotions pour ce vol</p>
        </div>

        <% 
            String idVol = "";
            String idTypeSiege = "";
            if(request.getParameter("idVol")!= null){
                idVol=request.getParameter("idVol");
                idTypeSiege=request.getParameter("idTypeSiege");
            }
        %>
        
        <form class="crud-form" action="<%=request.getContextPath()%>/home/insertPromotion" method="get">
            <div class="hidden-fields">
                <input type="hidden" name="prom.idTypeSiege" value="<%=idTypeSiege%>">
                <input type="hidden" name="prom.idVol" value="<%=idVol%>">
            </div>
            
            <div class="form-group">
                <label for="nombreSiege">Nombre de sièges en promotion</label>
                <input type="number" name="prom.nombreSiege" id="nombreSiege" required min="1">
            </div>
            
            <div class="form-group">
                <label for="promotion">Pourcentage de promotion (%)</label>
                <input type="number" name="prom.promotion" id="promotion" required min="1" max="100">
            </div>
            
            <button type="submit" class="submit-btn">Valider la Promotion</button>
        </form>
    </div>
</body>
</html>