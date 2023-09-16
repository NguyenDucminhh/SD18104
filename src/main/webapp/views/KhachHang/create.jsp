<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>KhachHang</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
    <style>
        .container {
            max-width: 500px;
            margin: 0 auto;
            padding: 20px;
            border: 1px solid #ccc;
            border-radius: 5px;
            animation-duration: 1s;
            animation-name: slideInUp;
            transform: translateY(20px);
            transition: opacity 0.5s ease-out, transform 0.5s ease-out;
        }
        .container.show {
            opacity: 1;
            transform: translateY(0);
        }
        .form-group {
            margin-bottom: 20px;
        }

        .btn-submit {
            background-color: #007bff;
            color: #fff;
        }

        @keyframes slideInUp {
            from {
                transform: translateY(100%);
                opacity: 0;
            }
            to {
                transform: translateY(0%);
                opacity: 1;
            }
        }

    </style>
</head>
<body>
<div class="container animate_animated animate_fadeIn">
    <h1 class="mb-4">Add new User</h1>
    <form id="customer-form" method="post" action="/khach-hang/store">
        <div class="form-group">
            <label for="ma">ID User</label>
            <input type="text" class="form-control" id="ma" name="ma" required >
        </div>
        <div class="form-group">
            <label for="ten">User Name</label>
            <input type="text" class="form-control" id="ten" name="ten" >
        </div>
        <div class="form-group">
            <label for="tendem">Middle name</label>
            <input type="text" class="form-control" id="tendem" name="tendem">
        </div>
        <div class="form-group">
            <label for="ho">First Name</label>
            <input type="text" class="form-control" id="ho" name="ho">
        </div>
        <div class="form-group">
            <label for="ngaysinh">Date</label>
            <input type="date" class="form-control" id="ngaysinh" name="ngaysinh">
        </div>
        <div class="form-group">
            <label for="sdt">PhoneNumber</label>
            <input type="text" class="form-control" id="sdt" name="sdt">
        </div>
        <div class="form-group">
            <label for="diachi">Address</label>
            <input type="text" class="form-control" id="diachi" name="diachi">
        </div>
        <div class="form-group">
            <label for="thanhpho">City</label>
            <input type="text" class="form-control" id="thanhpho" name="thanhpho">
        </div>
        <div class="form-group">
            <label for="quocgia">Location</label>
            <input type="text" class="form-control" id="quocgia" name="quocgia">
        </div>
        <div class="form-group">
            <label for="matkhau">Password</label>
            <input type="password" class="form-control" id="matkhau" name="matkhau" >
        </div>
        <button type="submit" class="btn btn-submit">New</button>
    </form>
</div>
<script>
    document.addEventListener('DOMContentLoaded', function() {
        const container = document.querySelector('.container');
        container.classList.add('show');
    });
</script>
</body>
</html>