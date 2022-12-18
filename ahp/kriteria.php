<?php
include('config.php');
include('fungsi.php');

// menjalankan perintah edit
if (isset($_POST['edit'])) {
	$id = $_POST['id'];

	header('Location: edit.php?jenis=kriteria&id=' . $id);
	exit();
}

// menjalankan perintah delete
if (isset($_POST['delete'])) {
	$id = $_POST['id'];
	deleteKriteria($id);
}

// menjalankan perintah tambah
if (isset($_POST['tambah'])) {
	$nama = $_POST['nama'];
	tambahData('kriteria', $nama);
}

include('header.php');
?>

<section class="content">
	<h2 class="ui header">Kriteria</h2>

	<table class="ui celled table">
		<thead>
			<tr>
				<th class="collapsing">No</th>
				<th colspan="2">Nama Kriteria</th>
			</tr>
		</thead>
		<tbody>

			<?php
			// Menampilkan list kriteria
			$query = "SELECT id_kreteria,nm_kreteria FROM kriteria WHERE id_kasus='$id_kasus' ORDER BY id_kreteria";
			$result	= mysqli_query($koneksi, $query);

			$i = 0;
			while ($row = mysqli_fetch_array($result)) {
				$i++;
			?>
				<tr>
					<td><?php echo $i ?></td>
					<td><?php echo $row['nm_kreteria'] ?></td>
					<td class="right aligned collapsing">
						<form method="post" action="kriteria.php">
							<input type="hidden" name="id" value="<?php echo $row['id'] ?>">


						</form>
					</td>
				</tr>


			<?php } ?>


		</tbody>
		<tfoot class="full-width">
			<tr>

			</tr>
		</tfoot>
	</table>

	<br>



	<form action="alternatif.php">
		<button class="ui right labeled icon button" style="float: right;">
			<i class="right arrow icon"></i>
			Lanjut
		</button>
	</form>

</section>

<?php include('footer.php'); ?>