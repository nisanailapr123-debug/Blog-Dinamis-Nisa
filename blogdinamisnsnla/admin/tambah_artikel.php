<?php
include 'koneksi.php';

if(isset($_POST['simpan'])){
    $judul = $_POST['judul'];
    $isi = $_POST['isi'];

    $gambar = $_FILES['gambar']['name'];
    $tmp = $_FILES['gambar']['tmp_name'];

    move_uploaded_file($tmp, "upload/".$gambar);

    mysqli_query($conn, "INSERT INTO artikel (judul, isi, gambar) 
    VALUES ('$judul','$isi','$gambar')");

    header("Location: artikel.php");
}
?>

<!DOCTYPE html>
<html>
<head>
<title>Tambah Artikel</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet">

<style>
.card { border-radius:15px; }
.btn-custom { background:#764ba2; color:white; }
</style>
</head>

<body class="bg-light">

<div class="container mt-4">
    <div class="card p-4 shadow">
        <h4>Tambah Artikel</h4>
        <hr>

        <form method="POST" enctype="multipart/form-data">
            <label>Judul</label>
            <input type="text" name="judul" class="form-control mb-3" required>

            <label>Isi Artikel</label>
            <textarea name="isi" class="form-control mb-3" rows="5" required></textarea>

            <label>Upload Gambar</label>
            <input type="file" name="gambar" class="form-control mb-3" required>

            <button type="submit" name="simpan" class="btn btn-custom">Simpan</button>
            <a href="artikel.php" class="btn btn-secondary">Kembali</a>
        </form>
    </div>
</div>

</body>
</html>