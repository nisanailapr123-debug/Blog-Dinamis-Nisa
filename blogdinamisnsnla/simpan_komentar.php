<?php
include 'koneksi.php';

$id = $_POST['artikel_id'];
$nama = $_POST['nama'];
$isi = $_POST['isi'];
$tanggal = date('Y-m-d');

$query = mysqli_query($conn,"
INSERT INTO komentar (artikel_id, nama, isi, tanggal)
VALUES ('$id','$nama','$isi','$tanggal')
");

if($query){
    header("Location: detail_artikel.php?id=$id");
    exit;
}else{
    echo "Error: " . mysqli_error($conn);
}
?>