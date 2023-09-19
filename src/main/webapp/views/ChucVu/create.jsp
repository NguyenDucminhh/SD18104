<!DOCTYPE html>
<html>
<head>
    <style>
        /* CSS cho hiệu ứng chuyển động */
        .form-container {
            width: 400px;
            margin: 0 auto;
            padding: 20px;
            border: 1px solid #ccc;
            border-radius: 5px;
            transition: transform 0.3s ease-in-out;
        }

        .form-container:hover {
            transform: scale(1.05);
        }

        .form-container input[type="text"],
        .form-container input[type="submit"] {
            width: 100%;
            padding: 10px;
            margin-bottom: 10px;
            border-radius: 5px;
            border: 1px solid #ccc;
        }

        .form-container input[type="submit"] {
            background-color: #4CAF50;
            color: white;
            cursor: pointer;
        }

        .form-container input[type="submit"]:hover {
            background-color: #45a049;
        }
    </style>
</head>
<body>
<div class="form-container">
    <h2>Add position information</h2>
    <form action="\chuc-vu\store" method="post">
        <label for="ma">ID:</label>
        <input type="text" id="ma" name="ma" required>

        <label for="ten">Name:</label>
        <input type="text" id="ten" name="ten">

        <input type="submit" value="Add">
    </form>
</div>
</body>
</html>