<%@ page import="framework.*" %>
<%@ page import="java.util.HashMap" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" href="<%=request.getContextPath()%>/styles.css">
  <title>Login</title>
</head>
<body>
    <header class="frontoffice-header">
        <h1>Connexion</h1>
    </header>
    <main>
    <form class="login-form" action="<%=request.getContextPath()%>/home/login" method="get">
      <label for="username">Nom d'utilisateur:</label>
      <input type="text" name="utilisateur.username" placeholder="Nom d'utilisateur" required>
      <label for="password">Mot de passe:</label>
      <input type="password" name="utilisateur.password" placeholder="Mot de passe" required>
      <button type="submit">Se connecter</button>
    </form>
    </main>
    <%
      if (request.getAttribute("error") != null) {
          HashMap<String, String> liste = (HashMap<String, String>) request.getAttribute("error");
          for (String key : liste.keySet()) {
              String value = liste.get(key);
              out.println("<div class='error'>" + value + "</div>");
          }
      }
    %>
</body>
</html>
