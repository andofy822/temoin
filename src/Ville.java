package utilitaire;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class Ville {
    private int id;
    private String val;
    private String desce;

    // Constructeur par défaut
    public Ville() {
    }

    // Constructeur avec paramètres
    public Ville(int id, String val, String desce) {
        this.id = id;
        this.val = val;
        this.desce = desce;
    }

    // Getters et Setters
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getVal() {
        return val;
    }

    public void setVal(String val) {
        this.val = val;
    }

    public String getDesce() {
        return desce;
    }

    public void setDesce(String desce) {
        this.desce = desce;
    }

    public static List<Ville> getAll(Connection conn) throws SQLException {
        List<Ville> villes = new ArrayList<>();
        String sql = "SELECT * FROM ville";
        try (PreparedStatement stmt = conn.prepareStatement(sql);
             ResultSet rs = stmt.executeQuery()) {
            while (rs.next()) {
                villes.add(new Ville(
                    rs.getInt("id"),
                    rs.getString("val"),
                    rs.getString("desce")
                ));
            }
        }
        return villes;
    }
    public static Ville getById(int id, Connection conn) throws SQLException {
        String sql = "SELECT * FROM ville WHERE id = ?";
        try (PreparedStatement stmt = conn.prepareStatement(sql)) {
            stmt.setInt(1, id);
            try (ResultSet rs = stmt.executeQuery()) {
                if (rs.next()) {
                    return new Ville(
                        rs.getInt("id"),
                        rs.getString("val"),
                        rs.getString("desce")
                    );
                }
            }
        }
        return null;
    }

}
