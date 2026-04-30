<?php
session_start();
include "koneksi.php";

$id = $_GET['id'];
$data = mysqli_fetch_assoc(mysqli_query($conn, "SELECT * FROM artikel WHERE id='$id'"));
?>

<!DOCTYPE html>
<html>
<head>
<title>Edit Artikel</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet">
</head>

<body>
<div class="container mt-4">

<div class="card p-4 shadow">
<h4>Edit Artikel</h4>

<form action="update_artikel.php" method="POST" enctype="multipart/form-data">

<input type="hidden" name="id" value="<?= $data['id']; ?>">

<!-- JUDUL -->
<input type="text" name="judul" class="form-control mb-3" 
value="<?= $data['judul']; ?>">

<!-- ISI -->
<textarea name="isi" class="form-control mb-3"><?= $data['isi']; ?></textarea>

<!-- GAMBAR LAMA -->
<?php if(!empty($data['gambar']) && file_exists("gambar/".$data['gambar'])){ ?>
    <img src="gambar/<?= $data['gambar']; ?>" width="120" class="mb-2">
<?php } ?>

<!-- UPLOAD BARU -->
<input type="file" name="gambar" class="form-control mb-3">

<button class="btn btn-warning">Update</button>
<a href="artikel.php" class="btn btn-secondary">Kembali</a>

</form>
</div>

</div>
</body>
</html>