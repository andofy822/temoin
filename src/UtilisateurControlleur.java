package controlleur;
import java.sql.Connection;
import java.util.List;
import base.*;
import connexion.*;
import action.*;
import framework.*;
import materielle.Avion;
import utilitaire.Ville;
import utilisateur.*;
@Annote(valeur = "Controlleur")
public class UtilisateurControlleur {
    CustomSession session;
    @Get(url = "/login")
    @MethodGet
    public ModelAndView log(@Arg(message = "utilisateur")Utilisateur utilisateur)throws Exception{
        ModelAndView mv = new ModelAndView("/home/acceuil");
        try (Connection con = Connexion.getConn()){     
            mv.setErrorUrl("/home/utilisateurFormulaire"); 
            Utilisateur user = Utilisateur.validateLogin(utilisateur.getUsername(), utilisateur.getPassword(), con);
            session.add("idUtilisateur", user.getId());
            session.add("role",user.getRole());
            session.add("validate",true);
            
        } catch (Exception e) {
            throw new Exception(e.getMessage());
        }
        return mv;
    }
    @Get(url = "/utilisateurFormulaire")
    @MethodGet
    public ModelAndView utilisateurForm(){
        ModelAndView mv = new ModelAndView("/utilisateurFormulaire.jsp");
        return mv;
    }
    @Get(url = "/acceuil")
    @Auth(role = {"client","admin"})
    @MethodGet
    public ModelAndView acceuilAff(){
        ModelAndView mv = null;
        try (Connection con = Connexion.getConn()){
            String role = (String)session.search("role");
            if (role.compareToIgnoreCase("admin")==0) {
                mv = new ModelAndView("/acceuilAdmin.jsp");
                List<Avion> listeAvion = Avion.getAll(con);
                List<Ville> listeVille = Ville.getAll(con);
                List<VolDAOCpl> listeVols = (List<VolDAOCpl>)VolDAOCpl.getAllVolsAvecPrix(con);
                List<LiaisonHeureVolDAO> listeHeureAnnulation = LiaisonHeureVolDAO.getAllHeureAnnulation();
                List<LiaisonHeureVolDAO> listeHeureReservation = LiaisonHeureVolDAO.getAllHeureReservation();
                List<LiaisonVolPromotionDAO> listePromotionDAOs = LiaisonVolPromotionDAO.getAll();
                mv.AddOject("listeVols", listeVols);
                mv.AddOject("listeAvion", listeAvion);
                mv.AddOject("listeVille", listeVille);
                mv.AddOject("listeHeureAnnulation", listeHeureAnnulation);
                mv.AddOject("listeHeureReservation", listeHeureReservation);
                mv.AddOject("listeVolPromotion", listePromotionDAOs);
            }
            else{
                mv = new ModelAndView("/acceuilClient.jsp");
                List<VolDAOCpl> listeVols = (List<VolDAOCpl>)VolDAOCpl.getAllVolsAvecPrix(con);
                mv.AddOject("listeVols", listeVols);
                List<ReservationDAO> listeReserVation = (List<ReservationDAO>) ReservationDAO.getAll(con);
                mv.AddOject("listeReservation", listeReserVation);
            }
                
            
        }catch (Exception e) {
            e.printStackTrace();
        }
        return mv;
        
    }
}
