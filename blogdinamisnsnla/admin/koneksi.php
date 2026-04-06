<?php
$conn = mysqli_connect("localhost", "root", "", "blogdinamisnsnla");

if (!$conn) {
    die("Koneksi gagal: " . mysqli_connect_error());
}
?>