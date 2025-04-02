package base;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.List;


public class VolDAOCpl extends VolDAO{
    String nomAvion;
    String nomTypeSiege;
    String nomVilleDepart;
    String nomVilleArrivee;

    public String getNomAvion() {
        return nomAvion;
    }
    public void setNomAvion(String nomAvion) {
        this.nomAvion = nomAvion;
    }
    public String getNomTypeSiege() {
        return nomTypeSiege;
    }
    public void setNomTypeSiege(String nomTypeSiege) {
        this.nomTypeSiege = nomTypeSiege;
    }
    public String getNomVilleDepart() {
        return nomVilleDepart;
    }
    public void setNomVilleDepart(String nomVilleDepart) {
        this.nomVilleDepart = nomVilleDepart;
    }
    public String getNomVilleArrivee() {
        return nomVilleArrivee;
    }
    public void setNomVilleArrivee(String nomVilleArrivee) {
        this.nomVilleArrivee = nomVilleArrivee;
    }
    public VolDAOCpl(){
        super();
    }
    public VolDAOCpl(int id, int idAvion, int idVilleDepart, int idVilleArrive, Timestamp dateDepart,
            Timestamp dateArrive, int dure, double prix, int statut, int idtypesiege, int nombreTotalSiege,
            int nombreSiegePromotion, int promotion, String nomAvion, String nomTypeSiege, String nomVilleDepart,
            String nomVilleArrivee) {
        super(id, idAvion, idVilleDepart, idVilleArrive, dateDepart, dateArrive, dure, prix, statut, idtypesiege,
                nombreTotalSiege, nombreSiegePromotion, promotion);
        this.nomAvion = nomAvion;
        this.nomTypeSiege = nomTypeSiege;
        this.nomVilleDepart = nomVilleDepart;
        this.nomVilleArrivee = nomVilleArrivee;
    }
    public static List getAllVolsAvecPrix(Connection connection) {
        List vols = new ArrayList<>();
        String sql = "SELECT * FROM voldetails"
             ;

        try (PreparedStatement pstmt = connection.prepareStatement(sql);
             ResultSet rs = pstmt.executeQuery()) {
            while (rs.next()) {
                VolDAOCpl vol =  new VolDAOCpl(
                        rs.getInt("id"),
                        rs.getInt("idAvion"),
                        rs.getInt("idVilleDepart"),
                        rs.getInt("idVilleArive"),
                        rs.getTimestamp("DateDepart"),
                        rs.getTimestamp("DateArive"),
                        rs.getInt("Dure"),
                        rs.getDouble("prix"),
                        rs.getInt("statut"),
                        rs.getInt("idtypesiege"),
                        rs.getInt("nombre"),
                        rs.getInt("nombresiege"),
                        rs.getInt("promotion"),
                        rs.getString("modele"),
                        rs.getString("typesiege"),
                        rs.getString("villedepart"),
                        rs.getString("villearive")
                    );
                vols.add(vol);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return vols;
    }
    public static Object getVolById(Connection connection, int volId) {
        String sql = "SELECT * FROM voldetails WHERE id=?";
        try (PreparedStatement pstmt = connection.prepareStatement(sql)) {
            pstmt.setInt(1, volId);
            try (ResultSet rs = pstmt.executeQuery()) {
                if (rs.next()) {
                    return  new VolDAOCpl(
                        rs.getInt("id"),
                        rs.getInt("idAvion"),
                        rs.getInt("idVilleDepart"),
                        rs.getInt("idVilleArive"),
                        rs.getTimestamp("DateDepart"),
                        rs.getTimestamp("DateArive"),
                        rs.getInt("Dure"),
                        rs.getDouble("prix"),
                        rs.getInt("statut"),
                        rs.getInt("idtypesiege"),
                        rs.getInt("nombre"),
                        rs.getInt("nombresiege"),
                        rs.getInt("promotion"),
                        rs.getString("modele"),
                        rs.getString("typesiege"),
                        rs.getString("villedepart"),
                        rs.getString("villearive")
                    );
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }
       
    
}