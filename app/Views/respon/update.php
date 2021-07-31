<?= $this->extend('layout') ?>
<?= $this->section('content') ?>
    <?php 
        $id_marketplace = [
            'name' => 'id_marketplace',
            'id' => 'id_marketplace',
            'value' => $respon->id_marketplace,
            'class' => 'form-control',
        ];
        $options = [
            01  => 'Shopee',
            02  => 'Tokopedia',
            03  => 'Bukalapak',
            04  => 'Lazada',
            05  => 'Blibli'
        ];

        $id_frekuensi = [
            'name' => 'frekuensi',
            'id' => 'frekuensi',
            'value' => $respon->frekuensi,
            'class' => 'form-control'
        ];

        $opt_frekuensi = [
            'jarang'  => 'jarang',
            'sering'  => 'sering',
            'sangat sering'  => 'sangat sering'
        ];

        $kelengkapan = [
            'name' => 'kelengkapan',
            'id' => 'kelengkapan',
            'value' => $respon->kelengkapan,
            'class' => 'form-control'
        ];
        $opt_kelengkapan = [
            '0'  => 'Tidak Lengkap',
            '0.2'  => 'Kurang Lengkap',
            '0.4'  => 'Cukup Lengkap',
            '0.6'  => 'Lengkap',
            '0.8'  => 'Sangat Lengkap'
        ];

        $estimasi_pengiriman = [
            'name' => 'estimasi_pengiriman',
            'id' => 'estimasi_pengiriman',
            'value' => $respon->estimasi_pengiriman,
            'class' => 'form-control'
        ];
        $opt_estimasi_pengiriman = [
            '0.8'  => 'Sesuai',
            '0'  => 'Tidak Sesuai'
        ];

        $user_experience = [
            'name' => 'user_experience',
            'id' => 'user_experience',
            'value' => $respon->user_experience,
            'class' => 'form-control'
        ];
        $opt_user_experience = [
            '0'  => 'Tidak Baik',
            '0.2'  => 'Kurang Baik',
            '0.4'  => 'Cukup Baik',
            '0.6'  => 'Baik',
            '0.8'  => 'Sangat Baik'
        ];

        $respon_pelayanan = [
            'name' => 'respon_pelayanan',
            'value' => $respon->respon_pelayanan,
            'id' => 'respon_pelayanan',
            'class' => 'form-control'
        ];
        $opt_respon_pelayanan = [
            '0'  => 'Tidak Baik',
            '0.2'  => 'Kurang Baik',
            '0.4'  => 'Cukup Baik',
            '0.6'  => 'Baik',
            '0.8'  => 'Sangat Baik'
        ];

        $metode_pembayaran = [
            'name' => 'metode_pembayaran',
            'id' => 'metode_pembayaran',
            'value' => $respon->metode_pembayaran,
            'class' => 'form-control'
        ];

        $opt_metode_pembayaran = [
            '0'  => 'Tidak Mudah',
            '0.2'  => 'Kurang Mudah',
            '0.4'  => 'Cukup Mudah',
            '0.6'  => 'Mudah',
            '0.8'  => 'Sangat Mudah'
        ];

        $kemudahan_fitur = [
            'name' => 'kemudahan_fitur',
            'id' => 'kemudahan_fitur',
            'value' => $respon->kemudahan_fitur,
            'class' => 'form-control'
        ];
        $opt_kemudahan_fitur = [
            '0'  => 'Tidak Mudah',
            '0.2'  => 'Kurang Mudah',
            '0.4'  => 'Cukup Mudah',
            '0.6'  => 'Mudah',
            '0.8'  => 'Sangat Mudah'
        ];

        $kepercayaan = [
            'name' => 'kepercayaan',
            'id' => 'kepercayaan',
            'value' => $respon->kepercayaan,
            'class' => 'form-control'
        ];
        $opt_kepercayaan = [
            '0'  => 'Tidak Percaya',
            '0.2'  => 'Kurang Percaya',
            '0.4'  => 'Cukup Percaya',
            '0.6'  => 'Percaya',
            '0.8'  => 'Sangat Percaya'
        ];

        $penanganan_komplain = [
            'name' => 'penanganan_komplain',
            'id' => 'penanganan_komplain',
            'value' => $respon->penanganan_komplain,
            'class' => 'form-control'
        ];
        $opt_penanganan_komplain = [
            '0'  => 'Buruk Sekali',
            '0.2'  => 'Buruk',
            '0.4'  => 'Sedang',
            '0.6'  => 'Sangat Baik',
            '0.8'  => 'Sangat Baik Sekali'
        ];

        $cashback = [
            'name' => 'cashback',
            'id' => 'cashback',
            'value' => $respon->cashback,
            'class' => 'form-control'
        ];
        $opt_cashback = [
            '0'  => 'Tidak Sesuai',
            '0.2'  => 'Kurang Sesuai',
            '0.4'  => 'Cukup Sesuai',
            '0.6'  => 'Sesuai',
            '0.8'  => 'Sangat Sesuai'
        ];

        $pengiriman = [
            'name' => 'pengiriman',
            'id' => 'pengiriman',
            'value' => $respon->pengiriman,
            'class' => 'form-control'
        ];
        $opt_pengiriman = [
            '0'  => 'Tidak Baik',
            '0.2'  => 'Kurang Baik',
            '0.4'  => 'Cukup Baik',
            '0.6'  => 'Baik',
            '0.8'  => 'Sangat Baik'
        ];

        $submit = [
            'name' => 'submit',
            'id' => 'submit',
            'value' => 'update',
            'type' => 'submit',
            'class' => 'btn btn-success'
        ];

        $session = session();
        $errors = $session->getFlashdata('errors');
    ?>
    <h1>Update Respon</h1>
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
        <!-- <div class="card-header">
        </div> -->
        <div class="card-body">
            <?= form_open_multipart('respon/update/'.$respon->id_respon) ?>
                <div class="row">
                    <div class="col-6">
                        <div class="form-group">
                            <?= form_label("E-Commerce", "e-commerce") ?>
                            <?= form_dropdown($id_marketplace, $options, $respon->id_marketplace, 'large'); ?>
                        </div>
                        <div class="form-group">
                            <?= form_label("Frekuensi", "Frekuensi") ?>
                            <?= form_dropdown($id_frekuensi, $opt_frekuensi, $respon->frekuensi, 'large'); ?>
                        </div>
                        <div class="form-group">
                            <?= form_label("Kelengkapan", "kelengkapan") ?>
                            <?= form_dropdown($kelengkapan, $opt_kelengkapan, $respon->kelengkapan, 'large'); ?>
                        </div>
                        <div class="form-group">
                            <?= form_label("Estimasi Pengiriman", "estimasi pengiriman") ?>
                            <?= form_dropdown($estimasi_pengiriman, $opt_estimasi_pengiriman, $respon->estimasi_pengiriman,'large'); ?>
                        </div>
                        <div class="form-group">
                            <?= form_label("User Experience", "user experience") ?>
                            <?= form_dropdown($user_experience, $opt_user_experience, $respon->user_experience, 'large'); ?>
                        </div>
                        <div class="form-group">
                            <?= form_label("Respon Pelayanan", "respon pelayanan") ?>
                            <?= form_dropdown($respon_pelayanan, $opt_respon_pelayanan, $respon->respon_pelayanan, 'large'); ?>
                        </div>
                        <div class="form-group">
                            <?= form_label("Metode Pembayaran", "metode pembayaran") ?>
                            <?= form_dropdown($metode_pembayaran, $opt_metode_pembayaran, $respon->metode_pembayaran, 'large'); ?>
                        </div>
                    </div>
                    <div class="col-6">
                        <div class="form-group">
                            <?= form_label("Kemudahan Fitur", "kemudahan fitur") ?>
                            <?= form_dropdown($kemudahan_fitur, $opt_kemudahan_fitur, $respon->kemudahan_fitur,'large'); ?>
                        </div>
                        <div class="form-group">
                            <?= form_label("Kepercayaan", "kepercayaan") ?>
                            <?= form_dropdown($kepercayaan, $opt_kepercayaan, $respon->kepercayaan,'large'); ?>
                        </div>
                        <div class="form-group">
                            <?= form_label("Penanganan Komplain", "penanganan komplain") ?>
                            <?= form_dropdown($penanganan_komplain, $opt_penanganan_komplain, $respon->penanganan_komplain,'large'); ?>
                        </div>
                        <div class="form-group">
                            <?= form_label("Cashback", "cashback") ?>
                            <?= form_dropdown($cashback, $opt_cashback, $respon->cashback,'large'); ?>
                        </div>
                        <div class="form-group">
                            <?= form_label("Pengiriman", "pengiriman") ?>
                            <?= form_dropdown($pengiriman, $opt_pengiriman, $respon->pengiriman,'large'); ?>
                        </div>
                        <div class="text-right">
                            <?= form_submit($submit); ?>
                        </div>
                    </div>

                </div>
            <?= form_close() ?>
        </div>
    </div>
<?= $this->endSection() ?>