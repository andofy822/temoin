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
        VolDAO vol = (VolDAO)request.getAttribute("vol");
        List<TypeSiegeDAO> liste = (List<TypeSiegeDAO>)request.getAttribute("listeSiege");
    %>
    <form action="<%=request.getContextPath()%>/home/validerInsertVolPrix" method="get">
        <input type="hidden" name="px.idVol" value="<%=vol.getId()%>">
        <input type="number" name="px.prix">
        <select name="px.idtypesiege" id="idAvion" required>
            <% for (TypeSiegeDAO vol2 : liste) { %>
                    <option value="<%=vol2.getId()%>"><%=vol2.getVal()%></option>
            <% } %>
        </select>
        <input type="submit" value="valider">
    </form>
</body>