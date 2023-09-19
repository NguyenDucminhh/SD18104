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
        .form-container input[type="date"],
        .form-container input[type="password"],
        .form-container input[type="submit"],
        .form-container select {
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
    <h2>Add employee information</h2>
    <form id="create-form" action="\nhan-vien\store" method="post">
        <label for="ma">ID:</label>
        <input type="text" id="ma" name="ma" required>

        <label for="ten">Name:</label>
        <input type="text" id="ten" name="ten">

        <label for="tenDem">Last Name:</label>
        <input type="text" id="tenDem" name="tenDem">

        <label for="ho">First Name:</label>
        <input type="text" id="ho" name="ho">

        <label for="gioiTinh">Gender:</label>
        <select id="gioiTinh" name="gioiTinh">
            <option value="Nam">Nam</option>
            <option value="Nữ">Nu</option>
            <option value="Khác">Other</option>
        </select>

        <label for="ngaySinh">BirthDay</label>
        <input type="date" id="ngaySinh" name="ngaySinh">

        <label for="diaChi">Address:</label>
        <input type="text" id="diaChi" name="diaChi">

        <label for="sdt">Phone Number:</label>
        <input type="text" id="sdt" name="sdt">

        <label for="matKhau">Password:</label>
        <input type="password" id="matKhau" name="matKhau">

        <label for="idCH">ID Store:</label>
        <input type="text" id="idCH" name="idCH">

        <label for="idCV">ID Position:</label>
        <input type="text" id="idCV" name="idCV">

        <label for="idGuiBC">ID Send report:</label>
        <input type="text" id="idGuiBC" name="idGuiBC">

        <input type="submit" value="Add">
    </form>


</div>
</body>
</html>