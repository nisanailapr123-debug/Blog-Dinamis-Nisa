<?php
session_start();
include "koneksi.php";

$username = $_POST['username'];
$password = MD5($_POST['password']);

$data = mysqli_query($conn, "
SELECT * FROM staf 
WHERE username='$username' AND password='$password'
");

if(mysqli_num_rows($data) > 0){

    $d = mysqli_fetch_assoc($data);

    $_SESSION['id'] = $d['id'];
    $_SESSION['username'] = $d['username'];
    $_SESSION['role'] = $d['role'];

    // DEBUG (sementara cek)
    // echo $_SESSION['role']; exit;

    if($d['role'] == 'admin'){
        header("Location: dashboard.php");
    } else {
        header("Location: author/dashboard.php");
    }

} else {
    echo "<script>alert('Login gagal');window.location='login.php';</script>";
}
?>