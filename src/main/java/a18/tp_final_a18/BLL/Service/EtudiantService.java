package a18.tp_final_a18.BLL.Service;

import a18.tp_final_a18.BLL.Model.Etudiant;
import a18.tp_final_a18.DAL.EtudiantDAO.IEtudiantDAO;
import java.util.List;

public class EtudiantService {

    private final IEtudiantDAO etudiantDAO;

    public EtudiantService(IEtudiantDAO etudiantDAO) {
        this.etudiantDAO = etudiantDAO;
    }

    public void createEtudiant(Etudiant etudiant) {
        try {
            if (etudiant == null) {
                throw new IllegalArgumentException("Etudiant cannot be null");
            }
            etudiantDAO.create(etudiant);
            System.out.println("Etudiant created successfully: " + etudiant);
        } catch (Exception e) {
            System.err.println("Error in creating Etudiant: " + e.getMessage());
        }
    }

    public Etudiant getEtudiantById(int id) {
        try {
            Etudiant etudiant = etudiantDAO.read(id);
            if (etudiant == null) {
                System.err.println("No Etudiant found with ID: " + id);
            }
            return etudiant;
        } catch (Exception e) {
            System.err.println("Error in getting Etudiant: " + e.getMessage());
            return null;
        }
    }

    public void updateEtudiant(Etudiant etudiant) {
        try {
            if (etudiant == null) {
                throw new IllegalArgumentException("Etudiant cannot be null");
            }
            etudiantDAO.update(etudiant);
            System.out.println("Etudiant updated successfully: " + etudiant);
        } catch (Exception e) {
            System.err.println("Error in updating Etudiant: " + e.getMessage());
        }
    }

    public void deleteEtudiant(int id) {
        try {
            etudiantDAO.delete(id);
            System.out.println("Etudiant deleted successfully with ID: " + id);
        } catch (Exception e) {
            System.err.println("Error in deleting Etudiant: " + e.getMessage());
        }
    }

    public List<Etudiant> getAllEtudiants() {
        try {
            List<Etudiant> etudiants = etudiantDAO.getAll();
            if (etudiants.isEmpty()) {
                System.out.println("No Etudiants found");
            }
            return etudiants;
        } catch (Exception e) {
            System.err.println("Error in getting all Etudiants: " + e.getMessage());
            return null;
        }
    }
}
