<%@ page import="framework.*" %>
<%@ page import="java.util.HashMap" %>
<%@ page import="materielle.*" %>
<%@ page import="utilitaire.*" %>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    
</head>
<body>

    <% 
        String idVol = "";
        int idUtilisateur = (int)request.getAttribute("idUtilisateur");
        if(request.getParameter("idVol")!= null){
            idVol=request.getParameter("idVol");
        }
    %>
    <form action="<%=request.getContextPath()%>/home/validerReservation" method="post" enctype="multipart/form-data">
        <label for="datyheure">Date :</label>
        <input type="datetime-local" name="res.datyheure" id="datyheure" required>
        <input type="hidden" name="res.idUtilisateur" id="prix" value="<%=idUtilisateur%>" required>
        <input type="hidden" name="res.idVol" id="prix" value="<%=idVol%>" required>
        <input type="file" name="res.passport" accept=".jpg,.jpeg,.png">
        <input type="numper" name="res.place" id="prix" required>
        <input type="hidden" name="res.statut" id="prix" value="1" required>
        <input type="hidden" name="res.prix" id="prix" value="0" required>
        <button type="submit">Ajouter le Reservation</button>
    </form>
</body>
</html>
