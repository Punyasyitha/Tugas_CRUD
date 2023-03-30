<?
include 'koneksi.php';

// menangkap data yang di kirim dari form
$NRP = $_POST['NRP'];
$Nama = $_POST['Nama'];
$Jenis_Kelamin = $_POST['Jenis_Kelamin'];
$Jurusan = $_POST['Jurusan'];
$Email = $_POST['Email'];
$Alamat = $_POST['Alamat'];
$No_Handphone = $_POST['No_Handphone'];
$Asal_Sekolah = $_POST['Asal_Sekolah'];
$Matkul_Favorit = $_POST['Matkul_Favorit'];
 
// menginput data ke database
$q = mysqli_query($koneksi,"insert into tbl_mahasiswa values('','$NRP','$Nama','$Jenis_Kelamin','$Jurusan','$Email','$Alamat','$No_Handphone','$Asal_Sekolah','$Matkul_Favorit')");
var_dump($q);
// mengalihkan halaman kembali ke index.php
header("location:index.php");
?>