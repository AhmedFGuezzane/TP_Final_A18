package a18.tp_final_a18.DL;

import a18.tp_final_a18.BLL.Model.Etudiant;

import java.util.ArrayList;
import java.util.List;

public class EtudiantList {

    private static EtudiantList instance;

    private List<Etudiant> etudiants;
    private static int idCounter = 1; // Static counter to generate unique IDs for each Etudiant

    // Private constructor to initialize the list with 10 Etudiants, each with a unique ID
    private EtudiantList() {
        etudiants = new ArrayList<>();

        // Adding Etudiant objects with unique IDs
        etudiants.add(new Etudiant(idCounter++, "Dupont", "Jean", "Informatique"));
        etudiants.add(new Etudiant(idCounter++, "Durand", "Marie", "Mathematics"));
        etudiants.add(new Etudiant(idCounter++, "Lemoine", "Paul", "Physics"));
        etudiants.add(new Etudiant(idCounter++, "Petit", "Lucie", "Biology"));
        etudiants.add(new Etudiant(idCounter++, "Martin", "Emilie", "Chemistry"));
        etudiants.add(new Etudiant(idCounter++, "Bernard", "Marc", "Economics"));
        etudiants.add(new Etudiant(idCounter++, "Moreau", "Sophie", "Architecture"));
        etudiants.add(new Etudiant(idCounter++, "Lefevre", "Pierre", "Medicine"));
        etudiants.add(new Etudiant(idCounter++, "Roux", "Chloé", "Law"));
        etudiants.add(new Etudiant(idCounter++, "Vidal", "David", "Philosophy"));
    }

    // Singleton pattern to get the single instance of EtudiantList
    public static EtudiantList getInstance() {
        if (instance == null) {
            synchronized (EtudiantList.class) {
                if (instance == null) {
                    instance = new EtudiantList();
                }
            }
        }
        return instance;
    }

    // Getter for the list of Etudiants
    public List<Etudiant> getEtudiants() {
        return etudiants;
    }

    // Setter for the list of Etudiants
    public void setEtudiants(List<Etudiant> etudiants) {
        this.etudiants = etudiants;
    }
}
