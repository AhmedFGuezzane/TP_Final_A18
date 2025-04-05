package a18.tp_final_a18.FEL.View;

import a18.tp_final_a18.BLL.Model.Etudiant;
import a18.tp_final_a18.BLL.Service.EtudiantService;
import a18.tp_final_a18.DAL.EtudiantDAO.EtudiantDAO_InMemory;
import a18.tp_final_a18.DAL.EtudiantDAO.IEtudiantDAO;

public class Main {

    public static void main(String[] args) {
        // Initialize DAO and Service
        IEtudiantDAO etudiantDAO = new EtudiantDAO_InMemory();
        EtudiantService etudiantService = new EtudiantService(etudiantDAO);

        // Test: Create new Etudiants
        Etudiant etudiant1 = new Etudiant("Dupont", "Jean", "Informatique");
        Etudiant etudiant2 = new Etudiant("Durand", "Marie", "Mathematics");

        etudiantService.createEtudiant(etudiant1);
        etudiantService.createEtudiant(etudiant2);

        // Test: Get all Etudiants
        System.out.println("\nAll Etudiants:");
        etudiantService.getAllEtudiants().forEach(etudiant ->
                System.out.println(etudiant.getId() + ": " + etudiant.getNom() + " " + etudiant.getPrenom() + " - " + etudiant.getSpecialite())
        );

        // Test: Get Etudiant by ID
        System.out.println("\nFetching Etudiant with ID 1:");
        Etudiant fetchedEtudiant = etudiantService.getEtudiantById(1);
        System.out.println(fetchedEtudiant != null ? fetchedEtudiant.getNom() + " " + fetchedEtudiant.getPrenom() : "Etudiant not found");

        // Test: Update an Etudiant
        System.out.println("\nUpdating Etudiant with ID 1...");
        etudiant1.setNom("Jean-Paul");
        etudiant1.setSpecialite("Artificial Intelligence");
        etudiantService.updateEtudiant(etudiant1);
        System.out.println("Updated Etudiant: " + etudiantService.getEtudiantById(1).getNom() + " - " + etudiantService.getEtudiantById(1).getSpecialite());

        // Test: Delete an Etudiant
        System.out.println("\nDeleting Etudiant with ID 2...");
        etudiantService.deleteEtudiant(2);
        System.out.println("Etudiants after deletion:");
        etudiantService.getAllEtudiants().forEach(etudiant ->
                System.out.println(etudiant.getId() + ": " + etudiant.getNom())
        );

        // Test: Try to fetch deleted Etudiant
        System.out.println("\nFetching deleted Etudiant with ID 2:");
        Etudiant deletedEtudiant = etudiantService.getEtudiantById(2);
        System.out.println(deletedEtudiant != null ? deletedEtudiant.getNom() : "Etudiant not found");
    }
}
