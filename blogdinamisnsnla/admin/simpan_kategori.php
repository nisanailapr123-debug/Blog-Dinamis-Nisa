<?php
include "koneksi.php";
mysqli_query($conn,"INSERT INTO kategori(nama_kategori) VALUES ('$_POST[nama_kategori]')");
header("Location: kategori.php");
?>