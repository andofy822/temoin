package base;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.List;

public class PromotionDAO {
    private int id;
    private int idVol;
    private int idTypeSiege;
    private int nombreSiege;
    private int promotion;

        
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getIdVol() {
        return idVol;
    }

    public void setIdVol(int idVol) {
        this.idVol = idVol;
    }

    public int getIdTypeSiege() {
        return idTypeSiege;
    }

    public void setIdTypeSiege(int idTypeSiege) {
        this.idTypeSiege = idTypeSiege;
    }

    public int getNombreSiege() {
        return nombreSiege;
    }

    public void setNombreSiege(int nombreSiege) {
        this.nombreSiege = nombreSiege;
    }

    public int getPromotion() {
        return promotion;
    }

    public void setPromotion(int promotion) {
        this.promotion = promotion;
    }

    // Méthode pour insérer un vol
    public boolean insertPromotion(Connection connection) {
        String sql = "INSERT INTO liaisonVolPromotion (idVol, idTypeSiege, nombreSiege, promotion) VALUES (?, ?, ?, ?)";
        try (PreparedStatement pstmt = connection.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS)) {
            pstmt.setInt(1, idVol);
            pstmt.setInt(2, idTypeSiege);
            pstmt.setInt(3, nombreSiege);
            pstmt.setInt(4, promotion);
            int affectedRows = pstmt.executeUpdate();
            if (affectedRows > 0) {
                try (ResultSet generatedKeys = pstmt.getGeneratedKeys()) {
                    if (generatedKeys.next()) {
                        this.id = generatedKeys.getInt(1);
                    }
                }
                return true;
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return false;
    }

    
    public PromotionDAO(int id, int idVol, int idTypeSiege, int nombreSiege, int promotion) {
        this.id = id;
        this.idVol = idVol;
        this.idTypeSiege = idTypeSiege;
        this.nombreSiege = nombreSiege;
        this.promotion = promotion;
    }

    public PromotionDAO(){
        
    }
    
    
        
}
