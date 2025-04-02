package base;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.List;

public class VolDAO {
    private int id;
    private int idAvion;
    private int idVilleDepart;
    private int idVilleArrive;
    private Timestamp dateDepart;
    private Timestamp dateArrive;
    private double prix;
    private int dure; // en secondes
    private int statut;
    private int idtypesiege; // 1: créé, 0: annulé
    private int nombreTotalSiege;
    private int nombreSiegePromotion;
    private int promotion;
    // Méthode pour insérer un vol
    public int insertVol(Connection connection) {
        String sql = "INSERT INTO vol (idAvion, idVilleDepart, idVilleArive, DateDepart, DateArive, Dure, statut) VALUES (?, ?, ?, ?, ?, ?, ?)";
        try (PreparedStatement pstmt = connection.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS)) {
            pstmt.setInt(1, idAvion);
            pstmt.setInt(2, idVilleDepart);
            pstmt.setInt(3, idVilleArrive);
            pstmt.setTimestamp(4, dateDepart);
            pstmt.setTimestamp(5, dateArrive);
            pstmt.setInt(6, dure);
            pstmt.setInt(7, statut);
            
            int affectedRows = pstmt.executeUpdate();
            if (affectedRows > 0) {
                try (ResultSet generatedKeys = pstmt.getGeneratedKeys()) {
                    if (generatedKeys.next()) {
                        this.id = generatedKeys.getInt(1);
                    }
                }
                return this.id;
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return -1;
    }

    // Méthode pour mettre à jour un vol
    public boolean updateVol(Connection connection) {
        String sql = "UPDATE vol SET idAvion=?, idVilleDepart=?, idVilleArive=?, DateDepart=?, DateArive=?, Dure=?, statut=? WHERE id=?";
        try (PreparedStatement pstmt = connection.prepareStatement(sql)) {
            pstmt.setInt(1, idAvion);
            pstmt.setInt(2, idVilleDepart);
            pstmt.setInt(3, idVilleArrive);
            pstmt.setTimestamp(4, dateDepart);
            pstmt.setTimestamp(5, dateArrive);
            pstmt.setInt(6, dure);
            pstmt.setInt(7, statut);
            pstmt.setInt(8, id);
            return pstmt.executeUpdate() > 0;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return false;
    }

    // Méthode pour supprimer un vol
    public boolean deleteVol(Connection connection) {
        String sql = "DELETE FROM vol WHERE id=?";
        try (PreparedStatement pstmt = connection.prepareStatement(sql)) {
            pstmt.setInt(1, id);
            return pstmt.executeUpdate() > 0;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return false;
    }

    // Méthode pour récupérer un vol par son ID
    public static Object getVolById(Connection connection, int volId) {
        String sql = "SELECT * FROM vol WHERE id=?";
        try (PreparedStatement pstmt = connection.prepareStatement(sql)) {
            pstmt.setInt(1, volId);
            try (ResultSet rs = pstmt.executeQuery()) {
                if (rs.next()) {
                    return new VolDAO(
                        rs.getInt("id"),
                        rs.getInt("idAvion"),
                        rs.getInt("idVilleDepart"),
                        rs.getInt("idVilleArive"),
                        rs.getTimestamp("DateDepart"),
                        rs.getTimestamp("DateArive"),
                        rs.getInt("Dure"),
                        rs.getInt("statut")
                    );
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }


    // Méthode pour récupérer tous les vols
    public static List<VolDAO> getAllVols(Connection connection) {
        List<VolDAO> vols = new ArrayList<>();
        String sql = "SELECT * FROM vol";
        try (PreparedStatement pstmt = connection.prepareStatement(sql);
             ResultSet rs = pstmt.executeQuery()) {

            while (rs.next()) {
                VolDAO vol =  new VolDAO(
                        rs.getInt("id"),
                        rs.getInt("idAvion"),
                        rs.getInt("idVilleDepart"),
                        rs.getInt("idVilleArive"),
                        rs.getTimestamp("DateDepart"),
                        rs.getTimestamp("DateArive"),
                        rs.getInt("Dure"),
                        rs.getInt("statut")
                    );
                vols.add(vol);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return vols;
    }
    public static List getAllVolsAvecPrix(Connection connection) {
        List vols = new ArrayList<>();
        String sql = "SELECT * FROM voldetails";

        try (PreparedStatement pstmt = connection.prepareStatement(sql);
             ResultSet rs = pstmt.executeQuery()) {
            while (rs.next()) {
                VolDAO vol =  new VolDAO(
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
                        rs.getInt("promotion")
                    );
                vols.add(vol);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return vols;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getIdAvion() {
        return idAvion;
    }

    public void setIdAvion(int idAvion) {
        this.idAvion = idAvion;
    }

    public int getIdVilleDepart() {
        return idVilleDepart;
    }

    public void setIdVilleDepart(int idVilleDepart) {
        this.idVilleDepart = idVilleDepart;
    }

    public int getIdVilleArrive() {
        return idVilleArrive;
    }

    public void setIdVilleArrive(int idVilleArrive) {
        this.idVilleArrive = idVilleArrive;
    }

    public Timestamp getDateDepart() {
        return dateDepart;
    }

    public void setDateDepart(Timestamp dateDepart) {
        this.dateDepart = dateDepart;
    }

    public Timestamp getDateArrive() {
        return dateArrive;
    }

    public void setDateArrive(Timestamp dateArrive) {
        this.dateArrive = dateArrive;
    }

    public int getDure() {
        return dure;
    }

    public void setDure(int dure) {
        this.dure = dure;
    }

    public double getPrix() {
        return prix;
    }

    public void setPrix(double prix) {
        this.prix = prix;
    }

    public int getStatut() {
        return statut;
    }

    public void setStatut(int statut) {
        this.statut = statut;
    }
    

    public VolDAO(int id, int idAvion, int idVilleDepart, int idVilleArrive, Timestamp dateDepart,
            Timestamp dateArrive, int dure, double prix, int statut,int idtypesiege,int nombreTotalSiege,int nombreSiegePromotion,int promotion) {
        this.id = id;
        this.idAvion = idAvion;
        this.idVilleDepart = idVilleDepart;
        this.idVilleArrive = idVilleArrive;
        this.dateDepart = dateDepart;
        this.dateArrive = dateArrive;
        this.dure = dure;
        this.prix = prix;
        this.statut = statut;
        this.idtypesiege = idtypesiege;
        this.nombreTotalSiege = nombreTotalSiege;
        this.nombreSiegePromotion = nombreSiegePromotion;
        this.promotion = promotion;
    }
    public VolDAO(int id, int idAvion, int idVilleDepart, int idVilleArrive, Timestamp dateDepart,
            Timestamp dateArrive, int dure, int statut) {
        this.id = id;
        this.idAvion = idAvion;
        this.idVilleDepart = idVilleDepart;
        this.idVilleArrive = idVilleArrive;
        this.dateDepart = dateDepart;
        this.dateArrive = dateArrive;
        this.dure = dure;
        this.statut = statut;
    }
    public VolDAO(){
        
    }

    public int getIdtypesiege() {
        return idtypesiege;
    }

    public void setIdtypesiege(int idtypesiege) {
        this.idtypesiege = idtypesiege;
    }

    public int getNombreTotalSiege() {
        return nombreTotalSiege;
    }

    public void setNombreTotalSiege(int nombreTotalSiege) {
        this.nombreTotalSiege = nombreTotalSiege;
    }

    public int getNombreSiegePromotion() {
        return nombreSiegePromotion;
    }

    public void setNombreSiegePromotion(int nombreSiegePromotion) {
        this.nombreSiegePromotion = nombreSiegePromotion;
    }

    public int getPromotion() {
        return promotion;
    }

    public void setPromotion(int promotion) {
        this.promotion = promotion;
    }
    
    
        
}
