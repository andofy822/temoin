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

<% if(request.getAttribute("listeVols")!=null){ %>
<% List<VolDAOCpl> vols = (List<VolDAOCpl>)request.getAttribute("listeVols"); %>
<table>
        <thead>
        <tr>
            <th>ID</th>
            <th>Avion</th>
            <th>Ville Départ</th>
            <th>Ville Arrivée</th>
            <th>Date Départ</th>
            <th>Date Arrivée</th>
            <th>Durée (seconde)</th>
            <th>Prix</th>
            <th>TypeSiege</th>
            <th>Nombre Total Siege</th>
            <th>Nombre Siege Promotion</th>
            <th>Promotion</th>
            <th>AjoutPromotion</th>
            <th>Reservation</th>
            <th>Annulation</th>
        </tr>
    </thead>
    <tbody>
        <% if (vols != null && !vols.isEmpty()) {
            for (VolDAOCpl vol : vols) { %>
                <tr>
                    <td><%= vol.getId() %></td>
                    <td><%= vol.getNomAvion() %></td>
                    <td><%= vol.getNomVilleDepart() %></td>
                    <td><%= vol.getNomVilleArrivee() %></td>
                    <td><%= vol.getDateDepart() %></td>
                    <td><%= vol.getDateArrive() %></td>
                    <td><%= vol.getDure() %></td>
                    <td><%= vol.getPrix() %></td>
                    <td><%= vol.getNomTypeSiege() %></td>
                    <td><%= vol.getNombreTotalSiege() %></td>
                    <td><%= vol.getNombreSiegePromotion() %></td>
                    <td><%= vol.getPromotion() %>%</td>
                        <td><a href="<%=request.getContextPath()%>/home/formReservation?idVol=<%=vol.getId()%>">Reserver</a></td>
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
