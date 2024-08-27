<?php
$user = $user->roW();
if ($user->level == "s_admin") {
    $level = "Super Admin";
}else{
    $level = $user->level;
}?>
<!-- Main content -->
<div class="content-wrapper">

  <!-- Content area -->
  <div class="content">

<!-- Dashboard content -->
<div class="row">
  <div class="col-md-6">
    <!-- Bagian kiri -->
    <div class="panel panel-flat">
      <div class="panel-body">
        <center>
          <img src="foto/default.png" alt="<?php echo $user->nama_lengkap; ?>" class="img-circle" style="width: 100px; height: 100px;">
        </center>
        <br>
        <fieldset class="content-group">
          <hr style="margin-top:0px;">
          <i class="icon-calendar"></i> <b>Tanggal Daftar</b> : <?php echo $user->tgl_daftar; ?>
          <hr style="margin-top:10px;margin-bottom:10px;">
          <i class="icon-watch2"></i> <b>Login Terakhir</b> : <?php echo $user->terakhir_login; ?>
        </fieldset>
      </div>
    </div>

    <!-- Ubah Kata Sandi -->
    <div class="panel panel-flat">
      <div class="panel-body">
        <fieldset class="content-group">
          <legend class="text-bold"><i class="icon-key"></i> Ubah Kata Sandi</legend>
          <?php echo $this->session->flashdata('msg2'); ?>
          <form class="form-horizontal" action="" method="post">
            <div class="form-group">
              <label class="control-label col-lg-3">Kata Sandi</label>
              <div class="col-lg-9">
                <input type="password" name="password" class="form-control" value="" placeholder="Kata Sandi" required>
              </div>
            </div>
            <div class="form-group">
              <label class="control-label col-lg-3">Ulangi Kata Sandi</label>
              <div class="col-lg-9">
                <input type="password" name="password2" class="form-control" value="" placeholder="Ulangi Kata Sandi" required>
              </div>
            </div>
        </fieldset>
        <div class="col-md-12">
          <button type="submit" name="btnupdate2" class="btn btn-primary" style="float:right;">Simpan</button>
        </div>
      </form>
      </div>
    </div>
  </div>

  <div class="col-md-6">
    <!-- Bagian kanan -->
    <!-- Ubah Profil -->
    <div class="panel panel-flat">
      <div class="panel-body">
        <fieldset class="content-group">
          <legend class="text-bold"><i class="icon-user"></i> Ubah Profile</legend>
          <?php echo $this->session->flashdata('msg'); ?>
          <form class="form-horizontal" action="users/profile" method="post">
            <div class="form-group">
              <label class="control-label col-lg-3">Nama Pengguna</label>
              <div class="col-lg-9">
                <input type="text" name="username" class="form-control" value="<?php echo $user->username; ?>" placeholder="Nama Pengguna" readonly>
              </div>
            </div>
            <div class="form-group">
              <label class="control-label col-lg-3">Nama Lengkap</label>
              <div class="col-lg-9">
                <input type="text" name="nama_lengkap" class="form-control" value="<?php echo $user->nama_lengkap; ?>" placeholder="Nama Lengkap" maxlength="100" required>
              </div>
              </div>
                <div class="form-group">
                  <label class="control-label col-lg-3">Email</label>
                  <div class="col-lg-9">
                    <input type="email" name="email" class="form-control" value="<?php echo $user->email; ?>" placeholder="Email" required>
                  </div>
            </div>
            <div class="form-group">
                  <label class="control-label col-lg-3">Level</label>
                  <div class="col-lg-9">
                    <input type="text" name="" class="form-control" value="<?php echo $level; ?>" placeholder="Level User" readonly>
                  </div>
                </div>
        </fieldset>
        <div class="col-md-12">
          <button type="submit" name="btnupdate" class="btn btn-primary" style="float:right;">Simpan</button>
        </div>
      </form>
      </div>
    </div>
  </div>
</div>




    </div>
    <!-- /dashboard content -->
