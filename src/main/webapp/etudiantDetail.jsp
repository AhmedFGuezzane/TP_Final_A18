<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Etudiant Details</title>

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
            max-width: 500px;
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

        /* Etudiant Details Table */
        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
        }

        th, td {
            padding: 12px;
            text-align: left;
            border: 1px solid #ddd;
        }

        th {
            background-color: #f8f8f8;
            font-weight: bold;
        }

        /* Action Buttons Styling */
        .action-buttons {
            text-align: center;
            margin-top: 20px;
        }

        .action-buttons a {
            text-decoration: none;
            padding: 10px 20px;
            font-size: 14px;
            border-radius: 4px;
            transition: background-color 0.3s ease, color 0.3s ease;
            margin: 0 10px;
        }

        .action-buttons .back {
            background-color: #007bff;
            color: #fff;
        }

        .action-buttons .back:hover {
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
        <h1>Etudiant Details</h1>
        <p>Detailed information of the selected Etudiant</p>
    </div>

    <!-- Etudiant Details -->
    <table>
        <tr>
            <th>ID</th>
            <td>${etudiant.id}</td>
        </tr>
        <tr>
            <th>Nom</th>
            <td>${etudiant.nom}</td>
        </tr>
        <tr>
            <th>Prénom</th>
            <td>${etudiant.prenom}</td>
        </tr>
        <tr>
            <th>Spécialité</th>
            <td>${etudiant.specialite}</td>
        </tr>
    </table>

    <!-- Action Buttons -->
    <div class="action-buttons">
        <a href="etudiants?action=getAll" class="back">Back to List</a>
        <a href="etudiants?action=update&id=${etudiant.id}" class="update">Update</a>
        <a href="etudiants?action=delete&id=${etudiant.id}" class="delete" onclick="return confirm('Are you sure you want to delete this Etudiant?')">Delete</a>
    </div>
</div>

</body>

</html>
