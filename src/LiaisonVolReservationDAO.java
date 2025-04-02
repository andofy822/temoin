package base;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.List;

public class LiaisonVolReservationDAO {
    private int id;
    private int idVol;
    private int dureAvantVol;
    
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


    public int getDureAvantVol() {
        return dureAvantVol;
    }


    public void setDureAvantVol(int dureAvantVol) {
        this.dureAvantVol = dureAvantVol;
    }


    // Méthode pour insérer un vol
    public boolean insertReservation(Connection connection) {
        String sql = "INSERT INTO liaisonVolReservation (idVol, dureAvantVol) VALUES (?, ?)";
        try (PreparedStatement pstmt = connection.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS)) {
            pstmt.setInt(1, idVol);
            pstmt.setInt(2, dureAvantVol);
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
    
    public LiaisonVolReservationDAO(int id, int idVol, int dureAvantVol) {
        this.id = id;
        this.idVol = idVol;
        this.dureAvantVol = dureAvantVol;
    }

    public LiaisonVolReservationDAO(){
        
    }
    
    
        
}
