package base;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.List;

public class LiaisonSiegeVolDAO {
    private int id;
    private int idtypesiege;
    private int idVol;
    private double prix;

    
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getIdtypesiege() {
        return idtypesiege;
    }

    public void setIdtypesiege(int idtypesiege) {
        this.idtypesiege = idtypesiege;
    }

    public double getPrix() {
        return prix;
    }

    public void setPrix(double prix) {
        this.prix = prix;
    }
    
    

    public LiaisonSiegeVolDAO(int id, int idtypesiege, int idVol, double prix) {
        this.id = id;
        this.idtypesiege = idtypesiege;
        this.idVol = idVol;
        this.prix = prix;
    }

    public LiaisonSiegeVolDAO(){
        
    }
    public int insertLiaisonSiegeVol(Connection connection) {
        String sql = "INSERT INTO liaisonsiegevol (idTypesiege, idVol, prix) VALUES (?, ?, ?)";
        try (PreparedStatement pstmt = connection.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS)) {
            pstmt.setInt(1, idtypesiege);
            pstmt.setInt(2, idVol);
            pstmt.setDouble(3, prix);
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

    public int getIdVol() {
        return idVol;
    }

    public void setIdVol(int idVol) {
        this.idVol = idVol;
    }
    
    
        
}

