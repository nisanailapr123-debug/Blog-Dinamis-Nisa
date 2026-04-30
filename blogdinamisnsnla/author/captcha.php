<?php
session_start();

$chars = 'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz';
$captcha = substr(str_shuffle($chars), 0, 4);

$_SESSION['captcha'] = $captcha;

header('Content-type: image/png');

$image = imagecreate(100, 40);
$bg = imagecolorallocate($image, 240, 240, 240);
$textcolor = imagecolorallocate($image, 0, 0, 0);

imagestring($image, 5, 20, 10, $captcha, $textcolor);

imagepng($image);
imagedestroy($image);
?>