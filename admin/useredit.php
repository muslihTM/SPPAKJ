<?php 

$query = $con->query("SELECT * FROM user where id_user='".$_GET['id']."'");

$data=$query->fetch_array();
?>
<h1>Edit Data User</h1>
<form action="" method="post">
<input type="hidden" name="id" value="<?php echo $data['id_user'];?>">
  <div class="form-group row">
    <label for="Nama" class="col-sm-2 col-form-label">Nama Pengguna</label>
    <div class="col-sm-10">
      <input type="text" class="form-control" id="nama" name="nama" value="<?php echo $data['nama_user'];?>">
    </div>
  </div>
  <div class="form-group row">
    <label for="username" class="col-sm-2 col-form-label">Username</label>
    <div class="col-sm-10">
      <input type="text" class="form-control" id="username" name="username" value="<?php echo  $data['username'];?>">
    </div>
  </div>
  <div class="form-group row">
    <label for="password" class="col-sm-2 col-form-label">Password</label>
    <div class="col-sm-10">
      <input type="text" class="form-control" id="password" name="password">
    </div>
  </div>
  <div class="form-group row">
    <label for="level" class="col-sm-2 col-form-label">Level</label>
    <div class="col-sm-10">
      <select name="level">
		<option value="<?php echo $data['level'];?>"><?php echo $data['level'];?></option>
		<option value="admin">Admin</option>
		<option value="kepsek">Kepsek</option>
		<option value="operator">Operator</option>
	  </select>
    </div>
  </div>
  <div class="form-group row">
    <div class="col-sm-10">
      <button type="submit" name="btedit" class="btn btn-lg btn-success">Update</button>
    </div>
  </div>
</form>