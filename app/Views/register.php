<?= $this->extend('layout') ?>
<?= $this->section('content') ?>
    <?php 
        $username = [
            'name' => 'username',
            'id' => 'username',
            'value' => null,
            'class' => 'form-control'
        ];

        $umur = [
            'name' => 'umur',
            'id' => 'umur',
            'value' => null,
            'class' => 'form-control'
        ];

        $pendidikan = [
            'name' => 'pendidikan',
            'id' => 'pendidikan',
            'class' => 'form-control'
        ];
        $opt_pendidikan = [
            'SD'  => 'SD',
            'SMP'  => 'SMP',
            'SMA'  => 'SMA',
            'S1'  => 'S1',
            'S2'  => 'S2'
        ];

        $jk = [
            'name' => 'jenis_kelamin',
            'id' => 'jenis_kelamin',
            'class' => 'form-control'
        ];
        $opt_jk = [
            'laki-laki'  => 'laki-laki',
            'perempuan'  => 'perempuan'
        ];

        $password = [
            'name' => 'password',
            'id' => 'password',
            'class' => 'form-control'
        ];

        $repeatPassword = [
            'name' => 'repeatPassword',
            'id' => 'repeatPassword',
            'class' => 'form-control'
        ];
        $session = session();
        $errors = $session->getFlashdata('errors');
    ?>
    <div class="row">
        <div class="col-8 offset-2">
            <h1>Form register</h1>
            <?php if ($errors != null): ?>
                <div class="alert alert-danger" role="alert">
                    <h4 class="alert-heading">Terjadi Kesalahan</h4>
                    <hr>
                    <p class="mb-0">
                        <?php 
                            foreach ($errors as $err) {
                                echo $err.'<br>';
                            }
                        ?>
                    </p>
                </div>
            <?php endif ?>
            <div class="card">
                <div class="card-body">
                    <?= form_open('Auth/register') ?>
                        <div class="form-group">
                            <?= form_label("Nama", "nama") ?>
                            <?= form_input($username) ?>
                        </div>
                        <div class="form-group">
                            <?= form_label("Umur", "umur") ?>
                            <?= form_input($umur) ?>
                        </div>
                        <div class="form-group">
                            <?= form_label("Pendidikan Terakhir", "pendidikan") ?>
                            <?= form_dropdown($pendidikan, $opt_pendidikan, 'large'); ?>
                        </div>
                        <div class="form-group">
                            <?= form_label("Jenis Kelamin", "jenis kelamin") ?>
                            <?= form_dropdown($jk, $opt_jk, 'large'); ?>
                        </div>
                        <div class="form-group">
                            <?= form_label("Password", "password") ?>
                            <?= form_password($password) ?>
                        </div>
                        <div class="form-group">
                            <?= form_label("Repeat Password", "repeatpassword") ?>
                            <?= form_password($repeatPassword) ?>
                        </div>
                        <div class="text-right">
                            <?= form_submit('submit', 'Submit',['class'=>'btn btn-primary']); ?>
                        </div>
                    <?= form_close() ?>
                </div>
            </div>
        </div>
    </div>
        
<?= $this->endSection() ?>