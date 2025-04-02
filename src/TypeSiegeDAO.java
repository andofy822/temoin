package base;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.List;

public class TypeSiegeDAO {
    private int id;
    private String val;
    private String desce;

        
    

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

    public static List<TypeSiegeDAO> getAllTypeSiege(Connection connection) {
        List<TypeSiegeDAO> vols = new ArrayList<>();
        String sql = "SELECT * FROM typeSiege";
        try (PreparedStatement pstmt = connection.prepareStatement(sql);
             ResultSet rs = pstmt.executeQuery()) {

            while (rs.next()) {
                TypeSiegeDAO vol =  new TypeSiegeDAO(
                        rs.getInt("id"),
                        rs.getString("val"),
                        rs.getString("desce")
                    );
                vols.add(vol);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return vols;
    }

    public static List<TypeSiegeDAO> getTypeSiegeByIdAvion(Connection connection,int idAvion) {
        List<TypeSiegeDAO> vols = new ArrayList<>();
        String sql = "SELECT tp.id as id,tp.val as val,tp.desce as desce FROM liaisontypesiegeavion as ltp join typesiege as tp on ltp.idtypesiege = tp.id  where ltp.idAvion = ?";
        try (PreparedStatement pstmt = connection.prepareStatement(sql);) {
                pstmt.setInt(1, idAvion);
                try(ResultSet rs = pstmt.executeQuery()){
                    while (rs.next()) {
                        TypeSiegeDAO vol =  new TypeSiegeDAO(
                                rs.getInt("id"),
                                rs.getString("val"),
                                rs.getString("desce")
                            );
                        vols.add(vol);
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return vols;
    }
        

    public TypeSiegeDAO(int id, String val, String desce) {
        this.id = id;
        this.val = val;
        this.desce = desce;
    }
    public TypeSiegeDAO(){
        
    }
    
    
        
}

