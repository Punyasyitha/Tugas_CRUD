<?php 
// koneksi database
include 'koneksi.php';
 
// menangkap data id yang di kirim dari url
$id = $_GET['id'];
// var_dump($id);
// die;
 
// menghapus data dari database
mysqli_query($koneksi,"DELETE FROM tbl_mahasiswa WHERE No='$id'");
 
// mengalihkan halaman kembali ke index.php
header("location:index.php");
 
?>