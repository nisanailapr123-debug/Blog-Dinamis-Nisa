<!DOCTYPE html>
<html lang="id">
<head>
    <meta charset="UTF-8">
    <title>Login Admin</title>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet">

    <style>
        body {
            background: linear-gradient(135deg, #667eea, #764ba2);
            height: 100vh;
        }
        .card {
            border-radius: 15px;
        }
        .btn-custom {
            background: #764ba2;
            color: white;
        }
        .btn-custom:hover {
            background: #5a3c8c;
        }
    </style>
</head>
<body class="d-flex justify-content-center align-items-center">

<div class="card shadow p-4" style="width: 350px;">
    <h3 class="text-center mb-3">Login Admin</h3>

    <?php if(isset($_SESSION['error'])): ?>
        <div class="alert alert-danger">
            <?= $_SESSION['error']; unset($_SESSION['error']); ?>
        </div>
    <?php endif; ?>

    <form action="proses_login.php" method="POST">
        
        <div class="mb-3">
            <label>Username</label>
            <input type="text" name="username" class="form-control" required>
        </div>

        <div class="mb-3">
            <label>Password</label>
            <input type="password" name="password" class="form-control" required>
        </div>

        <div class="mb-3 text-center">
            <img src="captcha.php" alt="captcha">
        </div>

        <div class="mb-3">
            <label>Masukkan Captcha</label>
            <input type="text" name="captcha" class="form-control" required>
        </div>

        <button type="submit" class="btn btn-custom w-100">Login</button>
    </form>
</div>

</body>
</html>