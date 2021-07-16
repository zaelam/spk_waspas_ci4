<?= $this->extend('layout') ?>
<?= $this->section('content') ?>
<h1>Hasil</h1>
<div class="card mb-5">
    <div class="card-header text-center text-monospace">
        <h3>Hasil WASPAS</h3>
    </div>
    <div class="card-body">
        <canvas id="lineChart" width="1000" height="400"></canvas>

    </div>
</div>
<div class="card mb-5">
    <div class="card-header text-center text-monospace">
        <h3>Keunggulan E-Commerce</h3>
    </div>
    <div class="card-body">
        <canvas id="barChart1" width="1000" height="400"></canvas>

    </div>
</div>
<?php 
    $data = json_encode($waspas); 
    $data1 = json_encode($commerce1); 
    $data2 = json_encode($commerce2); 
    $data3 = json_encode($commerce3); 
    $data4 = json_encode($commerce4); 
    $data5 = json_encode($commerce5); 

?>
<script>
    var data=<?= $data ?>;
    var ctx = document.getElementById("lineChart").getContext("2d");
    var lineChart = new Chart(ctx, {
        type: "bar",
        data: {
            labels:  ['shopee', 'tokopedia', 'bukalapak', 'lazada', 'blibli'],
    datasets: [{
        label: "Data points",
        data: data,
        backgroundColor: [
        'rgba(254, 98, 51, 0.5)',
        'rgba(3, 172, 14, 0.5)',
        'rgba(227, 30, 82, 0.5)',
        'rgba(15, 35, 142, 0.5)',
        'rgba(0, 149, 218, 0.5)'
    ],
        fill: false,
        borderColor: "rgb(75, 192, 192)",
        lineTension: 0.1
    }]
        },
    options: {
        responsive: false
    }
    });

    var data1=<?= $data1 ?>;
    var data2=<?= $data2 ?>;
    var data3=<?= $data3 ?>;
    var data4=<?= $data4 ?>;
    var data5=<?= $data5 ?>;
    var ctx = document.getElementById("barChart1").getContext("2d");
    var lineChart = new Chart(ctx, {
        type: "bar",
        data: {
            labels: ['Kelengkapan Produk', 'Estimasi Hari', 'User Interface', 'Respon Pelayanan', 'Metode Pembayaran', 'Kemudahan Fitur', 'Kepercayaan', 'Penanganan Komplain', 'Cashback', 'Pengiriman'],
    datasets: [{
        label: "shopee",
        data: data1,
        backgroundColor: [
        'rgba(254, 98, 51, 0.5)'
    ],
        fill: false,
        borderColor: "rgba(254, 98, 51, 0.5)",
        lineTension: 0.1
                },
    {
        label: "tokopedia",
        data: data2,
        backgroundColor: [
        'rgba(3, 172, 14, 0.5)'
    ],
        fill: false,
        borderColor: "rgba(3, 172, 14, 0.5)",
        lineTension: 0.1
                },
        {
        label: "bukalapak",
        data: data3,
        backgroundColor: [
        'rgba(227, 30, 82, 0.5)'
    ],
        fill: false,
        borderColor: "rgba(227, 30, 82, 0.5)",
        lineTension: 0.1
                },
        {
        label: "lazada",
        data: data4,
        backgroundColor: [
        'rgba(15, 35, 142, 0.5)'
    ],
        fill: false,
        borderColor: "rgba(15, 35, 142, 1",
        lineTension: 0.1
                },
        {
        label: "blibli",
        data: data5,
        backgroundColor: [
        'rgba(0, 149, 218, 0.5)'
    ],
        fill: false,
        borderColor: "rgba(0, 149, 218, 0.5)",
        lineTension: 0.1
                }
    ]
        },
    options: {
        responsive: false

    }
    });
</script>


<?= $this->endSection() ?>
