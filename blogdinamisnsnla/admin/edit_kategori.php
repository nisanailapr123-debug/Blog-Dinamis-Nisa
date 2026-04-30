<?php
include "koneksi.php";

$id = $_GET['id'];
$data = mysqli_fetch_assoc(mysqli_query($conn, "SELECT * FROM kategori WHERE id=$id"));

if (isset($_POST['update'])) {
    $nama = $_POST['nama_kategori'];

    mysqli_query($conn, "UPDATE kategori SET 
        nama_kategori='$nama'
        WHERE id=$id");

    header("Location: kategori.php");
}
?>

<!DOCTYPE html>
<html>
<head>
    <title>Edit Kategori</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet">
</head>

<body class="bg-light">
<div class="container mt-4">

    <h3>Edit Kategori</h3>

    <form method="POST">
        <div class="mb-3">
            <label>Nama Kategori</label>
            <input type="text" name="nama_kategori" value="<?= $data['nama_kategori']; ?>" class="form-control">
        </div>

        <button type="submit" name="update" class="btn btn-warning">Update</button>
        <a href="" class="btn btn-secondary">Kembali</a>
    </form>

</div>
</body>
</html>