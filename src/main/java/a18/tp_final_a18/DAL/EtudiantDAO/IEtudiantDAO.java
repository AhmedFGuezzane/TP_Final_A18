package a18.tp_final_a18.DAL.EtudiantDAO;

import a18.tp_final_a18.BLL.Model.Etudiant;
import java.util.List;

public interface IEtudiantDAO {

    // Create a new Etudiant
    void create(Etudiant etudiant);

    // Read an Etudiant by ID
    Etudiant read(int id);

    // Update an existing Etudiant
    void update(Etudiant etudiant);

    // Delete an Etudiant by ID
    void delete(int id);

    // Get all Etudiants
    List<Etudiant> getAll();
}