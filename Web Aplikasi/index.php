<?php
	require 'koneksi.php';
	$data = mysqli_query($koneksi,"SELECT * FROM tbl_mahasiswa");
	while($d=mysqli_fetch_array($data))
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>DATA MAHASISWA</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-aFq/bzH65dt+w6FI2ooMVUpc+21e0SRygnTpmBvdBgSdnuTN7QbdgL+OapgHtvPp" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js" integrity="sha384-oBqDVmMz9ATKxIep9tiCxS/Z9fNfEXiDAYTujMAeBAsjFuCZSmKbSSUnQlmh/jp3" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha2/dist/js/bootstrap.min.js" integrity="sha384-heAjqF+bCxXpCWLa6Zhcp4fu20XoNIA98ecBC1YkdXhszjoejr5y9Q77hIrv8R9i" crossorigin="anonymous"></script>
	<script src="https://code.jquery.com/jquery-3.6.4.min.js" integrity="sha256-oP6HI9z1XaZNBrJURtCoUT5SUnxFr8s3BzRl+cbzUq8=" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
    <script src="//cdn.datatables.net/1.13.4/js/jquery.dataTables.min.js"></script>
</head>
<body>
    <div class="max-auto" style="margin-top: 50px; margin-bottom: 50px; margin-left: 50px; margin-right: 50px">
    <h1 class="text-center">Data Mahasiswa</h1>
    <a class="btn btn-success" href="tambah.php">TAMBAH MAHASISWA</a>
    <div class="text-center"><!DOCTYPE html>
	<br/>
	<table class="table table-striped table-bordered table-warning" style="width:100%">
		<thead>
		<tr>
			<th>No</th>
			<th>NRP</th>
			<th>Nama</th>
			<th>Jenis Kelamin</th>
			<th>Jurusan</th>
			<th>Email</th>
			<th>Alamat</th>
			<th>No. Handphone</th>
			<th>Asal Sekolah</th>
			<th>Matkul Favorit</th>
			<th>Opsi</th>
		</tr>
		</thead>
		<tbody>
		<?php 
		$no = 1;
		foreach ($data as $d):?>
			<tr>
				<td><?php echo $no++; ?></td>
				<td><?php echo $d['NRP']; ?></td>
				<td><?php echo $d['Nama']; ?></td>
                <td><?php echo $d['Jenis_Kelamin']; ?></td>
				<td><?php echo $d['Jurusan']; ?></td>
				<td><?php echo $d['Email']; ?></td>
				<td><?php echo $d['Alamat']; ?></td>
				<td><?php echo $d['No_Handphone']; ?></td>
				<td><?php echo $d['Asal_Sekolah']; ?></td>
				<td><?php echo $d['Matkul_Favorit']; ?></td>
				<td>
					<a class="btn btn-primary" href="edit.php?id=<?php echo $d['No']; ?>">EDIT</a>
					<a class="btn btn-danger" href="hapus.php?id=<?php echo $d['No']; ?>">HAPUS</a>
				</td>
			</tr>
			<?php $nomer;endforeach;?>
		</tbody>
	</table>
	<script>
		$(document).ready(function () {
    $('.table').DataTable();
});
	</script>
</body>
</html>