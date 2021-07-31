<?= $this->extend('layout') ?>
<?= $this->section('content') ?>
<h1>Bobot</h1>
<hr style="border:1px solid black;">
<div class="card mb-5">
    <div class="card-header text-center text-monospace">
        <h3>Bobot Kriteria</h3>
    </div>
    <div class="card-body">
        
        <table class="table table-striped">
            <thead>
                <tr>
                    <th>No</th>
                    <th>Kriteria</th>
                    <th>Bobot</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>1</td>
                    <td>Kelengkapan Produk</td>
                    <td>0.1</td>
                </tr>
                <tr>
                    <td>2</td>
                    <td>Estimasi Hari</td>
                    <td>0.1</td>
                </tr>
                <tr>
                    <td>3</td>
                    <td>User Interface/ User Experience</td>
                    <td>0.15</td>
                </tr>
                <tr>
                    <td>4</td>
                    <td>Respon Pelayanan</td>
                    <td>0.08</td>
                </tr>
                <tr>
                    <td>5</td>
                    <td>Metode Pembayaran</td>
                    <td>0.12</td>
                </tr>
                <tr>
                    <td>6</td>
                    <td>Kemudahan Fitur</td>
                    <td>0.2</td>
                </tr>
                <tr>
                    <td>7</td>
                    <td>Kepercayaan/Trust</td>
                    <td>0.05</td>
                </tr>
                <tr>
                    <td>8</td>
                    <td>Penanganan Komplain</td>
                    <td>0.05</td>
                </tr>
                <tr>
                    <td>9</td>
                    <td>Cashback</td>
                    <td>0.1</td>
                </tr>
                <tr>
                    <td>10</td>
                    <td>Pengiriman</td>
                    <td>0.05</td>
                </tr>
            </tbody>
        </table>
    </div>
</div>

<?= $this->endSection() ?>
