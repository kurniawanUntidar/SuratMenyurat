<!-- Simple login form -->
<form action="web/login" method="post">
    <div class="panel panel-body login-form">
        <div class="text-center">
            <div class="icon-object border-slate-300 text-slate-300">
                <img src="foto/lambang_cilacap.png" alt="Logo Lambang Cilacap" width="50">
            </div>
        </div>
        <div class="text-center">
            <h2 class="custom-title" style="font-size: 1.5em;">Aplikasi Manajemen Surat Desa Pekuncen</h2>
            <h5 class="content-group">Silahkan Masuk</h5>
            <?php
            echo $this->session->flashdata('msg');
            ?>
        </div>

        <div class="form-group has-feedback has-feedback-left">
            <input type="text" class="form-control" name="username" placeholder="Masukkan Nama Pengguna" required>
            <div class="form-control-feedback">
                <i class="icon-user text-muted"></i>
            </div>
        </div>

        <div class="form-group has-feedback has-feedback-left">
            <input type="password" class="form-control" name="password" placeholder="Masukkan Kata Sandi" required>
            <div class="form-control-feedback">
                <i class="icon-lock2 text-muted"></i>
            </div>
        </div>

        <div class="col-md-12">
            <div class="form-group">
                <button type="submit" name="btnlogin" class="btn btn-primary btn-block">
                    Masuk <i class="icon-circle-right2 position-right"></i>
                </button>
            </div>
        </div>
    </div>
</form>
<!-- /simple login form -->
