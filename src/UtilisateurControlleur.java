package controlleur;
import java.sql.Connection;
import connexion.*;

import framework.*;
import utilisateur.*;
@Annote(valeur = "Controlleur")
public class UtilisateurControlleur {
    CustomSession session;
    @Get(url = "/login")
    @MethodGet
    public ModelAndView log(@Arg(message = "utilisateur")Utilisateur utilisateur){
        ModelAndView mv = new ModelAndView("/home/acceuil");
        try (Connection con = Connexion.getConn()){     
            mv.setErrorUrl("/home/utilisateurFormulaire"); 
            Utilisateur user = Utilisateur.validateLogin(utilisateur.getUsername(), utilisateur.getPassword(), con);
            session.add("idUtilisateur", user.getId());
            session.add("role",user.getRole());
            session.add("validate",true);
            
        } catch (Exception e) {
            e.printStackTrace();
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
    @MethodGet
    public ModelAndView acceuilAff(){
        ModelAndView mv = null;
        String role = (String)session.search("role");
        if (role.compareToIgnoreCase("admin")==0) {
             mv = new ModelAndView("/home/insertVol");
        }
        else{
             mv = new ModelAndView("#");
        }
        return mv;
    }
}
