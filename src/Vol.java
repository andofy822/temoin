package action;
import java.sql.*;
import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.List;
import utilitaire.*;
import materielle.*;
public class Vol {
    private int id;
    private Avion avion;
    private Ville villeDepart;
    private Ville villeArrive;
    private LocalDateTime dateDepart;
    private LocalDateTime dateArrive;
    private int dure; // en secondes
    private double prix;
    private int statut; // 1: créé, 0: annulé

    // Constructeur par défaut
    public Vol() {
    }

    // Constructeur avec paramètres
    public Vol(int id, Avion avion, Ville villeDepart, Ville villeArrive, LocalDateTime dateDepart, LocalDateTime dateArrive, int dure, double prix, int statut) {
        this.id = id;
        this.avion = avion;
        this.villeDepart = villeDepart;
        this.villeArrive = villeArrive;
        this.dateDepart = dateDepart;
        this.dateArrive = dateArrive;
        this.dure = dure;
        this.prix = prix;
        this.statut = statut;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public Avion getAvion() {
        return avion;
    }

    public void setAvion(Avion avion) {
        this.avion = avion;
    }

    public Ville getVilleDepart() {
        return villeDepart;
    }

    public void setVilleDepart(Ville villeDepart) {
        this.villeDepart = villeDepart;
    }

    public Ville getVilleArrive() {
        return villeArrive;
    }

    public void setVilleArrive(Ville villeArrive) {
        this.villeArrive = villeArrive;
    }

    public LocalDateTime getDateDepart() {
        return dateDepart;
    }

    public void setDateDepart(LocalDateTime dateDepart) {
        this.dateDepart = dateDepart;
    }

    public LocalDateTime getDateArrive() {
        return dateArrive;
    }

    public void setDateArrive(LocalDateTime dateArrive) {
        this.dateArrive = dateArrive;
    }

    public int getDure() {
        return dure;
    }

    public void setDure(int dure) {
        this.dure = dure;
    }

    public double getPrix() {
        return prix;
    }

    public void setPrix(double prix) {
        this.prix = prix;
    }

    public int getStatut() {
        return statut;
    }

    public void setStatut(int statut) {
        this.statut = statut;
    }
    
}
