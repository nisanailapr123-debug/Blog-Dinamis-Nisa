<?php
include 'koneksi.php';

$id = $_GET['id'];
$data = mysqli_fetch_array(mysqli_query($conn, "SELECT * FROM artikel WHERE id='$id'"));

if(isset($_POST['update'])){
    $judul = $_POST['judul'];
    $isi = $_POST['isi'];

    if($_FILES['gambar']['name'] != ""){
        $gambar = $_FILES['gambar']['name'];
        $tmp = $_FILES['gambar']['tmp_name'];

        move_uploaded_file($tmp, "upload/".$gambar);

        mysqli_query($conn, "UPDATE artikel SET 
            judul='$judul',
            isi='$isi',
            gambar='$gambar'
            WHERE id='$id'");
    } else {
        mysqli_query($conn, "UPDATE artikel SET 
            judul='$judul',
            isi='$isi'
            WHERE id='$id'");
    }

    header("Location: artikel.php");
}
?>

<!DOCTYPE html>
<html>
<head>
<title>Edit Artikel</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet">

<style>
.card { border-radius:15px; }
.btn-custom { background:#764ba2; color:white; }
</style>
</head>

<body class="bg-light">

<div class="container mt-4">
    <div class="card p-4 shadow">
        <h4>Edit Artikel</h4>
        <hr>

        <form method="POST" enctype="multipart/form-data">

            <label>Judul</label>
            <input type="text" name="judul" value="<?= $data['judul']; ?>" class="form-control mb-3">

            <label>Isi Artikel</label>
            <textarea name="isi" class="form-control mb-3" rows="5"><?= $data['isi']; ?></textarea>

            <label>Gambar Saat Ini</label><br>
            <img src="upload/<?= $data['gambar']; ?>" width="120" class="mb-3"><br>

            <label>Ganti Gambar</label>
            <input type="file" name="gambar" class="form-control mb-3">

            <button type="submit" name="update" class="btn btn-custom">Update</button>
            <a href="artikel.php" class="btn btn-secondary">Kembali</a>

        </form>
    </div>
</div>

</body>
</html>
</html>