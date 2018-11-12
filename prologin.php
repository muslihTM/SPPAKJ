<?php
session_start();
include "koneksi.php";

$username = $_POST['username'];
$password = md5($_POST['password']);
$level		= $_POST['level'];

$qlogin = $con->query("SELECT * FROM user WHERE username='$username' and password='$password'");

$count = $qlogin->num_rows;

if ($count > 0) {
	$data = $qlogin->fetch_array();
	if ($data['level']=='admin' && $level=='admin') {
	$_SESSION['admin'] = $data['id_user']; 
	$_SESSION['nama'] = $data['nama_user'];
	
	header('location: admin/beranda.php');
	} elseif ($data['level']=='kepsek' && $level=='kepsek') {
	$_SESSION['kepsek'] = $data['id_user']; 
	$_SESSION['nama'] = $data['nama_user'];
	
	header('location: kepsek/beranda.php');
	} elseif ($data['level']=='operator' && $level=='operator') {
	$_SESSION['operator'] = $data['id_user']; 
	$_SESSION['nama'] = $data['nama_user'];
	
	header('location: operator/beranda.php');
	}
} else {
echo "<script>alert('Gagal Login!!');top.location='index.php';</script>";
}