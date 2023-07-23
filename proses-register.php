<?php

include 'koneksi.php';

$nama = strtolower($_POST['nama']);
$nama_lengkap = $_POST['nama_lengkap'];
$no_hp = $_POST['no_hp'];
$email = $_POST['email'];
$password = password_hash($_POST['password'], PASSWORD_DEFAULT);

// cek email udah ada atau belum

$result = mysqli_query($koneksi, "SELECT email FROM users WHERE email = '$email'");

if (mysqli_fetch_assoc($result)) {
    // jika berhasil
    if (isset($result)) {
        header("location:register.php?info=cekemail");
    }
    return false;
}

mysqli_query($koneksi, "INSERT INTO users VALUES(null,'$nama', '$nama_lengkap', '$no_hp', '$email', '$password')");


header("location:index.php?info=daftar");
