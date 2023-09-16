<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Thanh Cong</title>
    <style>
        body {
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            background-color: #f2f2f2;
        }

        .notification {
            width: 300px;
            padding: 20px;
            background-color: #fff;
            box-shadow: 0 2px 6px rgba(0, 0, 0, 0.2);
            text-align: center;
            opacity: 0;
            transform: translateY(-20px);
            transition: opacity 0.3s ease-in, transform 0.3s ease-in;
        }

        .notification.show {
            opacity: 1;
            transform: translateY(0);
        }

        .notification-icon {
            font-size: 48px;
            color: #4caf50;
        }

        .notification-title {
            margin-top: 10px;
            font-size: 24px;
            font-weight: bold;
            color: #333;
        }

        .notification-message {
            margin-top: 10px;
            font-size: 16px;
            color: #777;
        }
    </style>
</head>
<body>
<div class="notification">
    <i class="notification-icon fas fa-check-circle"></i>
    <h2 class="notification-title">Them Thanh Cong</h2>
    <p class="notification-message">Completed.</p>
</div>

<script>
    document.addEventListener('DOMContentLoaded', function() {
        const notification = document.querySelector('.notification');
        notification.classList.add('show');
    });
</script>
</body>
</html>