<!DOCTYPE html>
<html>
<head>
	<title>EDIT MAHASISWA</title>
	<style>
		body {
			background-color: #FFF4E0;
		}
        h2, h3 {
		    color: black;
		    text-align: center;
		    font-family:Cambria, Cochin, Georgia, Times, 'Times New Roman', serif;
	    }
        table {
            margin: auto;
            font-family:Verdana, Geneva, Tahoma, sans-serif;
            font-size: 18px;
            background-color: #FFBF9B;
            border: 1px solid #245953;
            padding: 10px;
            border-collapse: collapse;
        }
        th, td {
            border: 1px solid #245953;
            padding: 8px;
            text-align: center;
        }
        input[type="text"], input[type="number"], textarea {
            padding: 6px;
            border: 1px solid #ccc;
            border-radius: 4px;
            box-sizing: border-box;
            font-size: 14px;
        }
        input[type="radio"] {
            margin: 4px 8px 4px 0;
            font-size: 14px;
        }
        input[type="submit"] {
            background-color: #245953;
            color: #fff;
            font-size: 14px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            padding: 8px 16px;
        }
        a {
            display: inline-block;
            padding: 8px 16px;
            color: #245953;
            text-decoration: none;
            font-family:Georgia, 'Times New Roman', Times, serif;
            font-size: 14px;
            background-color: #FFBF9B;
            border: 1px solid #245953;
            border-radius: 4px;
            margin: 16px 0;
        }
        a:hover {
            background-color: #245953;
            color: #FFBF9B;
        }
	</style>
</head>
<body>
 
	<h2>BIODATA LENGKAP MAHASISWA</h2>
	<br/>
	<a href="index.php">KEMBALI</a>
	<br/>
	<br/>
	<h3>EDIT DATA MAHASISWA</h3>
 
	<?php
	include 'koneksi.php';
	$no = $_GET['id'];
	$data = mysqli_query($koneksi,"SELECT * FROM tbl_mahasiswa WHERE No='$no'");
	while($d = mysqli_fetch_array($data)){
		?>
		<form method="post" action="index.php">
			<table>
				<tr>			
					<td>NRP</td>
					<td><input type="text" name="NRP" value="<?php echo $d['NRP']; ?>">
					</td>
				</tr>
				<tr>
					<td>Nama</td>
					<td><input type="text" name="Nama" value="<?php echo $d['Nama']; ?>"></td>
				</tr>
				<tr>
					<td>Jenis Kelamin</td>
					<td><input type="text" name="Jenis_Kelamin" value="<?php echo $d['Jenis_Kelamin']; ?>"></td>
				</tr>
                <tr>
					<td>Jurusan</td>
					<td><input type="text" name="Jurusan" value="<?php echo $d['Jurusan']; ?>"></td>
				</tr>
                <tr>
					<td>Email</td>
					<td><input type="text" name="Email" value="<?php echo $d['Email']; ?>"></td>
				</tr>
                <tr>
					<td>Alamat</td>
					<td><input type="text" name="Alamat" value="<?php echo $d['Alamat']; ?>"></td>
				</tr>
                <tr>
					<td>No. Handphone</td>
					<td><input type="text" name="No_Handphone" value="<?php echo $d['No_Handphone']; ?>"></td>
				</tr>
                <tr>
					<td>Asal Sekolah</td>
					<td><input type="text" name="Asal_Sekolah" value="<?php echo $d['Asal_Sekolah']; ?>"></td>
				</tr>
                <tr>
					<td>Matkul Favorit</td>
					<td><input type="text" name="Matkul_Favorit" value="<?php echo $d['Matkul_Favorit']; ?>"></td>
				</tr>
				<tr>
					<td></td>
					<td><input type="submit" value="SIMPAN"></td>
				</tr>		
			</table>
		</form>
		<?php 
        include 'koneksi.php';
        if(isset($_POST) && !empty($_POST)){
        $NRP = $_POST['NRP'];
        $Nama = $_POST['Nama'];
        $Jenis_Kelamin = $_POST['Jenis_Kelamin'];
        $Jurusan = $_POST['Jurusan'];
        $Email = $_POST['Email'];
        $Alamat = $_POST['Alamat'];
        $No_Handphone = $_POST['No_Handphone'];
        $Asal_Sekolah = $_POST['Asal_Sekolah'];
        $Matkul_Favorit = $_POST['Matkul_Favorit'];
		$id = $_GET['id'];
        $q = mysqli_query($koneksi,"UPDATE tbl_mahasiswa SET NRP='$NRP',Nama='$Nama',Jenis_Kelamin='$Jenis_Kelamin',Jurusan='$Jurusan',Email='$Email', Alamat='$Alamat', No_Hnadphone='$No_Handphone', Asal_Sekolah='$Asal_Sekolah', Matkul_Favorit='$Matkul_Favorit')");
        header('location:index.php');
    }
	}
	?>
 
</body>
</html>