<%@ page import="framework.*" %>
<%@ page import="java.util.HashMap" %>
<%@ page import="materielle.*" %>
<%@ page import="utilitaire.*" %>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Formulaire de Réservation</title>
    <style>
        /* === CSS 100% OFFLINE === */
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: 'Arial', sans-serif;
        }

        body {
            background-color: #f8f9fa;
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
            max-width: 600px;
            background: white;
            border-radius: 10px;
            box-shadow: 0 5px 15px rgba(0, 0, 0, 0.1);
            padding: 30px;
        }

        .reservation-header {
            text-align: center;
            margin-bottom: 30px;
        }

        .reservation-header h1 {
            color: #2c7be5;
            font-size: 1.8rem;
            margin-bottom: 10px;
        }

        .reservation-header p {
            color: #666;
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

        .form-group input[type="datetime-local"],
        .form-group input[type="number"],
        .form-group input[type="file"] {
            padding: 10px 15px;
        }

        .form-group input:focus {
            border-color: #2c7be5;
            box-shadow: 0 0 0 3px rgba(44, 123, 229, 0.1);
            outline: none;
        }

        .form-group input[type="file"] {
            border: 1px dashed #ddd;
            padding: 15px;
            background-color: #f9f9f9;
        }

        .submit-btn {
            width: 100%;
            padding: 12px;
            background: linear-gradient(to right, #2c7be5, #1a68d1);
            color: white;
            border: none;
            border-radius: 6px;
            font-size: 1rem;
            font-weight: 500;
            cursor: pointer;
            transition: all 0.3s;
            margin-top: 20px;
        }

        .submit-btn:hover {
            background: linear-gradient(to right, #1a68d1, #2c7be5);
            transform: translateY(-2px);
        }

        .hidden-fields {
            display: none;
        }

        /* Responsive */
        @media (max-width: 768px) {
            .reservation-container {
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
            <h1>Formulaire de Réservation</h1>
            <p>Complétez les détails de votre réservation</p>
        </div>

        <% 
            String idVol = "";
            int idUtilisateur = (int)request.getAttribute("idUtilisateur");
            if(request.getParameter("idVol")!= null){
                idVol=request.getParameter("idVol");
            }
        %>
        
        <form action="<%=request.getContextPath()%>/home/validerReservation" method="post" enctype="multipart/form-data">
            <div class="hidden-fields">
                <input type="hidden" name="res.idUtilisateur" value="<%=idUtilisateur%>" required>
                <input type="hidden" name="res.idVol" value="<%=idVol%>" required>
                <input type="hidden" name="res.statut" value="1" required>
                <input type="hidden" name="res.prix" value="0" required>
            </div>
            
            <div class="form-group">
                <label for="datyheure">Date et heure de réservation :</label>
                <input type="datetime-local" name="res.datyheure" id="datyheure" required>
            </div>
            
            <div class="form-group">
                <label for="passport">Passeport (image) :</label>
                <input type="file" name="res.passport" id="passport" accept=".jpg,.jpeg,.png" required>
                <small style="color: #666; display: block; margin-top: 5px;">Formats acceptés: JPG, JPEG, PNG</small>
            </div>
            
            <div class="form-group">
                <label for="place">Nombre de places :</label>
                <input type="number" name="res.place" id="place" min="1" required>
            </div>
            
            <button type="submit" class="submit-btn">Confirmer la Réservation</button>
        </form>
    </div>
</body>
</html>