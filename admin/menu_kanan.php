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
		default:
			include "../404.php";
			break;
	}
}else{
	include "konten.php";
}
?>