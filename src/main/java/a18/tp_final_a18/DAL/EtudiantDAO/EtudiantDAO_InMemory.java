package a18.tp_final_a18.DAL.EtudiantDAO;

import a18.tp_final_a18.BLL.Model.Etudiant;

import java.util.ArrayList;
import java.util.List;

public class EtudiantDAO_InMemory implements IEtudiantDAO {

    private List<Etudiant> etudiants;

    // Constructor initializing the list of Etudiants
    public EtudiantDAO_InMemory() {
        this.etudiants = new ArrayList<>();

        // Adding 10 genuine Etudiants with unique ID, Name, First Name, and Specialty
        etudiants.add(new Etudiant(1, "Dupont", "Jean", "Informatique"));
        etudiants.add(new Etudiant(2, "Durand", "Marie", "Mathematics"));
        etudiants.add(new Etudiant(3, "Lemoine", "Paul", "Physics"));
        etudiants.add(new Etudiant(4, "Petit", "Lucie", "Biology"));
        etudiants.add(new Etudiant(5, "Martin", "Emilie", "Chemistry"));
        etudiants.add(new Etudiant(6, "Bernard", "Marc", "Economics"));
        etudiants.add(new Etudiant(7, "Moreau", "Sophie", "Architecture"));
        etudiants.add(new Etudiant(8, "Lefevre", "Pierre", "Medicine"));
        etudiants.add(new Etudiant(9, "Roux", "Chloé", "Law"));
        etudiants.add(new Etudiant(10, "Vidal", "David", "Philosophy"));
    }

    @Override
    public void create(Etudiant etudiant) {
        try {
            if (etudiant == null) {
                throw new IllegalArgumentException("Etudiant cannot be null");
            }
            etudiants.add(etudiant);
            System.out.println("Etudiant created: " + etudiant);
        } catch (Exception e) {
            System.err.println("Error while creating Etudiant: " + e.getMessage());
            e.printStackTrace();
        }
    }

    @Override
    public Etudiant read(int id) {
        try {
            for (Etudiant etudiant : etudiants) {
                if (etudiant.getId() == id) {
                    return etudiant;
                }
            }
            throw new IllegalArgumentException("Etudiant with ID " + id + " not found");
        } catch (Exception e) {
            System.err.println("Error while reading Etudiant: " + e.getMessage());
            e.printStackTrace();
            return null;
        }
    }

    @Override
    public void update(Etudiant etudiant) {
        try {
            if (etudiant == null) {
                throw new IllegalArgumentException("Etudiant cannot be null");
            }
            for (int i = 0; i < etudiants.size(); i++) {
                if (etudiants.get(i).getId() == etudiant.getId()) {
                    etudiants.set(i, etudiant);
                    System.out.println("Etudiant updated: " + etudiant);
                    return;
                }
            }
            throw new IllegalArgumentException("Etudiant with ID " + etudiant.getId() + " not found");
        } catch (Exception e) {
            System.err.println("Error while updating Etudiant: " + e.getMessage());
            e.printStackTrace();
        }
    }

    @Override
    public void delete(int id) {
        try {
            Etudiant etudiantToDelete = null;
            for (Etudiant etudiant : etudiants) {
                if (etudiant.getId() == id) {
                    etudiantToDelete = etudiant;
                    break;
                }
            }

            if (etudiantToDelete == null) {
                throw new IllegalArgumentException("Etudiant with ID " + id + " not found");
            }

            etudiants.remove(etudiantToDelete);
            System.out.println("Etudiant deleted: " + etudiantToDelete);
        } catch (Exception e) {
            System.err.println("Error while deleting Etudiant: " + e.getMessage());
            e.printStackTrace();
        }
    }

    @Override
    public List<Etudiant> getAll() {
        try {
            return new ArrayList<>(etudiants); // Returning a copy of the list
        } catch (Exception e) {
            System.err.println("Error while retrieving all Etudiants: " + e.getMessage());
            e.printStackTrace();
            return new ArrayList<>();
        }
    }
}
