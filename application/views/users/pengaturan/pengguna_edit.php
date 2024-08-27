<?php
$user = $query; ?>
<!-- Main content -->
<div class="content-wrapper">
  <!-- Content area -->
  <div class="content">

    <!-- Dashboard content -->
    <div class="row">
      <div class="col-md-3"></div>
      <div class="col-md-6">
        <div class="panel panel-flat">

            <div class="panel-body">

              <fieldset class="content-group">
                <legend class="text-bold"><i class="icon-user"></i> Edit Pengguna</legend>
                <?php
                echo $this->session->flashdata('msg');
                ?>
                <form class="form-horizontal" action="" method="post">
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
                    <label class="control-label col-lg-3">Level</label>
                    <div class="col-lg-9">
                      <select class="form-control" name="level" required>
                        <option value="">- Pilih Level Pengguna -</option>
                        <option value="admin" <?php if($user->level == "admin"){echo "selected";} ?>>Admin</option>
                        <option value="user" <?php if($user->level == "user"){echo "selected";} ?>>User</option>
                      </select>
                    </div>
                  </div>

                  <a href="users/pengguna" class="btn btn-default"><< Kembali</a>
                  <button type="submit" name="btnupdate" class="btn btn-primary" style="float:right;">Update</button>
                </form>

              </fieldset>


            </div>

        </div>
      </div>
    </div>
    <!-- /dashboard content -->
