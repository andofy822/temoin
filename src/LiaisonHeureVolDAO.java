package base;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import connexion.Connexion;

public class LiaisonHeureVolDAO {
    private int id;
    private int heure;
    private int idVol;

    public LiaisonHeureVolDAO() {
    }

    public LiaisonHeureVolDAO(int id, int heure, int idVol) {
        this.id = id;
        this.heure = heure;
        this.idVol = idVol;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getHeure() {
        return heure;
    }

    public void setHeure(int heure) {
        this.heure = heure;
    }

    public int getIdVol() {
        return idVol;
    }

    public void setIdVol(int idVol) {
        this.idVol = idVol;
    }

    public static List<LiaisonHeureVolDAO> getAllHeureReservation() {
        List<LiaisonHeureVolDAO> list = new ArrayList<>();
        String sql = "SELECT * FROM liaisonvolreservation";
        
        try (Connection conn = Connexion.getConn();
             PreparedStatement pstmt = conn.prepareStatement(sql);
             ResultSet rs = pstmt.executeQuery()) {
            
            while (rs.next()) {
                LiaisonHeureVolDAO item = new LiaisonHeureVolDAO();
                item.setId(rs.getInt("id"));
                item.setHeure(rs.getInt("dureavantvol"));
                item.setIdVol(rs.getInt("idVol"));
                list.add(item);
            }
        } catch (SQLException e) {
            System.err.println("Erreur lors de la récupération des données");
            e.printStackTrace();
        }
        return list;
    }

    public static List<LiaisonHeureVolDAO> getAllHeureAnnulation() {
        List<LiaisonHeureVolDAO> list = new ArrayList<>();
        String sql = "SELECT * FROM liaisonvolannulation";
        
        try (Connection conn = Connexion.getConn();
             PreparedStatement pstmt = conn.prepareStatement(sql);
             ResultSet rs = pstmt.executeQuery()) {
            
            while (rs.next()) { 
                LiaisonHeureVolDAO item = new LiaisonHeureVolDAO();
                item.setId(rs.getInt("id"));
                item.setHeure(rs.getInt("dureavantvol"));
                item.setIdVol(rs.getInt("idVol"));
                list.add(item);
            }
        } catch (SQLException e) {
            System.err.println("Erreur lors de la récupération des données");
            e.printStackTrace();
        }
        return list;
    }
}
