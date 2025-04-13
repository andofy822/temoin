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
    <title>Configuration de Réservation</title>
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

        .reservation-container {
            width: 100%;
            max-width: 500px;
        }

        .reservation-header {
            text-align: center;
            margin-bottom: 30px;
        }

        .reservation-header h1 {
            color: #2e7d32;
            font-size: 1.8rem;
            margin-bottom: 10px;
        }

        .reservation-header p {
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
            border-color: #2e7d32;
            box-shadow: 0 0 0 3px rgba(46, 125, 50, 0.1);
            outline: none;
        }

        .submit-btn {
            width: 100%;
            padding: 12px;
            background: linear-gradient(to right, #2e7d32, #388e3c);
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
            background: linear-gradient(to right, #1b5e20, #2e7d32);
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
            
            .reservation-header h1 {
                font-size: 1.5rem;
            }
        }
    </style>
</head>
<body>
    <div class="reservation-container">
        <div class="reservation-header">
            <h1>Configuration de Réservation</h1>
            <p>Définissez le délai de réservation pour ce vol</p>
        </div>

        <% 
            String idVol = "";
            if(request.getParameter("idVol")!= null){
                idVol=request.getParameter("idVol");
            }
        %>
        
        <form class="crud-form" action="<%=request.getContextPath()%>/home/insertReservationTemps" method="get">
            <div class="hidden-fields">
                <input type="hidden" name="reserv.idVol" value="<%=idVol%>">
            </div>
            
            <div class="form-group">
                <label for="dureAvantVol">Délai maximum avant le vol (en seconde)</label>
                <input type="number" name="reserv.dureAvantVol" id="dureAvantVol" required min="1" >
            </div>
            
            <button type="submit" class="submit-btn">Valider le Délai</button>
        </form>
    </div>
</body>
</html>