<?php
session_start();

// CEK LOGIN
if (isset($_SESSION['username']) and isset($_SESSION['password'])) {
    include 'dashboard.php';
} else {
    include 'login.php';
}
?>