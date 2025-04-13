package base;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.List;

import base.VolDAOCpl;
import java.sql.Statement;

import framework.Fichier;

public class ReservationDAO {
    private int id ;
    private int idUtilisateur ;
    private int idVol ;
    private Timestamp datyheure ;
    private Fichier passport ;
    private int statut ;
    private int place ; 
    private double prix;
    private int typesiege;

    public ReservationDAO(){
        
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getIdUtilisateur() {
        return idUtilisateur;
    }

    public void setIdUtilisateur(int idUtilisateur) {
        this.idUtilisateur = idUtilisateur;
    }

    public int getIdVol() {
        return idVol;
    }

    public void setIdVol(int idVol) {
        this.idVol = idVol;
    }

    public Timestamp getDatyheure() {
        return datyheure;
    }

    public void setDatyheure(Timestamp datyheure) {
        this.datyheure = datyheure;
    }

    public Fichier getPassport() {
        return passport;
    }

    public void setPassport(Fichier passport) {
        this.passport = passport;
    }

    public int getStatut() {
        return statut;
    }

    public void setStatut(int statut) {
        this.statut = statut;
    }
    public static boolean updateReservation(Connection connection,int idRse) {
        String sql = "UPDATE reservation SET statut=? WHERE id=?";
        try (PreparedStatement pstmt = connection.prepareStatement(sql)) {
            pstmt.setInt(1, 2);
            pstmt.setInt(2, idRse);
            return pstmt.executeUpdate() > 0;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return false;
    }
   
    public boolean insertReservation(Connection connection) {
        String sql = "INSERT INTO reservation (idUtilisateur, idVol, datyheure, passport, statut, place, prix,typesiege) VALUES (?, ?, ?, ?, ?, ?, ?,?)";
        try (PreparedStatement pstmt = connection.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS)) {
            pstmt.setInt(1, idUtilisateur);
            pstmt.setInt(2, idVol);
            pstmt.setTimestamp(3, datyheure);
            pstmt.setBytes(4, passport.getFileContent());
            pstmt.setInt(5, statut);
            pstmt.setInt(6, place);
            pstmt.setDouble(7, prix);
            pstmt.setInt(8, typesiege);  
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
    
    public List<ReservationDAO> getByVol(int idVol,int typeSiege,Connection connection) {
        List<ReservationDAO> valiny = new ArrayList<>();
        String sql = "SELECT * FROM reservation WHERE idVol = ? and typesige = ?";
        try (PreparedStatement pstmt = connection.prepareStatement(sql)) {
                pstmt.setInt(1, idVol);
                pstmt.setInt(2, typeSiege);
                ResultSet rs = pstmt.executeQuery();
                while (rs.next()) {
                    ReservationDAO reservation = new ReservationDAO();
                    reservation.setId(rs.getInt("id"));
                    reservation.setIdUtilisateur(rs.getInt("idUtilisateur"));
                    reservation.setIdVol(rs.getInt("idVol"));
                    reservation.setDatyheure(rs.getTimestamp("datyheure"));
                    reservation.setStatut(rs.getInt("statut"));
                    reservation.setPlace(rs.getInt("place"));
                    reservation.setPrix(rs.getDouble("prix"));
                    valiny.add(reservation);
                }
            
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return valiny;   
    }

    public int  getTempsAvantReserver(int idVol,Connection connection) {
        List<ReservationDAO> valiny = new ArrayList<>();
        String sql = "SELECT dureavantvol FROM liaisonvolreservation WHERE idVol = ? order by id desc limit 1";
        try (PreparedStatement pstmt = connection.prepareStatement(sql)) {
                pstmt.setInt(1, idVol);
                ResultSet rs = pstmt.executeQuery();
                if (rs.next()) {
                    return rs.getInt(1);
                }
            
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return -1;   
    }

    public int  getTempsAvantAnnuler(int idVol,Connection connection) {
        List<ReservationDAO> valiny = new ArrayList<>();
        String sql = "SELECT dureavantvol FROM liaisonvolannulation WHERE idVol = ? order by id desc limit 1";
        try (PreparedStatement pstmt = connection.prepareStatement(sql)) {
                pstmt.setInt(1, idVol);
                ResultSet rs = pstmt.executeQuery();
                if (rs.next()) {
                    return rs.getInt(1);
                }
            
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return -1;   
    }
    public static boolean calculeDifference (Timestamp t1,Timestamp t2,int dead){
        long diffInMilliseconds = t1.getTime() - t2.getTime();
        long diffInSeconds = diffInMilliseconds / 1000;
        System.out.println("dead :" + dead);
        System.out.println("difference :" + diffInMilliseconds);
        if (diffInMilliseconds < dead) {
            return true;
        }
        return false;
    }

public void controler(Connection connection) throws Exception {
        try {
            int deadline = this.getTempsAvantReserver(this.idVol, connection);
            VolDAOCpl vol = (VolDAOCpl) VolDAOCpl.getVolById(connection, this.idVol);
            if (this.getDatyheure().after(vol.getDateDepart()) || (this.getDatyheure().compareTo(vol.getDateDepart()) <= 0 && ReservationDAO.calculeDifference(vol.getDateDepart(),this.getDatyheure(),deadline))) {
                throw new Exception("deadline depasse");                
            }
            List<ReservationDAO> listeReservationVol = this.getByVol(this.idVol,this.typesiege, connection);
            double totalPlacePromotion = vol.getNombreSiegePromotion();
            double totalPlace = vol.getNombreTotalSiege();
            int totalReservedSeats = 0;
            if (listeReservationVol != null) {
                for (ReservationDAO reservation : listeReservationVol) {
                    totalReservedSeats += reservation.getPlace();
                }   
            }
            if (totalReservedSeats >= totalPlacePromotion && totalReservedSeats < totalPlace) {
                double prix1 = vol.getPrix() * this.getPlace();
                this.setPrix(prix1);
                this.insertReservation(connection);
            } else if (totalReservedSeats >= totalPlace) {
                throw new Exception ("Pas de siege disponible pour cette vol");
            } else if (totalReservedSeats < totalPlacePromotion) {
                double dispo = totalPlacePromotion - totalReservedSeats;
                double prixDispo  = ((vol.getPromotion() / 100.0) * vol.getPrix()) * dispo;
                double prix1 = prixDispo + (vol.getPrix() * (this.getPlace() - dispo));
                this.setPrix(prix1);
                this.insertReservation(connection);
            }
        } catch (Exception e) {
            throw e;
        }

    }
    public  void annulerReservation(Connection connection,int idReservation,int idVol)throws Exception{
        try {
            Timestamp now = Timestamp.valueOf(LocalDateTime.now());
            int deadline = this.getTempsAvantAnnuler(idVol, connection);
            VolDAOCpl vol = (VolDAOCpl) VolDAOCpl.getVolById(connection,idVol);
            if (now.after(vol.getDateDepart()) || (now.compareTo(vol.getDateDepart()) <= 0 && ReservationDAO.calculeDifference(vol.getDateDepart(),now,deadline))) {
                throw new Exception("deadline depasse");                
            }
            ReservationDAO.updateReservation(connection, idReservation);
        } catch (Exception e) {
            throw e;
        }
    }
    public int getPlace() {
        return place;
    }

    public void setPlace(int place) {
        this.place = place;
    }

    public double getPrix() {
        return prix;
    }

    public void setPrix(double prix) {
        this.prix = prix;
    }

    public int getTypesiege() {
        return typesiege;
    }

    public void setTypesiege(int typesiege) {
        this.typesiege = typesiege;
    }
    public static List<ReservationDAO> getAll(Connection connection) {
        String sql = "SELECT * FROM reservation where statut = 1";
        List<ReservationDAO> liste = new ArrayList<ReservationDAO>();
        try (PreparedStatement pstmt = connection.prepareStatement(sql)) {
            try (ResultSet rs = pstmt.executeQuery()) {
                while (rs.next()) {
                    ReservationDAO res =  new ReservationDAO(
                        rs.getInt("id"),
                        rs.getInt("idUtilisateur"),
                        rs.getInt("idVol"),
                        rs.getTimestamp("datyheure"),
                        new Fichier("nom",rs.getBytes("passport")),
                        rs.getInt("statut"),
                        rs.getInt("place"),
                        rs.getDouble("prix"),
                        -1
                    );
                    liste.add(res);
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return liste;
    }

    public ReservationDAO(int id, int idUtilisateur, int idVol, Timestamp datyheure, Fichier passport, int statut,
            int place, double prix, int typesiege) {
        this.id = id;
        this.idUtilisateur = idUtilisateur;
        this.idVol = idVol;
        this.datyheure = datyheure;
        this.passport = passport;
        this.statut = statut;
        this.place = place;
        this.prix = prix;
        this.typesiege = typesiege;
    }
    
    

    
}
