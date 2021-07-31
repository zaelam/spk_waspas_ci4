<?= $this->extend('layout') ?>
<?= $this->section('content') ?>
<h1>Respon</h1>
<pre>
    <table class="table" id="myTable">
        <thead>
            <th>No</th>
            <th>Nama</th>
            <th>Umur</th>
            <th>Pendidikan</th>
            <th>Jenis Kelamin</th>
            <th>Frekuensi</th>
            <th>E-Commerce</th>
            <th>Kelengkapan</th>
            <th>Kecepatan</th>
            <th>Pengalaman User</th>
            <th>Pelayanan</th>
            <th>Pembayaran</th>
            <th>Kemudahan Fitur</th>
            <th>Kepercayaan</th>
            <th>Penangan Komplain</th>
            <th>Cashback</th>
            <th>Pengiriman</th>
            <th>Aksi</th>
            <!-- <th>Aksi</th> -->
        </thead>
        <tbody>
            <?php foreach($respons as $index=>$respon): ?>
                <tr>
                    <td><?= ($index+1) ?></td>
                    <td><?= $respon->nama ?></td>
                    <td><?= $respon->umur ?></td>
                    <td><?= $respon->pendidikan ?></td>
                    <td><?= $respon->jenis_kelamin ?></td>
                    <td><?= $respon->frekuensi ?></td>
                    <td><?= $respon->nama_marketplace ?></td>
                    <td><?= $respon->kelengkapan ?></td>
                    <td><?= $respon->estimasi_pengiriman ?></td>
                    <td><?= $respon->user_experience ?></td>
                    <td><?= $respon->respon_pelayanan ?></td>
                    <td><?= $respon->metode_pembayaran ?></td>
                    <td><?= $respon->kemudahan_fitur ?></td>
                    <td><?= $respon->kepercayaan ?></td>
                    <td><?= $respon->penanganan_komplain ?></td>
                    <td><?= $respon->cashback ?></td>
                    <td><?= $respon->pengiriman ?></td>
                    <td><a href="<?= site_url('respon/update/'.$respon->id_respon) ?>" class="badge badge-success">Update</a> <a href="<?= site_url('respon/delete/'.$respon->id_respon) ?>" class="badge badge-danger">delete</a></td>
                    
                </tr>
            <?php endforeach ?>
        </tbody>
    </table>
</pre>

<script>
    $(document).ready(function () {
        $('#myTable').DataTable();
        $('#myTable1').DataTable();
    });
</script>

<?= $this->endSection() ?>