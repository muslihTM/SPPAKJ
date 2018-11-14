<?php 
if(isset($_GET['p'])){
	$page = $_GET['p'];
	switch ($page) {
		case 'home':
			include "konten.php";
			break;
		case 'user':
			include "user.php";
			break;
		case 'siswa':
			include "siswa.php";
			break;
		case 'rombel':
			include "rombel.php";
			break;
		case 'reftahun':
			include "tajar.php";
			break;
		case 'refkelas':
			include "kelas.php";
			break;
		default:
			include "../404.php";
			break;
	}
}else{
	include "konten.php";
}
?>