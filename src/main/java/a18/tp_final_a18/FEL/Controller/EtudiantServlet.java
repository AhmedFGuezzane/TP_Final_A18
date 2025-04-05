package a18.tp_final_a18.FEL.Controller;

import a18.tp_final_a18.BLL.Model.Etudiant;
import a18.tp_final_a18.BLL.Service.EtudiantService;
import a18.tp_final_a18.DAL.EtudiantDAO.IEtudiantDAO;
import a18.tp_final_a18.DAL.EtudiantDAO.EtudiantDAO_InMemory;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import java.io.IOException;
import java.util.List;

public class EtudiantServlet extends HttpServlet {

    private EtudiantService etudiantService;

    // Initialize the servlet
    @Override
    public void init() throws ServletException {
        super.init();
        // Initialize the DAO and the service
        IEtudiantDAO etudiantDAO = new EtudiantDAO_InMemory();  // You can inject other types of DAO here if needed
        this.etudiantService = new EtudiantService(etudiantDAO);
    }

    // Handle GET requests (fetch etudiants)
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        if ("getAll".equals(action)) {
            // Get all Etudiants
            List<Etudiant> etudiants = etudiantService.getAllEtudiants();

            System.out.println("Retrieved Etudiants: " + etudiants);

            request.setAttribute("etudiants", etudiants);
            request.getRequestDispatcher("/etudiants.jsp").forward(request, response);  // You can show a JSP page here
        } else if ("getById".equals(action)) {
            // Get Etudiant by ID
            int id = Integer.parseInt(request.getParameter("id"));
            Etudiant etudiant = etudiantService.getEtudiantById(id);
            request.setAttribute("etudiant", etudiant);
            request.getRequestDispatcher("/etudiantDetail.jsp").forward(request, response);  // Show a specific Etudiant
        }
    }

    // Handle POST requests (create a new etudiant)
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String nom = request.getParameter("nom");
        String prenom = request.getParameter("prenom");
        String specialite = request.getParameter("specialite");

        Etudiant newEtudiant = new Etudiant(nom, prenom, specialite);
        etudiantService.createEtudiant(newEtudiant);

        response.sendRedirect("etudiants?action=getAll");  // Redirect to the list of Etudiants
    }

    // Handle PUT requests (update an existing etudiant)
    @Override
    protected void doPut(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // You may need to parse the request body and extract the parameters for the update
        int id = Integer.parseInt(request.getParameter("id"));
        String nom = request.getParameter("nom");
        String prenom = request.getParameter("prenom");
        String specialite = request.getParameter("specialite");

        Etudiant etudiantToUpdate = new Etudiant(id, nom, prenom, specialite);
        etudiantService.updateEtudiant(etudiantToUpdate);

        response.sendRedirect("etudiants?action=getAll");  // Redirect to the list of Etudiants
    }

    // Handle DELETE requests (delete an etudiant by ID)
    @Override
    protected void doDelete(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        etudiantService.deleteEtudiant(id);

        response.sendRedirect("etudiants?action=getAll");  // Redirect to the list of Etudiants
    }
}
