<?php
session_start();
include "../koneksi.php";

if ($_SESSION['role'] != 'author') {
    header("Location: ../login.php");
    exit;
}

$id = $_SESSION['id'];

// HITUNG ARTIKEL
$jmlArtikel = mysqli_fetch_assoc(mysqli_query($conn, "
SELECT COUNT(*) as total FROM artikel WHERE staf_id='$id'
"))['total'];

// HITUNG KOMENTAR
$jmlKomentar = mysqli_fetch_assoc(mysqli_query($conn, "
SELECT COUNT(*) as total 
FROM komentar 
JOIN artikel ON komentar.artikel_id = artikel.id
WHERE artikel.staf_id='$id'
"))['total'];
?>

<!DOCTYPE html>
<html>
<head>
<title>Dashboard Author</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css">

<style>
body {
    background: #f1f3f9;
}

/* Sidebar */
.sidebar {
    height: 100vh;
    background: linear-gradient(180deg,#667eea,#764ba2);
    color: white;
    padding: 20px;
}

.sidebar h4 {
    font-weight: bold;
}

.sidebar a {
    color: white;
    display: block;
    margin: 12px 0;
    text-decoration: none;
    transition: 0.3s;
}

.sidebar a:hover {
    padding-left: 8px;
    color: #ffd369;
}

/* Content */
.content {
    padding: 30px;
}

/* Card */
.card-custom {
    border-radius: 18px;
    background: linear-gradient(135deg,#667eea,#764ba2);
    color: white;
    transition: 0.3s;
}

.card-custom:hover {
    transform: translateY(-5px);
    box-shadow: 0 10px 25px rgba(0,0,0,0.2);
}

/* Welcome box */
.welcome-box {
    background: white;
    padding: 20px;
    border-radius: 15px;
    box-shadow: 0 5px 15px rgba(0,0,0,0.05);
}
</style>
</head>

<body>

<div class="row g-0">

<!-- SIDEBAR -->
<div class="col-md-2 sidebar">
    <h4>✨ Author Panel</h4>
    <hr>

    <a href="dashboard.php"><i class="bi bi-speedometer2"></i> Dashboard</a>
    <a href="artikel.php"><i class="bi bi-file-text"></i> Artikel</a>
    <a href="komentar.php"><i class="bi bi-chat-dots"></i> Komentar</a>
    <a href="../logout.php"><i class="bi bi-box-arrow-right"></i> Logout</a>
</div>

<!-- CONTENT -->
<div class="col-md-10 content">

<!-- WELCOME -->
<div class="welcome-box mb-4">
    <h4>👋 Halo, <?= $_SESSION['username']; ?></h4>
    <p class="text-muted mb-0">Selamat datang di dashboard author 🚀</p>
</div>

<div class="row">

<!-- ARTIKEL -->
<div class="col-md-4">
    <div class="card card-custom p-4 shadow">
        <h6><i class="bi bi-journal-text"></i> Artikel</h6>
        <h2><?= $jmlArtikel; ?></h2>
        <a href="artikel.php" class="btn btn-light btn-sm mt-2">Kelola</a>
    </div>
</div>

<!-- KOMENTAR -->
<div class="col-md-4">
    <div class="card card-custom p-4 shadow">
        <h6><i class="bi bi-chat-left-dots"></i> Komentar</h6>
        <h2><?= $jmlKomentar; ?></h2>
        <a href="komentar.php" class="btn btn-light btn-sm mt-2">Lihat</a>
    </div>
</div>

</div>

</div>
</div>

</body>
</html>