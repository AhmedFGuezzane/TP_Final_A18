package a18.tp_final_a18.BLL.Model;

public class Etudiant {
    private int id; // Unique identifier for Etudiant
    private String nom;
    private String prenom;
    private String specialite;

    // Default constructor (Empty constructor)
    public Etudiant() {
    }

    // Constructor without ID (used when we don't provide an ID)
    public Etudiant(String nom, String prenom, String specialite) {
        this.nom = nom;
        this.prenom = prenom;
        this.specialite = specialite;
    }

    // Full constructor (with ID)
    public Etudiant(int id, String nom, String prenom, String specialite) {
        this.id = id;
        this.nom = nom;
        this.prenom = prenom;
        this.specialite = specialite;
    }

    // Getters and Setters
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getNom() {
        return nom;
    }

    public void setNom(String nom) {
        this.nom = nom;
    }

    public String getPrenom() {
        return prenom;
    }

    public void setPrenom(String prenom) {
        this.prenom = prenom;
    }

    public String getSpecialite() {
        return specialite;
    }

    public void setSpecialite(String specialite) {
        this.specialite = specialite;
    }

    // toString using String.format for string interpolation
    @Override
    public String toString() {
        return String.format("Etudiant{id=%d, nom='%s', prenom='%s', specialite='%s'}", id, nom, prenom, specialite);
    }
}
