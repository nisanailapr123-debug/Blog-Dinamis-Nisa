<?php
session_start();
include "../koneksi.php";

if ($_SESSION['role'] != 'author') {
    exit;
}

$id = $_SESSION['id'];

$data = mysqli_query($conn, "
SELECT komentar.*, artikel.judul 
FROM komentar 
JOIN artikel ON komentar.artikel_id = artikel.id
WHERE artikel.staf_id='$id'
ORDER BY komentar.id DESC
");
?>

<!DOCTYPE html>
<html>
<head>
<title>Komentar</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet">

<style>
body { background:#f1f3f9; }

.card-komentar {
    border-radius:12px;
}
</style>
</head>

<body>
<div class="container mt-4">

<h4>💬 Semua Komentar</h4>
<a href="dashboard.php" class="btn btn-secondary btn-sm mb-3">← Kembali</a>

<?php if(mysqli_num_rows($data) == 0){ ?>
<div class="alert alert-info">Belum ada komentar</div>
<?php } ?>

<?php while($d=mysqli_fetch_assoc($data)){ ?>
<div class="card card-komentar p-3 mb-3 shadow-sm">
    <b><?= $d['nama']; ?></b> 
    <small class="text-muted">| <?= $d['tanggal']; ?></small>
    
    <div><b>Artikel:</b> <?= $d['judul']; ?></div>

    <p class="mt-2"><?= $d['isi']; ?></p>

    <a href="hapus_komentar.php?id=<?= $d['id']; ?>" 
       class="btn btn-danger btn-sm"
       onclick="return confirm('Hapus komentar?')">
       Hapus
    </a>
</div>
<?php } ?>

</div>
</body>
</html>