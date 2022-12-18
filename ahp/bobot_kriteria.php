<?php
session_start();
if (!isset($_SESSION['id_panitia'])) {
	header("Location: index.php");
}
?>
<?php
include('config.php');
include('fungsi.php');

include('header.php');
?>

<section class="content">
	<h2 class="ui header">Perbandingan Kriteria</h2>
	<?php showTabelPerbandingan('kriteria', 'kriteria'); ?>
</section>

<?php include('footer.php'); ?>