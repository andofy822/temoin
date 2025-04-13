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
    <title>Configuration d'Annulation</title>
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

        .annulation-container {
            width: 100%;
            max-width: 500px;
        }

        .annulation-header {
            text-align: center;
            margin-bottom: 30px;
        }

        .annulation-header h1 {
            color: #d32f2f;
            font-size: 1.8rem;
            margin-bottom: 10px;
        }

        .annulation-header p {
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
            border-color: #d32f2f;
            box-shadow: 0 0 0 3px rgba(211, 47, 47, 0.1);
            outline: none;
        }

        .submit-btn {
            width: 100%;
            padding: 12px;
            background: linear-gradient(to right, #d32f2f, #f44336);
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
            background: linear-gradient(to right, #b71c1c, #e53935);
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
            
            .annulation-header h1 {
                font-size: 1.5rem;
            }
        }
    </style>
</head>
<body>
    <div class="annulation-container">
        <div class="annulation-header">
            <h1>Configuration d'Annulation</h1>
            <p>Définissez le délai d'annulation pour ce vol</p>
        </div>

        <% 
            String idVol = "";
            if(request.getParameter("idVol")!= null){
                idVol=request.getParameter("idVol");
            }
        %>
        
        <form class="crud-form" action="<%=request.getContextPath()%>/home/insertAnnulationTemps" method="get">
            <div class="hidden-fields">
                <input type="hidden" name="annul.idVol" value="<%=idVol%>">
            </div>
            
            <div class="form-group">
                <label for="dureAvantVol">Délai avant le vol (en seconde)</label>
                <input type="number" name="annul.dureAvantVol" id="dureAvantVol" required min="1" >
            </div>
            
            <button type="submit" class="submit-btn">Valider le Délai</button>
        </form>
    </div>
</body>
</html>