<?php
include('config.php');
include('fungsi.php');

// menjalankan perintah edit
if (isset($_POST['edit'])) {
	$id = $_POST['id'];

	header('Location: edit.php?jenis=alternatif&id=' . $id);
	exit();
}

// menjalankan perintah delete
if (isset($_POST['delete'])) {
	$id = $_POST['id'];
	deleteAlternatif($id);
}

// menjalankan perintah tambah
if (isset($_POST['tambah'])) {
	$nama = $_POST['nama'];
	tambahData('alternatif', $nama);
}

include('header.php');

?>


<section class="content">

	<h2 class="ui header">Alternatif</h2>

	<table class="ui celled table">
		<thead>
			<tr>
				<th class="collapsing">No</th>
				<th colspan="2">Nama Alternatif</th>
			</tr>
		</thead>
		<tbody>

			<?php
			// Menampilkan list alternatif
			$query = "SELECT id_alternatif,nm_alternatif FROM alternatif WHERE id_kasus='$id_kasus' ORDER BY id_alternatif";
			$result	= mysqli_query($koneksi, $query);

			$i = 0;
			while ($row = mysqli_fetch_array($result)) {
				$i++;
			?>
				<tr>
					<td><?php echo $i ?></td>
					<td><?php echo $row['nm_alternatif'] ?></td>
					<td class="right aligned collapsing">

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


	<form action="bobot_kriteria.php">
		<button class="ui right labeled icon button" style="float: right;">
			<i class="right arrow icon"></i>
			Lanjut
		</button>
	</form>
</section>

<?php include('footer.php'); ?>