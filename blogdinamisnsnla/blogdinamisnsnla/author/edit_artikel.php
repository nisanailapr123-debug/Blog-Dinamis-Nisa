<?php
session_start();
include "koneksi.php";

$id = $_GET['id'];

// data artikel
$data = mysqli_fetch_assoc(mysqli_query($conn, "
SELECT * FROM artikel WHERE id='$id'
"));

// ambil kategori & tag
$kategori = mysqli_query($conn, "SELECT * FROM kategori");
$tag = mysqli_query($conn, "SELECT * FROM tag");

// ambil tag yang sudah dipilih
$tag_terpilih = [];
$qTag = mysqli_query($conn, "SELECT tag_id FROM artikel_tag WHERE artikel_id='$id'");
while($t = mysqli_fetch_assoc($qTag)){
    $tag_terpilih[] = $t['tag_id'];
}
?>

<!DOCTYPE html>
<html>
<head>
<title>Edit Artikel</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet">

<style>
body { background:#f4f6fb; }
.card { border-radius:15px; }
</style>
</head>

<body>
<div class="container mt-4">

<div class="card p-4 shadow">
<h4>Edit Artikel</h4>

<form action="update_artikel.php" method="POST" enctype="multipart/form-data">

<input type="hidden" name="id" value="<?= $data['id']; ?>">

<!-- JUDUL -->
<input type="text" name="judul" class="form-control mb-3" 
value="<?= $data['judul']; ?>" required>

<!-- ISI -->
<textarea name="isi" class="form-control mb-3" rows="6"><?= $data['isi']; ?></textarea>

<!-- GAMBAR LAMA -->
<?php if($data['gambar']){ ?>
    <img src="gambar/<?= $data['gambar']; ?>" width="120" class="mb-2">
<?php } ?>

<!-- UPLOAD GAMBAR BARU -->
<input type="file" name="gambar" class="form-control mb-3">

<!-- KATEGORI -->
<div class="mb-3">
<label>Kategori</label>
<select name="kategori_id" class="form-control" required>
    <option value="">-- Pilih Kategori --</option>
    <?php while($k = mysqli_fetch_assoc($kategori)){ ?>
        <option value="<?= $k['id']; ?>"
            <?= ($k['id'] == $data['kategori_id']) ? 'selected' : '' ?>>
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
        <input class="form-check-input" type="checkbox" 
        name="tag[]" value="<?= $t['id']; ?>"
        <?= in_array($t['id'], $tag_terpilih) ? 'checked' : '' ?>>

        <label class="form-check-label">
            <?= $t['nama_tag']; ?>
        </label>
    </div>
<?php } ?>
</div>

<button class="btn btn-warning">Update</button>
<a href="artikel.php" class="btn btn-secondary">Kembali</a>

</form>
</div>

</div>
</body>
</html>