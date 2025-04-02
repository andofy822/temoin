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
    <title>Document</title>
</head>
<body>
    <% 
        String idVol = "";
        if(request.getParameter("idVol")!= null){
            idVol=request.getParameter("idVol");
        }
    %>
    <form action="<%=request.getContextPath()%>/home/insertAnnulationTemps" method="get">
        <input type="hidden" name="annul.idVol" value="<%=idVol%>">
        <input type="number" name="annul.dureAvantVol">
        <input type="submit" value="valider">
    </form>
</body>
</html>
