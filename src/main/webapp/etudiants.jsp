<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Etudiant List</title>

    <style>
        /* General Body and Layout */
        body {
            font-family: 'Arial', sans-serif;
            background-color: #f1f1f1;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        .container {
            background-color: #ffffff;
            padding: 40px;
            border-radius: 8px;
            box-shadow: 0 8px 16px rgba(0, 0, 0, 0.1);
            width: 100%;
            max-width: 800px;
            margin: 20px;
        }

        .header {
            text-align: center;
            margin-bottom: 30px;
        }

        .header h1 {
            color: #3e5c7b;
            font-size: 28px;
            margin-bottom: 10px;
        }

        .header p {
            color: #777;
            font-size: 16px;
        }

        /* Table Styling */
        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
        }

        th, td {
            padding: 12px;
            text-align: center;
            border: 1px solid #ddd;
        }

        th {
            background-color: #f8f8f8;
            font-weight: bold;
        }

        td {
            color: #555;
        }

        /* Action Buttons Styling */
        .action-buttons a {
            text-decoration: none;
            padding: 10px 20px;
            font-size: 14px;
            border-radius: 4px;
            transition: background-color 0.3s ease, color 0.3s ease;
            margin: 5px;
        }

        .action-buttons .view {
            background-color: #007bff;
            color: #fff;
        }

        .action-buttons .view:hover {
            background-color: #0056b3;
        }

        .action-buttons .update {
            background-color: #ffc107;
            color: #fff;
        }

        .action-buttons .update:hover {
            background-color: #e0a800;
        }

        .action-buttons .delete {
            background-color: #dc3545;
            color: #fff;
        }

        .action-buttons .delete:hover {
            background-color: #c82333;
        }

        /* Create Button Styling */
        .create-btn {
            display: inline-block;
            padding: 12px 20px;
            background-color: #28a745;
            color: white;
            text-decoration: none;
            font-size: 16px;
            border-radius: 5px;
            margin-bottom: 20px;
            text-align: center;
            transition: background-color 0.3s ease;
        }

        .create-btn:hover {
            background-color: #218838;
        }

        /* Responsive Design */
        @media (max-width: 600px) {
            .container {
                padding: 20px;
            }

            .header h1 {
                font-size: 24px;
            }

            .header p {
                font-size: 14px;
            }

            th, td {
                padding: 10px;
            }
        }
    </style>
</head>

<body>

<!-- Main Container -->
<div class="container">
    <div class="header">
        <h1>List of Etudiants</h1>
        <p>Manage your Etudiants with ease</p>
    </div>

    <!-- Create New Etudiant Button -->
    <a href="etudiantCreate.jsp" class="create-btn">Create New Etudiant</a>

    <!-- Etudiants Table -->
    <table>
        <thead>
        <tr>
            <th>ID</th>
            <th>Nom</th>
            <th>Prenom</th>
            <th>Specialite</th>
            <th>Actions</th>
        </tr>
        </thead>
        <tbody>
        <!-- Loop through the list of Etudiants -->
        <c:forEach var="etudiant" items="${etudiants}">
            <tr>
                <td>${etudiant.id}</td>
                <td>${etudiant.nom}</td>
                <td>${etudiant.prenom}</td>
                <td>${etudiant.specialite}</td>
                <td class="action-buttons">
                    <!-- Action Buttons -->
                    <a href="etudiants?action=getById&id=${etudiant.id}" class="view">Details</a>
                    <a href="etudiants?action=update&id=${etudiant.id}" class="update">Update</a>
                    <a href="etudiants?action=delete&id=${etudiant.id}" class="delete" onclick="return confirm('Are you sure you want to delete this Etudiant?')">Delete</a>
                </td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
</div>

</body>

</html>
