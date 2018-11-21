          <h2>Daftar Pengguna Aplikasi</h2>
          <div class="table-responsive">
            <table class="table table-striped table-sm">
              <thead>
                <tr>
                  <th>#</th>
                  <th>Nama</th>
                  <th>Username</th>
                  <th>Level</th>
                  <th>Aksi</th>
                </tr>
              </thead>
              <tbody>
<?php 
$query = $con->query("SELECT * FROM user");
$i=1;
while ($data=$query->fetch_array()){
?>
    <tr>
        <td><?php echo $i; ?></td>
        <td><?php echo $data['nama_user'];?></td>
        <td><?php echo $data['username'];?></td>
        <td><?php echo $data['4'];?></td>
        <td><a href="?p=useredit&id=<?php echo $data['id_user']; ?>">edit</a> | <a href="?p=hapususer&id=<?php echo $data['id_user'];?>">hapus</a></td>
    </tr>
<?php 
$i++;
}
?>
              </tbody>
            </table>
          </div>