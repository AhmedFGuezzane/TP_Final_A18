<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Etudiant Management</title>

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

        /* Buttons Container */
        .options {
            text-align: center;
            margin-bottom: 30px;
        }

        .options a {
            display: inline-block;
            padding: 12px 20px;
            background-color: #007bff;
            color: white;
            text-decoration: none;
            font-size: 16px;
            border-radius: 5px;
            margin: 10px;
            transition: background-color 0.3s ease;
        }

        .options a:hover {
            background-color: #0056b3;
        }

        .options .create-btn {
            background-color: #28a745;
        }

        .options .create-btn:hover {
            background-color: #218838;
        }

        .options .find-btn {
            background-color: #17a2b8;
        }

        .options .find-btn:hover {
            background-color: #117a8b;
        }

        .options .update-btn {
            background-color: #ffc107;
        }

        .options .update-btn:hover {
            background-color: #e0a800;
        }

        .options .delete-btn {
            background-color: #dc3545;
        }

        .options .delete-btn:hover {
            background-color: #c82333;
        }

        /* Search Bar Styling */
        .search-bar {
            margin-top: 20px;
            text-align: center;
        }

        .search-bar input[type="text"] {
            padding: 10px;
            width: 80%;
            font-size: 16px;
            margin-right: 10px;
            border-radius: 5px;
            border: 1px solid #ccc;
        }

        .search-bar button {
            padding: 10px 20px;
            background-color: #17a2b8;
            color: white;
            border: none;
            border-radius: 5px;
            font-size: 16px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        .search-bar button:hover {
            background-color: #117a8b;
        }

        /* Content Section Styling */
        .content h3 {
            color: #333;
            font-size: 24px;
            margin-bottom: 20px;
        }

        .content p {
            font-size: 1.1em;
            color: #555;
            line-height: 1.6;
        }

        .content ul {
            list-style-type: none;
            padding-left: 0;
        }

        .content ul li {
            font-size: 1.1em;
            color: #555;
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

            .options a {
                font-size: 14px;
                padding: 10px 15px;
            }

            .search-bar input[type="text"], .search-bar button {
                width: 70%;
                font-size: 14px;
            }
        }
    </style>
</head>

<body>

<!-- Main Container -->
<div class="container">
    <div class="header">
        <h1>Etudiant Management</h1>
        <p class="lead">Manage your Etudiants with ease</p>
    </div>

    <!-- Options Section -->
    <div class="options">
        <a href="etudiants?action=getAll" class="btn list-btn">List All Etudiants</a>
        <a href="etudiantCreate.jsp" class="btn create-btn">Create New Etudiant</a>
    </div>

    <!-- Search Bar Section -->
    <div class="search-bar">
        <form action="etudiants" method="get">
            <input type="hidden" name="action" value="getById">
            <input type="text" name="id" placeholder="Enter Etudiant ID" required>
            <button type="submit">Find Etudiant</button>
        </form>
    </div>

    <!-- Content Section (Description of the project) -->
    <div class="content">
        <h3>Project Overview - A18 - 2</h3>
        <p>
            Welcome to the Etudiant Management system! This project is designed to help manage a list of students (Etudiants) with various functionalities such as:
        </p>
        <ul>
            <li>Viewing all Etudiants</li>
            <li>Finding an Etudiant by ID</li>
            <li>Creating new Etudiants</li>
            <li>Updating existing Etudiants</li>
            <li>Deleting Etudiants</li>
        </ul>
        <p>
            The application provides a simple and intuitive interface to handle these operations, allowing administrators to manage student records effectively.
        </p>
        <p>
            The system is built using Java, the Jakarta Servlet API, and the JSP technology to create a seamless user experience. Feel free to explore the different options above to interact with the system.
        </p>
    </div>
</div>

</body>

</html>
