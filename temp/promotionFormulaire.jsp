<%@ page import="framework.*" %>
<%@ page import="java.util.HashMap" %>
<%@ page import="materielle.*" %>
<%@ page import="utilitaire.*" %>
<%@ page import="java.util.*" %>
<%@ page import="base.*" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/styles.css">
    <title>Document</title>
</head>
<body>

    <% 
        String idVol = "";
        String idTypeSiege = "";
        if(request.getParameter("idVol")!= null){
            idVol=request.getParameter("idVol");
            idTypeSiege=request.getParameter("idTypeSiege");
        }
    %>
    <form class="crud-form" action="<%=request.getContextPath()%>/home/insertPromotion" method="get">  
        <input type="hidden" name="prom.idTypeSiege" value="<%=idTypeSiege%>">
        <input type="hidden" name="prom.idVol" value="<%=idVol%>">
        <label for="idAvion">Nombre Siege :</label>
        <input type="number" name="prom.nombreSiege">
        <label for="idAvion">Promotion :</label>
        <input type="number" name="prom.promotion">
        <input type="submit" value="valider">
    </form>
</body>
</html>
