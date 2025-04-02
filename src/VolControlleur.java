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
public class VolControlleur {
    CustomSession session;
    @Get(url = "/listeVol")
    @MethodGet
    public ModelAndView volListe(){
        ModelAndView mv = null;
        try (Connection con = Connexion.getConn()){      
            String role = (String)session.search("role");
            if (role.compareToIgnoreCase("admin")==0) {
                mv = new ModelAndView("/listeVol.jsp?header=headerAdmin.jsp");
            }
            else{
                mv = new ModelAndView("/listeVol.jsp?header=headerClient.jsp");
            }
            List<VolDAOCpl> listeVols = (List<VolDAOCpl>)VolDAOCpl.getAllVolsAvecPrix(con);
            mv.AddOject("listeVols", listeVols); 
        } catch (Exception e) {
            e.printStackTrace();
        }
        return mv;
    }
    @Get(url = "/insertVol")
    @MethodGet
    @Auth(role = {"admin"})
    public ModelAndView volInsert(){
        ModelAndView mv = null;
        try (Connection con = Connexion.getConn()){      
            String role = (String)session.search("role");

            if (role.compareToIgnoreCase("admin")==0) {
                mv = new ModelAndView("/volFormulaire.jsp?body=listeVol.jsp&header=headerAdmin.jsp");
            }
            else{
                mv = new ModelAndView("/volFormulaire.jsp?body=listeVol.jsp&header=headerClient.jsp");
            }
            List<Avion> listeAvion = Avion.getAll(con);
            List<Ville> listeVille = Ville.getAll(con);
            List<VolDAOCpl> listeVols = (List<VolDAOCpl>)VolDAOCpl.getAllVolsAvecPrix(con);
            mv.AddOject("listeVols", listeVols);
            mv.AddOject("listeAvion", listeAvion);
            mv.AddOject("listeVille", listeVille);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return mv;
    }


    @Get(url = "/validerInsertVol")
    @MethodGet
    @Auth(role = {"admin"})
    public ModelAndView valderInsert(@Arg(message = "vol") VolDAO vol){
        ModelAndView mv = null;      
        try ( Connection con =Connexion.getConn()){
            String role = (String)session.search("role");
            int idVol = vol.insertVol(con);
            if (role.compareToIgnoreCase("admin")==0) {
                mv = new ModelAndView("/prixVolInsert.jsp");
            }
            else{
                mv = new ModelAndView("/prixVolInsert.jsp");
            }
            VolDAO vol1 = (VolDAO)VolDAO.getVolById(con, idVol);
            List<TypeSiegeDAO> listeAvion = TypeSiegeDAO.getTypeSiegeByIdAvion(con,vol1.getIdAvion());
            mv.AddOject("vol", vol1);
            mv.AddOject("listeSiege",listeAvion);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return mv;
    }

    @Get(url = "/validerInsertVolPrix")
    @MethodGet
    @Auth(role = {"admin"})
    public ModelAndView valderInsertPrix(@Arg(message = "px") LiaisonSiegeVolDAO vol){
        ModelAndView mv = null;
        try (Connection con = Connexion.getConn()){
                 
            String role = (String)session.search("role");
            int idVol = vol.insertLiaisonSiegeVol(con);
            if (role.compareToIgnoreCase("admin")==0) {
                mv = new ModelAndView("/volFormulaire.jsp?body=listeVol.jsp&header=headerAdmin.jsp");
            }
            else{
                 mv = new ModelAndView("/volFormulaire.jsp?body=listeVol.jsp&header=headerClient.jsp");
            }
            List<Avion> listeAvion = Avion.getAll(con);
            List<Ville> listeVille = Ville.getAll(con);
            List<VolDAOCpl> listeVols = (List<VolDAOCpl>)VolDAOCpl.getAllVolsAvecPrix(con);
            mv.AddOject("listeVols", listeVols);
            mv.AddOject("listeAvion", listeAvion);
            mv.AddOject("listeVille", listeVille);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return mv;
    }
}
