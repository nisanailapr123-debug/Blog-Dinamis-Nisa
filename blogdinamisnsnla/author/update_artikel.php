<?php
session_start();
include "koneksi.php";

$id     = $_POST['id'];
$judul  = $_POST['judul'];
$isi    = $_POST['isi'];
$kategori_id = $_POST['kategori_id'];

// ==================
// UPLOAD GAMBAR
// ==================
$gambar = $_FILES['gambar']['name'];
$tmp    = $_FILES['gambar']['tmp_name'];

if(!empty($gambar)){

    // ambil ekstensi
    $ext = strtolower(pathinfo($gambar, PATHINFO_EXTENSION));

    // filter ekstensi
    $allowed = ['jpg','jpeg','png'];
    if(in_array($ext, $allowed)){

        // ambil gambar lama
        $lama = mysqli_fetch_assoc(mysqli_query($conn, "
        SELECT gambar FROM artikel WHERE id='$id'
        "));

        // hapus gambar lama
        if($lama['gambar'] != "" && file_exists("gambar/".$lama['gambar'])){
            unlink("gambar/".$lama['gambar']);
        }

        // buat nama baru
        $namaBaru = "artikel_" . time() . "." . $ext;

        move_uploaded_file($tmp, "gambar/".$namaBaru);

        // update + gambar
        mysqli_query($conn, "
        UPDATE artikel SET 
            judul='$judul',
            isi='$isi',
            kategori_id='$kategori_id',
            gambar='$namaBaru'
        WHERE id='$id'
        ");

    }

} else {

    // update tanpa gambar
    mysqli_query($conn, "
    UPDATE artikel SET 
        judul='$judul',
        isi='$isi',
        kategori_id='$kategori_id'
    WHERE id='$id'
    ");
}


// ==================
// UPDATE TAG
// ==================

// hapus semua tag lama
mysqli_query($conn, "DELETE FROM artikel_tag WHERE artikel_id='$id'");

// simpan tag baru
if(!empty($_POST['tag'])){
    foreach($_POST['tag'] as $tag_id){
        mysqli_query($conn, "
        INSERT INTO artikel_tag (artikel_id, tag_id)
        VALUES ('$id','$tag_id')
        ");
    }
}

// ==================
header("Location: artikel.php");
exit;
?>