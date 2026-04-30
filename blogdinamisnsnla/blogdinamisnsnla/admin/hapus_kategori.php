<?php
include "koneksi.php";
mysqli_query($conn,"DELETE FROM kategori WHERE id=$_GET[id]");
header("Location: kategori.php");
?>