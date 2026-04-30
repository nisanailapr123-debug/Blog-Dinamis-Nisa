<?php
session_start();
include "koneksi.php";

$judul = $_POST['judul'];
$isi   = $_POST['isi'];
$id    = $_SESSION['id'];

$gambar = $_FILES['gambar']['name'];
$tmp    = $_FILES['gambar']['tmp_name'];

move_uploaded_file($tmp, "gambar/".$gambar);

mysqli_query($conn, "
INSERT INTO artikel (judul, isi, gambar, tanggal, staf_id)
VALUES ('$judul','$isi','$gambar',NOW(),'$id')
");

header("Location: artikel.php");
?>