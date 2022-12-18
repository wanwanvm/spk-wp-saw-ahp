<?php
if (!isset($_SESSION)) {
	session_start();
}
$id_kasus =  $_SESSION['id_kasus'];
$id_panitia = $_SESSION['id_panitia'];

// connection
$host = 'localhost';
$username = 'root';
$password = '';
$database = 'tugasspk';

$koneksi = mysqli_connect($host, $username, $password);

if (!$koneksi) {
	echo "Tidak dapat terkoneksi dengan server";
	exit();
}

if (!mysqli_select_db($koneksi, $database)) {
	echo "Tidak dapat menemukan database";
	exit();
}
