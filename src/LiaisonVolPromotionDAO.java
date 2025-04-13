package base;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import connexion.Connexion;

public class LiaisonVolPromotionDAO {
    private int id;
    private int idVol;
    private int idTypeSiege;
    private int nombreSiege;
    private int promotion;
    private String val;

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

    public String getVal() {
        return val;
    }

    public void setVal(String val) {
        this.val = val;
    }

    public LiaisonVolPromotionDAO() {
    }

    public LiaisonVolPromotionDAO(int id, int idVol, int idTypeSiege, int nombreSiege, int promotion, String val) {
        this.id = id;
        this.idVol = idVol;
        this.idTypeSiege = idTypeSiege;
        this.nombreSiege = nombreSiege;
        this.promotion = promotion;
        this.val = val;
    }
    public static List<LiaisonVolPromotionDAO> getAll() {
        List<LiaisonVolPromotionDAO> promotions = new ArrayList<>();
        String sql = "select l.*,t.val from liaisonvolpromotion as l join typesiege as t on l.idtypesiege=t.id";
        try (PreparedStatement pstmt = Connexion.getConn().prepareStatement(sql);
             ResultSet rs = pstmt.executeQuery()) {
            
            while (rs.next()) {
                LiaisonVolPromotionDAO promotion = new LiaisonVolPromotionDAO(
                    rs.getInt("id"),
                    rs.getInt("idvol"),
                    rs.getInt("idtypesiege"),
                    rs.getInt("nombresiege"),
                    rs.getInt("promotion"),
                    rs.getString("val")
                );
                promotions.add(promotion);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return promotions;
    }
}
