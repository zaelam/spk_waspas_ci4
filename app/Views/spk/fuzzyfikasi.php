<?= $this->extend('layout') ?>
<?= $this->section('content') ?>
<h1>Matrix X</h1>
<hr style="border:1px solid black;">
<pre>
    <table id="myTable" class="table table-striped">
        <thead>
            <tr>
                <th>No</th>
                <th>Marketplace</th>
                <th>Kelengkapan Produk</th>
                <th>Estimasi Hari</th>
                <th>User Interface</th>
                <th>Respon Pelayanan</th>
                <th>Metode Pembayaran</th>
                <th>Kemudahan Fitur</th>
                <th>Kepercayaan</th>
                <th>Penanganan Komplain</th>
                <th>Cashback</th>
                <th>Pengiriman</th>
            </tr>
        </thead>
        <tbody>
        <?php 
        $market=['shopee','tokopedia','bukalapak','lazada','blibli'];
        foreach($matrixX as $index=>$inferensi): 
            foreach($inferensi as $index=>$inferensi1): ?>
                <tr>
                    <td><?= ($index+1) ?></td>
                    <td><?= $market[$index] ?></td>
                    <td><?= $inferensi1[0] ?></td>
                    <td><?= $inferensi1[1] ?></td>
                    <td><?= $inferensi1[2] ?></td>
                    <td><?= $inferensi1[3] ?></td>
                    <td><?= $inferensi1[4] ?></td>
                    <td><?= $inferensi1[5] ?></td>
                    <td><?= $inferensi1[6] ?></td>
                    <td><?= $inferensi1[7] ?></td>
                    <td><?= $inferensi1[8] ?></td>
                    <td><?= $inferensi1[9] ?></td>
                </tr>
            <?php endforeach ?>
        <?php endforeach ?>
        </tbody>
    </table>
</pre>
<br>
<h1>Normalisasi Matrix</h1>
<hr style="border:1px solid black;">
<pre>
    <table id="myTable1" class="table table-striped">
        <thead>
            <tr>
                <th>No</th>
                <th>Marketplace</th>
                <th>Kelengkapan Produk</th>
                <th>Estimasi Hari</th>
                <th>User Interface</th>
                <th>Respon Pelayanan</th>
                <th>Metode Pembayaran</th>
                <th>Kemudahan Fitur</th>
                <th>Kepercayaan</th>
                <th>Penanganan Komplain</th>
                <th>Cashback</th>
                <th>Pengiriman</th>
            </tr>
        </thead>
        <tbody>
        <?php 
        $market=['shopee','tokopedia','bukalapak','lazada','blibli'];
        foreach($normalisasiMatrix as $index=>$normalisasi):
            foreach($normalisasi as $index=>$normalisasi1): ?>
                <tr>
                    <td><?= ($index+1) ?></td>
                    <td><?= $market[$index] ?></td>
                    <td><?= $normalisasi1[0] ?></td>
                    <td><?= $normalisasi1[1] ?></td>
                    <td><?= $normalisasi1[2] ?></td>
                    <td><?= $normalisasi1[3] ?></td>
                    <td><?= $normalisasi1[4] ?></td>
                    <td><?= $normalisasi1[5] ?></td>
                    <td><?= $normalisasi1[6] ?></td>
                    <td><?= $normalisasi1[7] ?></td>
                    <td><?= $normalisasi1[8] ?></td>
                    <td><?= $normalisasi1[9] ?></td>
                </tr>
            <?php endforeach ?>
        <?php endforeach ?>
        </tbody>
    </table>
</pre>
</br>

<h1>WASPAS</h1>
<hr style="border:1px solid black;">
<table class="table table-striped">
    <thead>
        <tr>
            <th>No</th>
            <th>Marketplace</th>
            <th>Hasil</th>
            <!-- <th>Keterangan</th> -->
        </tr>
    </thead>
    <tbody>
    <?php 
    $market=['shopee','tokopedia','bukalapak','lazada','blibli'];
        foreach($waspas as $index=>$defuzy): ?>
            <tr>
                <td><?= ($index+1) ?></td>
                <td><?= $market[$index] ?></td>
                <td><?= $defuzy ?></td>
                <!-- <td><?= 'Baik' ?></td> -->
            </tr>
        <?php endforeach ?>
    </tbody>
</table>
<script>
    $(document).ready(function () {
        $('#myTable').DataTable();
        $('#myTable1').DataTable();
    });
</script>
<?= $this->endSection() ?>