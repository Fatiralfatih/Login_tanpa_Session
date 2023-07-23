<?php

include 'koneksi.php';

$email = $_POST['email'];
$password = $_POST['password'];

mysqli_query($koneksi, "SELECT * FROM users WHERE email='$email' AND password='$password'");


header("location:home/index.php?info=daftar");
