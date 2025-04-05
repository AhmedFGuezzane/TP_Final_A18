<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Create Etudiant</title>

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

        /* Form Styling */
        form {
            display: flex;
            flex-direction: column;
            gap: 20px;
        }

        label {
            font-size: 14px;
            color: #333;
            margin-bottom: 8px;
            font-weight: bold;
            display: block;
        }

        input[type="text"] {
            padding: 12px;
            font-size: 14px;
            border-radius: 4px;
            border: 1px solid #ccc;
            transition: border-color 0.3s;
            width: 90%; /* Set width of the input to 90% */
            margin: 0 auto; /* Center align the input */
            display: block;
        }

        input[type="text"]:focus {
            border-color: #3e5c7b;
            outline: none;
        }

        button {
            padding: 12px;
            font-size: 16px;
            color: #fff;
            background-color: #3e5c7b;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            transition: background-color 0.3s;
            width: 90%; /* Set width of the button to 90% */
            margin: 0 auto; /* Center align the button */
            display: block;
        }

        button:hover {
            background-color: #2c4763;
        }

        /* Additional Styling for Responsive Layout */
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

            input[type="text"] {
                padding: 10px;
            }

            button {
                font-size: 14px;
            }
        }
    </style>
</head>

<body>

<!-- Main Container -->
<div class="container">
    <div class="header">
        <h1>Create New Etudiant</h1>
        <p>Fill in the details to create a new Etudiant</p>
    </div>

    <!-- Form Section -->
    <form action="etudiants" method="post">
        <input type="hidden" name="action" value="create"> <!-- to inform the servlet that it's a create operation -->

        <div class="form-group">
            <label for="nom">Nom</label>
            <input type="text" id="nom" name="nom" required placeholder="Enter the student's last name">
        </div>

        <div class="form-group">
            <label for="prenom">Prenom</label>
            <input type="text" id="prenom" name="prenom" required placeholder="Enter the student's first name">
        </div>

        <div class="form-group">
            <label for="specialite">Specialite</label>
            <input type="text" id="specialite" name="specialite" required placeholder="Enter the student's specialty">
        </div>

        <button type="submit">Create Etudiant</button>
    </form>
</div>

</body>
</html>
