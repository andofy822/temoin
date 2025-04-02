<%@ page import="framework.*" %>
<%@ page import="action.*" %>
<%@ page import="utilitaire.*" %>
<%@ page import="materielle.*" %>
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

<% if(request.getAttribute("listeReservation")!=null){ %>
<% List<ReservationDAO> vols = (List<ReservationDAO>)request.getAttribute("listeReservation"); %>
<table>
        <thead>
        <tr>
            <th>ID</th>
            <th>Utilisateur</th>
            <th>Vol</th>
            <th>date de reservation</th>
            <th>place</th>
            <th>prix</th>
            <th>Annulation</th>
        </tr>
    </thead>
    <tbody>
        <% if (vols != null && !vols.isEmpty()) {
            for (ReservationDAO vol : vols) { %>
                <tr>
                    <td><%= vol.getId() %></td>
                    <td><%= vol.getIdUtilisateur() %></td>
                    <td><%= vol.getIdVol() %></td>
                    <td><%= vol.getDatyheure() %></td>
                    <td><%= vol.getPlace() %></td>
                    <td><%= vol.getPrix() %></td>
                    <td><a href="<%=request.getContextPath()%>/home/annulerReservation?idReservation=<%=vol.getId()%>&idVol=<%=vol.getIdVol()%>">Annuler</a></td>
                    </tr>
                <% }
            } else { %>
                <tr>
                    <td>Aucun vol disponible</td>
                </tr>
            <% } %>
        </tbody>
    </table>
<% } else { out.println("afmlasdmfldmkfcdl"); } %>
</body>
</html>
