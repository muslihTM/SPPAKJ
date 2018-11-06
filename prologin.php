<?php
session_start();
include "koneksi.php";

$username = $_POST['username'];
$password = md5($_POST['password']);

$qlogin = $con->query("SELECT * FROM user WHERE username='$username' and password='$password'");

$data = $qlogin->fetch_array();
$count = $qlogin->num_rows;

if ($count > 0) {
	$_SESSION['id'] = $data['id_user']; // atau $data[0]
	$_SESSION['nama'] = $data['nama_user'];
	
	echo "<script>alert('Berhasil Login ".$_SESSION['nama']."');</script>";
} else {
echo "<script>alert('Gagal Login!!');top.location='index.php';</script>";
}