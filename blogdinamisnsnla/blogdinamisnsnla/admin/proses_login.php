<?php
session_start();
include 'koneksi.php';

$username = $_POST['username'];
$password = MD5($_POST['password']);
$captcha  = $_POST['captcha'];

// cek captcha
if ($captcha != $_SESSION['captcha']) {
    $_SESSION['error'] = "Captcha salah!";
    header("Location: login.php");
    exit;
}

// cek database
$query = mysqli_query($conn, "SELECT * FROM staf WHERE username='$username' AND password='$password'");
$data = mysqli_fetch_assoc($query);

if ($data) {
    $_SESSION['username'] = $data['username'];
	$_SESSION['password'] = $data['password'];
    $_SESSION['role'] = $data['role'];

    header("Location: index.php");
} else {
    $_SESSION['error'] = "Username atau password salah!";
    header("Location: login.php");
}
?>