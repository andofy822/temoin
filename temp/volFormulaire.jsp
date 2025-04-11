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
    <link rel="stylesheet" href="<%=request.getContextPath()%>/styles.css">
    <title>Document</title>
</head>
<body>
    <header class="backoffice-header">
        <h1> Gestion des Vols</h1>
        <nav>
            <ul>
                <li><a href="#gestion-vols">Gestion des Vols</a></li>
                <li><a href="#listeVol">ListeVol</a></li>
            </ul>
        </nav>
    </header>
    <% String body = request.getParameter("body");
        List<Ville> Villes=null;
        List<Avion> Avions=null;
    %>
    <%if(request.getAttribute("listeAvion")!=null){%>
    <% Avions = (List<Avion>)request.getAttribute("listeAvion");%>
    <%}%>
    <%if(request.getAttribute("listeVille")!=null){%>
    <% Villes = (List<Ville>)request.getAttribute("listeVille");%>
    <%}%>
    <section id="gestion-vols">
        <form class="crud-form" action="<%=request.getContextPath()%>/home/validerInsertVol" method="get">
            <label for="idAvion">Avion :</label>
            <select name="vol.idAvion" id="idAvion" required>
                <% for (Avion vol : Avions) { %>
                        <option value="<%=vol.getId()%>"><%=vol.getModele()%></option>
                <% } %>
            </select>
            <label for="idVilleDepart">Ville de départ :</label>
            <select name="vol.idVilleDepart" id="idVilleDepart" required>
                <% for (Ville vol : Villes) { %>
                        <option value="<%=vol.getId()%>"><%=vol.getVal()%></option>
                <% } %>
            </select>
            <label for="idVilleArrive">Ville d’arrivée :</label>
            <select name="vol.idVilleArrive" id="idVilleArrive" required>
                <% for (Ville vol : Villes) { %>
                        <option value="<%=vol.getId()%>"><%=vol.getVal()%></option>
                <% } %>
            </select>
            <label for="dateDepart">Date de départ :</label>
            <input type="datetime-local" name="vol.dateDepart" id="dateDepart" required>

            <label for="dateArrive">Date d’arrivée :</label>
            <input type="datetime-local" name="vol.dateArrive" id="dateArrive" required>

            <label for="duree">Durée (en secondes) :</label>
            <input type="number" name="vol.dure" id="dure" required>

            <input type="hidden" name="vol.prix" id="prix" value="0" required>
            <input type="hidden" name="vol.statut" id="prix" value="1" required>
            <button type="submit">Ajouter le Vol</button>
        </form>
    </section>
    <section id="listeVol">
        <jsp:include page="<%= body %>" />
    </section>
</body>
</html>