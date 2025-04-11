<%@ page import="framework.*" %>
<%@ page import="java.util.HashMap" %>
<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login - Design Autonome</title>
    <style>
        /* === CSS INTÉGRÉ (pour éviter un fichier externe) === */
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        }

        body {
            background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
            height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
        }

        .login-container {
            width: 100%;
            max-width: 400px;
            padding: 20px;
        }

        .login-card {
            background: white;
            border-radius: 15px;
            box-shadow: 0 10px 30px rgba(0, 0, 0, 0.1);
            padding: 30px;
            text-align: center;
            animation: fadeIn 0.5s ease-in-out;
        }

        @keyframes fadeIn {
            from { opacity: 0; transform: translateY(-20px); }
            to { opacity: 1; transform: translateY(0); }
        }

        /* Icônes SVG intégrées */
        .icon {
            width: 24px;
            height: 24px;
            position: absolute;
            left: 12px;
            top: 38px;
            fill: #888;
        }

        .logo-icon {
            width: 60px;
            height: 60px;
            margin-bottom: 20px;
            fill: #764ba2;
        }

        h1 {
            color: #333;
            margin-bottom: 25px;
            font-weight: 600;
        }

        .input-group {
            position: relative;
            margin-bottom: 20px;
            text-align: left;
        }

        .input-group label {
            display: block;
            margin-bottom: 8px;
            color: #555;
            font-weight: 500;
        }

        .input-group input {
            width: 100%;
            padding: 12px 15px 12px 40px;
            border: 1px solid #ddd;
            border-radius: 8px;
            font-size: 16px;
            transition: all 0.3s;
        }

        .input-group input:focus {
            border-color: #764ba2;
            box-shadow: 0 0 0 3px rgba(118, 75, 162, 0.2);
            outline: none;
        }

        .options {
            display: flex;
            justify-content: space-between;
            align-items: center;
            margin-bottom: 20px;
        }

        .remember-me {
            display: flex;
            align-items: center;
            gap: 5px;
            color: #555;
        }

        .forgot-password {
            color: #764ba2;
            text-decoration: none;
            font-size: 14px;
        }

        .forgot-password:hover {
            text-decoration: underline;
        }

        .login-btn {
            width: 100%;
            padding: 12px;
            background: linear-gradient(to right, #667eea, #764ba2);
            color: white;
            border: none;
            border-radius: 8px;
            font-size: 16px;
            font-weight: 600;
            cursor: pointer;
            transition: all 0.3s;
        }

        .login-btn:hover {
            background: linear-gradient(to right, #5a6fd1, #6a3d9a);
            transform: translateY(-2px);
        }

        .signup-link {
            margin-top: 20px;
            color: #666;
            font-size: 14px;
        }

        .signup-link a {
            color: #764ba2;
            text-decoration: none;
            font-weight: 500;
        }

        .signup-link a:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>
    <div class="login-container">
        <div class="login-card">
            <!-- Logo SVG (remplace Font Awesome) -->
            <div class="logo">
                <svg class="logo-icon" viewBox="0 0 24 24">
                    <path d="M12 2C6.48 2 2 6.48 2 12s4.48 10 10 10 10-4.48 10-10S17.52 2 12 2zm0 3c1.66 0 3 1.34 3 3s-1.34 3-3 3-3-1.34-3-3 1.34-3 3-3zm0 14.2c-2.5 0-4.71-1.28-6-3.22.03-1.99 4-3.08 6-3.08 1.99 0 5.97 1.09 6 3.08-1.29 1.94-3.5 3.22-6 3.22z"/>
                </svg>
            </div>
            <h1>Connexion</h1>
            
            <form class="login-form" action="<%=request.getContextPath()%>/home/login" method="get">
                <div class="input-group">
                    <label for="username">Nom d'utilisateur</label>
                    <!-- Icône SVG intégrée -->
                    <svg class="icon" viewBox="0 0 24 24">
                        <path d="M12 12c2.21 0 4-1.79 4-4s-1.79-4-4-4-4 1.79-4 4 1.79 4 4 4zm0 2c-2.67 0-8 1.34-8 4v2h16v-2c0-2.66-5.33-4-8-4z"/>
                    </svg>
                    <input 
                        type="text" 
                        id="username" 
                        placeholder="Entrez votre nom d'utilisateur"
                        name="utilisateur.username" 
                        required
                    >
                </div>
                
                <div class="input-group">
                    <label for="password">Mot de passe</label>
                    <!-- Icône SVG intégrée -->
                    <svg class="icon" viewBox="0 0 24 24">
                        <path d="M18 8h-1V6c0-2.76-2.24-5-5-5S7 3.24 7 6v2H6c-1.1 0-2 .9-2 2v10c0 1.1.9 2 2 2h12c1.1 0 2-.9 2-2V10c0-1.1-.9-2-2-2zm-6 9c-1.1 0-2-.9-2-2s.9-2 2-2 2 .9 2 2-.9 2-2 2zm3.1-9H8.9V6c0-1.71 1.39-3.1 3.1-3.1 1.71 0 3.1 1.39 3.1 3.1v2z"/>
                    </svg>
                    <input 
                        type="password" 
                        id="password" 
                        placeholder="Entrez votre mot de passe"
                        name="utilisateur.password" 
                        required
                    >
                </div>
                        
                <button type="submit" class="login-btn">Se connecter</button>
                
            </form>
    <%
      if (request.getAttribute("error") != null) {
          HashMap<String, String> liste = (HashMap<String, String>) request.getAttribute("error");
          for (String key : liste.keySet()) {
              String value = liste.get(key);
              out.println("<div class='error'>" + value + "</div>");
          }
      }
    %>
        </div>
    </div>
</body>
</html>