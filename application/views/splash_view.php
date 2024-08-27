<!DOCTYPE html>
<html lang="id">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Sistem Informasi Manajemen Surat Desa Pekuncen</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f4f4f4;
        }
        .header {
            background-color: #53c2b1;
            color: white;
            padding: 20px;
            text-align: center;
        }
        .container {
            display: flex;
            justify-content: center;
            align-items: center;
            height: 80vh;
        }
        .content {
            text-align: center;
            background: white;
            padding: 40px;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }
        .content h1 {
            margin-bottom: 20px;
            color: #333;
        }
        .content p {
            margin-bottom: 30px;
            color: #555;
        }
        .login-btn {
            background-color: #53c2b1;
            color: white;
            padding: 15px 25px;
            text-decoration: none;
            border-radius: 5px;
            font-size: 18px;
            transition: background-color 0.3s ease;
        }
        .login-btn:hover {
            background-color: #45a049;
        }
        .footer {
            text-align: center;
            padding: 10px;
            background-color: #f4f4f4;
            color: grey;
            position: fixed;
            bottom: 0;
            width: 100%;
        }
    </style>
</head>
<body>
    <div class="header">
        <h1>Sistem Informasi Manajemen Surat Desa Pekuncen</h1>
        <p>Selamat datang di portal manajemen surat Desa Pekuncen.</p>
    </div>

    <div class="container">
        <div class="content">
            <h1>Selamat Datang</h1>
            <p>Sistem ini dibuat untuk membantu memudahkan perangkat desa dalam mengelola surat. Silakan login untuk melanjutkan.</p>
            <a href="web/login" class="login-btn">Login</a>
        </div>
    </div>
    <div class="footer">
    <div class="footer text-muted text-center">
    &nbsp;&nbsp;&nbsp; &copy; 2024. <a href="">Aplikasi Manajemen Surat</a>
					</div>
</body>
</html>
