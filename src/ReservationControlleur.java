package controlleur;
import java.sql.Connection;
import java.util.List;
import base.*;
import connexion.*;
import action.*;

import framework.*;
import materielle.Avion;
import utilitaire.Ville;
@Annote(valeur = "Controlleur")
public class ReservationControlleur {
    CustomSession session;
    @Get(url = "/reservationVol")
    @MethodGet
    @Auth(role = {"client","admin"})
    public ModelAndView volListe(){
        ModelAndView mv = null;
        try (Connection con = Connexion.getConn()){      
            String role = (String)session.search("role");
            if (role.compareToIgnoreCase("admin")==0) {
                mv = new ModelAndView("/reservationVol.jsp?header=headerAdmin.jsp");
            }
            else{
                mv = new ModelAndView("/reservationVol.jsp?header=headerClient.jsp");
            }
            List<VolDAOCpl> listeVols = (List<VolDAOCpl>)VolDAOCpl.getAllVolsAvecPrix(con);
            mv.AddOject("listeVols", listeVols); 
        } catch (Exception e) {
            e.printStackTrace();
        }
        return mv;
    }
    @Get(url = "/formReservation")
    @MethodGet
    @Auth(role = {"client","admin"})
    public ModelAndView formRes(){
        ModelAndView mv = null;
        try (Connection con = Connexion.getConn()){      
            String role = (String)session.search("role");
            if (role.compareToIgnoreCase("admin")==0) {
                mv = new ModelAndView("/reservationFormulaire.jsp?header=headerAdmin.jsp");
            }
            else{
                mv = new ModelAndView("/reservationFormulaire.jsp?header=headerClient.jsp");
            } 
            int idUtilisateur = (int)session.search("idUtilisateur");
            System.out.println("idutil"+idUtilisateur);
            mv.AddOject("idUtilisateur", idUtilisateur);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return mv;
    }
    @Get(url = "/validerReservation")
    @MethodPost
    @Auth(role = {"client","admin"})
    public ModelAndView valideRes(@Arg(message = "res")ReservationDAO reservationDAO){
        ModelAndView mv = null;
        try (Connection con = Connexion.getConn()){      
            String role = (String)session.search("role");
            if (role.compareToIgnoreCase("admin")==0) {
                mv = new ModelAndView("/reservationVol.jsp?header=headerAdmin.jsp");
            }
            else{
                mv = new ModelAndView("/reservationVol.jsp?header=headerClient.jsp");
            } 
            reservationDAO.controler(con);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return mv;
    }

    @Get(url = "/listeReservation")
    @MethodGet
    @Auth(role = {"client","admin"})
    public ModelAndView reservationListe(){
        ModelAndView mv = null;
        try (Connection con = Connexion.getConn()){      
            String role = (String)session.search("role");
            mv = new ModelAndView("/listeReservationVol.jsp");
            List<ReservationDAO> listeReserVation = (List<ReservationDAO>) ReservationDAO.getAll(con);
            System.out.println(listeReserVation.size());
            mv.AddOject("listeReservation", listeReserVation); 
        } catch (Exception e) {
            e.printStackTrace();
        }
        return mv;
    }

    @Get(url = "/annulerReservation")
    @MethodGet
    @Auth(role = {"client","admin"})
    public ModelAndView annulerReservation(@Arg(message = "idReservation") String idReservation,@Arg(message = "idVol") String idVol){
        ModelAndView mv = null;
        try (Connection con = Connexion.getConn()){      
            ReservationDAO reserv = new ReservationDAO(); 
            mv = new ModelAndView("/listeReservationVol.jsp");
            reserv.annulerReservation(con, Integer.parseInt(idReservation), Integer.parseInt(idVol));
            List<ReservationDAO> listeReserVation = (List<ReservationDAO>) ReservationDAO.getAll(con);
            System.out.println(listeReserVation.size());
            mv.AddOject("listeReservation", listeReserVation); 
        } catch (Exception e) {
            e.printStackTrace();
        }
        return mv;
    }

    
}
