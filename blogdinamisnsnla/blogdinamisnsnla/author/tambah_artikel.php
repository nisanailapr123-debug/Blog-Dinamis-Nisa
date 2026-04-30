<?php
session_start();
include "koneksi.php";

// ambil kategori & tag
$kategori = mysqli_query($conn, "SELECT * FROM kategori");
$tag = mysqli_query($conn, "SELECT * FROM tag");
?>

<!DOCTYPE html>
<html>
<head>
<title>Tambah Artikel</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet">

<style>
body { background:#f4f6fb; }
.card { border-radius:15px; }
</style>
</head>

<body>
<div class="container mt-4">

<div class="card p-4 shadow">
<h4>Tambah Artikel</h4>

<form action="simpan_artikel.php" method="POST" enctype="multipart/form-data">

<!-- JUDUL -->
<input type="text" name="judul" class="form-control mb-3" placeholder="Judul" required>

<!-- ISI -->
<textarea name="isi" class="form-control mb-3" rows="6" placeholder="Isi Artikel"></textarea>

<!-- GAMBAR -->
<input type="file" name="gambar" class="form-control mb-3">

<!-- KATEGORI -->
<div class="mb-3">
<label>Kategori</label>
<select name="kategori_id" class="form-control" required>
    <option value="">-- Pilih Kategori --</option>
    <?php while($k = mysqli_fetch_assoc($kategori)){ ?>
        <option value="<?= $k['id']; ?>">
            <?= $k['nama_kategori']; ?>
        </option>
    <?php } ?>
</select>
</div>

<!-- TAG -->
<div class="mb-3">
<label>Tag</label>
<?php while($t = mysqli_fetch_assoc($tag)){ ?>
    <div class="form-check">
        <input class="form-check-input" type="checkbox" name="tag[]" value="<?= $t['id']; ?>">
        <label class="form-check-label">
            <?= $t['nama_tag']; ?>
        </label>
    </div>
<?php } ?>
</div>

<button class="btn btn-primary">Simpan</button>
<a href="artikel.php" class="btn btn-secondary">Kembali</a>

</form>
</div>

</div>
</body>
</html>