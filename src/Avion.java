package materielle;
import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class Avion {
    private int id;
    private String modele;
    private Date dateFabrication;

    // Constructeur par défaut
    public Avion() {
    }

    // Constructeur avec paramètres
    public Avion(int id, String modele, Date dateFabrication) {
        this.id = id;
        this.modele = modele;
        this.dateFabrication = dateFabrication;
    }

    // Getters et Setters
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getModele() {
        return modele;
    }

    public void setModele(String modele) {
        this.modele = modele;
    }

    public Date getDateFabrication() {
        return dateFabrication;
    }

    public void setDateFabrication(Date dateFabrication) {
        this.dateFabrication = dateFabrication;
    }
    public static List<Avion> getAll(Connection conn) throws SQLException {
        List<Avion> avions = new ArrayList<>();
        String sql = "SELECT * FROM avion";
        try (PreparedStatement stmt = conn.prepareStatement(sql);
             ResultSet rs = stmt.executeQuery()) {
            while (rs.next()) {
                avions.add(new Avion(
                    rs.getInt("id"),
                    rs.getString("modele"),
                    rs.getDate("dateFabrication")
                ));
            }
        }
        return avions;
    }
    public static Avion getById(int id, Connection conn) throws SQLException {
        String sql = "SELECT * FROM avion WHERE id = ?";
        try (PreparedStatement stmt = conn.prepareStatement(sql)) {
            stmt.setInt(1, id);
            try (ResultSet rs = stmt.executeQuery()) {
                if (rs.next()) {
                    return new Avion(
                        rs.getInt("id"),
                        rs.getString("modele"),
                        rs.getDate("dateFabrication")
                    );
                }
            }
        }
        return null;
    }
    
}

