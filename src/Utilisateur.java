package utilisateur;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import framework.NotNull;

public class Utilisateur {
    private int id;
    @NotNull
    private String username;
    @NotNull
    private String password;
    private String role;

    // Constructeurs
    public Utilisateur() {}

    public Utilisateur(int id, String username, String password, String role) {
        this.id = id;
        this.username = username;
        this.password = password;
        this.role = role;
    }

    // Getters et Setters
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getRole() {
        return role;
    }

    public void setRole(String role) {
        this.role = role;
    }

    // Fonction pour valider le login
    public static Utilisateur validateLogin(String username, String password, Connection connection) throws Exception {
        String sql = "SELECT * FROM Utilisateur WHERE username = ? AND password = ?";
        try (PreparedStatement pstmt = connection.prepareStatement(sql)) {
            pstmt.setString(1, username);
            pstmt.setString(2, password);
            
            try (ResultSet rs = pstmt.executeQuery()) {
                if (rs.next()) {
                    return new Utilisateur(
                        rs.getInt("id"),
                        rs.getString("username"),
                        rs.getString("password"), 
                        rs.getString("role")
                    );
                } else {
                    throw new Exception("Identifiants incorrects !");
                }
            }
        } catch (SQLException e) {
            throw new Exception("Erreur lors de la validation du login.", e);
        }
    }

}
