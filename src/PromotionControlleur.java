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
public class PromotionControlleur {
    CustomSession session;
    @Get(url = "/insertPromotion")
    @MethodGet
    @Auth(role = {"admin"})
    public ModelAndView insertPromotion(@Arg(message = "prom")PromotionDAO promotionDAO){
        ModelAndView mv = null;
        try (Connection con = Connexion.getConn()){      
            String role = (String)session.search("role");
            mv = new ModelAndView("/home/listeVol");
            promotionDAO.insertPromotion(con);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return mv;
    }
    @Get(url = "/insertAnnulationTemps")
    @MethodGet
    @Auth(role = {"admin"})
    public ModelAndView insertAnnul(@Arg(message = "annul")LiaisonVolAnnulationDAO promotionDAO){
        ModelAndView mv = null;
        try (Connection con = Connexion.getConn()){      
            String role = (String)session.search("role");
            mv = new ModelAndView("/home/listeVol");
            promotionDAO.insertAnnulation(con);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return mv;
    }
    @Get(url = "/insertReservationTemps")
    @MethodGet
    @Auth(role = {"admin"})
    public ModelAndView insertReserv(@Arg(message = "reserv")LiaisonVolReservationDAO promotionDAO){
        ModelAndView mv = null;
        try (Connection con = Connexion.getConn()){      
            String role = (String)session.search("role");
            mv = new ModelAndView("/home/listeVol");
            promotionDAO.insertReservation(con);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return mv;
    }
    @Get(url = "/promotionForm")
    @MethodGet
    @Auth(role = {"admin"})
    public ModelAndView promotionForm(){
        ModelAndView mv = null;
        try (Connection con = Connexion.getConn()){      
            String role = (String)session.search("role");
            if (role.compareToIgnoreCase("admin")==0) {
                mv = new ModelAndView("/promotionFormulaire.jsp");
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return mv;
    }
    @Get(url = "/annulationTempsForm")
    @MethodGet
    @Auth(role = {"admin"})
    public ModelAndView annulForm(){
        ModelAndView mv = null;
        try (Connection con = Connexion.getConn()){      
            String role = (String)session.search("role");
            if (role.compareToIgnoreCase("admin")==0) {
                mv = new ModelAndView("/annulationTempsFormulaire.jsp");
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return mv;
    }
    @Get(url = "/reservationTempsForm")
    @MethodGet
    @Auth(role = {"admin"})
    public ModelAndView resrForm(){
        ModelAndView mv = null;
        try (Connection con = Connexion.getConn()){      
            String role = (String)session.search("role");
            if (role.compareToIgnoreCase("admin")==0) {
                mv = new ModelAndView("/reservationTempsFormulaire.jsp");
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return mv;
    }
    

    
}
