<?php

namespace App\Controllers;

use App\Controllers\BaseController;

class Fuzzytsukamoto extends BaseController
{
	public function __construct(){
        helper('form');
        $this->validation = \Config\Services::validation();
        $this->session = session();
    }

	public function index()
	{
		$responModel = new \App\Models\ResponModel();
		$bobotModel = new \App\Models\Bobot();
        // $respons = $responModel->findAll();
		$kriteria=['kelengkapan','estimasi_pengiriman','user_experience','respon_pelayanan','metode_pembayaran','kemudahan_fitur','kepercayaan','penanganan_komplain','cashback','pengiriman'];
		$bobot = $bobotModel->findAll();
        $respons = $responModel->join('marketplace','marketplace.id_marketplace=respon.id_marketplace')
                               ->join('user','user.id=respon.id_user')
                               ->findAll();
		$respon=$respons[0];
		// dd($respon['kelengkapan']);
		$no=0;
		foreach($respons as $index=>$respon){
			// echo $no;
			// var_dump($respon->kelengkapan);
			// echo '<br>';
			// echo '<br>';
			$no1=0;
			while ($no1 < 10) {
				if ($kriteria[$no1] == 'kelengkapan') {
			// 		if ($respon->kelengkapan == 'tidak lengkap') {
			// 			$barisKolom[$no][$no1]=2.2-1/2-1;
			// 		}
					// echo var_dump($respon->kelengkapan);
					// echo '<br>';
					// echo $no.'-'.$no1;
					// echo '<br>';
					switch ($respon->kelengkapan) {
						case '0.5':
							$barisKolom[$no][$no1]=(0.5-0)/(1-0);
							$nilaiA[$no][$no1]=0;
						  	break;
						case '1.2':
							$array[0]=(1.2-1)/(2-1);
							$array[1]=(2-1.2)/(3-2);
							$nilaiA[$no][$no1]=1;
							$barisKolom[$no][$no1]=min($array);
						  	break;
						case '2.2':
							$array[0]=(2.2-2)/(3-2);
							$array[1]=(3-2.2)/(4-3);
							$nilaiA[$no][$no1]=2;
							$barisKolom[$no][$no1]=min($array);
							break;
						case '3.2':
							$array[0]=(3.2-3)/(4-3);
							$array[1]=(4-3.2)/(5-4);
							$nilaiA[$no][$no1]=3;
							$barisKolom[$no][$no1]=min($array);
							break;
						case '4.2':
							$barisKolom[$no][$no1]=(6-4.2)/(6-4);
							$nilaiA[$no][$no1]=4;
							break;
					  }
				}

				if ($kriteria[$no1] == 'estimasi_pengiriman') {
					switch ($respon->estimasi_pengiriman) {
						case '1.3':
							$array[0]=(1.3-1)/(2-1);
							$array[1]=(2-1.3)/(3-2);
							$nilaiA[$no][$no1]=1;
							$barisKolom[$no][$no1]=min($array);
							break;
						case '2.3':
							$array[0]=(2.3-2)/(3-2);
							$array[1]=(3-2.3)/(4-3);
							$nilaiA[$no][$no1]=2;
							$barisKolom[$no][$no1]=min($array);
							break;
						}
				}
				if ($kriteria[$no1] == 'user_experience') {
					switch ($respon->user_experience) {
						case '0.6':
							$barisKolom[$no][$no1]=(0.6-0)/(1-0);
							$nilaiA[$no][$no1]=0;
							break;
						case '1.4':
							$array[0]=(1.4-1)/(2-1);
							$array[1]=(2-1.4)/(3-2);
							$nilaiA[$no][$no1]=1;
							$barisKolom[$no][$no1]=min($array);
							break;
						case '2.4':
							$array[0]=(2.4-2)/(3-2);
							$array[1]=(3-2.4)/(4-3);
							$nilaiA[$no][$no1]=2;
							$barisKolom[$no][$no1]=min($array);
							break;
						case '3.3':
							$array[0]=(3.2-3)/(4-3);
							$array[1]=(4-3.2)/(5-4);
							$nilaiA[$no][$no1]=3;
							$barisKolom[$no][$no1]=min($array);
							break;
						case '4.3':
							$barisKolom[$no][$no1]=(6-4.2)/(6-4);
							$nilaiA[$no][$no1]=4;
							break;
						}
				}
				if ($kriteria[$no1] == 'respon_pelayanan') {
					switch ($respon->respon_pelayanan) {
						case '0.7':
							$barisKolom[$no][$no1]=(0.7-0)/(1-0);
							$nilaiA[$no][$no1]=0;
							break;
						case '1.5':
							$array[0]=(1.5-1)/(2-1);
							$array[1]=(2-1.5)/(3-2);
							$nilaiA[$no][$no1]=1;
							$barisKolom[$no][$no1]=min($array);
							break;
						case '2.5':
							$array[0]=(2.5-2)/(3-2);
							$array[1]=(3-2.5)/(4-3);
							$nilaiA[$no][$no1]=2;
							$barisKolom[$no][$no1]=min($array);
							break;
						case '3.4':
							$array[0]=(3.4-3)/(4-3);
							$array[1]=(4-3.4)/(5-4);
							$nilaiA[$no][$no1]=3;
							$barisKolom[$no][$no1]=min($array);
							break;
						case '4.4':
							$barisKolom[$no][$no1]=(6-4.4)/(6-4);
							$nilaiA[$no][$no1]=4;
							break;
						}
				}
				if ($kriteria[$no1] == 'metode_pembayaran') {
					switch ($respon->metode_pembayaran) {
						case '0.8':
							$barisKolom[$no][$no1]=(0.8-0)/(1-0);
							$nilaiA[$no][$no1]=0;
							break;
						case '1.6':
							$array[0]=(1.6-1)/(2-1);
							$array[1]=(2-1.6)/(3-2);
							$nilaiA[$no][$no1]=1;
							$barisKolom[$no][$no1]=min($array);
							break;
						case '2.6':
							$array[0]=(2.6-2)/(3-2);
							$array[1]=(3-2.6)/(4-3);
							$nilaiA[$no][$no1]=2;
							$barisKolom[$no][$no1]=min($array);
							break;
						case '3.5':
							$array[0]=(3.5-3)/(4-3);
							$array[1]=(4-3.5)/(5-4);
							$nilaiA[$no][$no1]=3;
							$barisKolom[$no][$no1]=min($array);
							break;
						case '4.5':
							$barisKolom[$no][$no1]=(6-4.5)/(6-4);
							$nilaiA[$no][$no1]=4;
							break;
						}
				}
				if ($kriteria[$no1] == 'kemudahan_fitur') {
					switch ($respon->kemudahan_fitur) {
						case '0.9':
							$barisKolom[$no][$no1]=(0.9-0)/(1-0);
							$nilaiA[$no][$no1]=0;
							break;
						case '1.7':
							$array[0]=(1.7-1)/(2-1);
							$array[1]=(2-1.7)/(3-2);
							$nilaiA[$no][$no1]=1;
							$barisKolom[$no][$no1]=min($array);
							break;
						case '2.7':
							$array[0]=(2.7-2)/(3-2);
							$array[1]=(3-2.7)/(4-3);
							$nilaiA[$no][$no1]=2;
							$barisKolom[$no][$no1]=min($array);
							break;
						case '3.6':
							$array[0]=(3.6-3)/(4-3);
							$array[1]=(4-3.6)/(5-4);
							$nilaiA[$no][$no1]=3;
							$barisKolom[$no][$no1]=min($array);
							break;
						case '4.6':
							$barisKolom[$no][$no1]=(6-4.6)/(6-4);
							$nilaiA[$no][$no1]=4;
							break;
						}
				}
				if ($kriteria[$no1] == 'kepercayaan') {
					switch ($respon->kepercayaan) {
						case '1.1':
							$barisKolom[$no][$no1]=(1.1-0)/(1-0);
							$nilaiA[$no][$no1]=0;
							break;
						case '1.8':
							$array[0]=(1.8-1)/(2-1);
							$array[1]=(2-1.8)/(3-2);
							$nilaiA[$no][$no1]=1;
							$barisKolom[$no][$no1]=min($array);
							break;
						case '2.8':
							$array[0]=(2.8-2)/(3-2);
							$array[1]=(3-2.8)/(4-3);
							$nilaiA[$no][$no1]=2;
							$barisKolom[$no][$no1]=min($array);
							break;
						case '3.7':
							$array[0]=(3.7-3)/(4-3);
							$array[1]=(4-3.7)/(5-4);
							$nilaiA[$no][$no1]=3;
							$barisKolom[$no][$no1]=min($array);
							break;
						case '4.7':
							$barisKolom[$no][$no1]=(6-4.7)/(6-4);
							$nilaiA[$no][$no1]=4;
							break;
						}
				}
				if ($kriteria[$no1] == 'penanganan_komplain') {
					switch ($respon->penanganan_komplain) {
						case '1.2':
							$barisKolom[$no][$no1]=(1.2-0)/(1-0);
							$nilaiA[$no][$no1]=0;
							break;
						case '1.9':
							$array[0]=(1.9-1)/(2-1);
							$array[1]=(2-1.9)/(3-2);
							$nilaiA[$no][$no1]=1;
							$barisKolom[$no][$no1]=min($array);
							break;
						case '2.9':
							$array[0]=(2.9-2)/(3-2);
							$array[1]=(3-2.9)/(4-3);
							$nilaiA[$no][$no1]=2;
							$barisKolom[$no][$no1]=min($array);
							break;
						case '3.8':
							$array[0]=(3.8-3)/(4-3);
							$array[1]=(4-3.8)/(5-4);
							$nilaiA[$no][$no1]=3;
							$barisKolom[$no][$no1]=min($array);
							break;
						case '4.8':
							$barisKolom[$no][$no1]=(6-4.8)/(6-4);
							$nilaiA[$no][$no1]=4;
							break;
						}
				}
				if ($kriteria[$no1] == 'cashback') {
					switch ($respon->cashback) {
						case '1.3':
							$barisKolom[$no][$no1]=(1.3-0)/(1-0);
							$nilaiA[$no][$no1]=0;
							break;
						case '2.1':
							$array[0]=(2.1-1)/(2-1);
							$array[1]=(2-2.1)/(3-2);
							$nilaiA[$no][$no1]=1;
							$barisKolom[$no][$no1]=min($array);
							break;
						case '3.1':
							$array[0]=(3.1-2)/(3-2);
							$array[1]=(3-3.1)/(4-3);
							$nilaiA[$no][$no1]=2;
							$barisKolom[$no][$no1]=min($array);
							break;
						case '3.9':
							$array[0]=(3.9-3)/(4-3);
							$array[1]=(4-3.9)/(5-4);
							$nilaiA[$no][$no1]=3;
							$barisKolom[$no][$no1]=min($array);
							break;
						case '4.9':
							$barisKolom[$no][$no1]=(6-4.9)/(6-4);
							$nilaiA[$no][$no1]=4;
							break;
						}
				}
				if ($kriteria[$no1] == 'pengiriman') {
					switch ($respon-> pengiriman) {
						case '1.4':
							$barisKolom[$no][$no1]=(1.4-0)/(1-0);
							$nilaiA[$no][$no1]=0;
							break;
						case '2.2':
							$array[0]=(2.2-1)/(2-1);
							$array[1]=(2-2.2)/(3-2);
							$nilaiA[$no][$no1]=1;
							$barisKolom[$no][$no1]=min($array);
							break;
						case '3.2':
							$array[0]=(3.2-2)/(3-2);
							$array[1]=(3-3.2)/(4-3);
							$nilaiA[$no][$no1]=2;
							$barisKolom[$no][$no1]=min($array);
							break;
						case '4.1':
							$array[0]=(4.1-3)/(4-3);
							$array[1]=(4-4.1)/(5-4);
							$nilaiA[$no][$no1]=3;
							$barisKolom[$no][$no1]=min($array);
							break;
						case '5.1':
							$barisKolom[$no][$no1]=(6-5.1)/(6-4);
							$nilaiA[$no][$no1]=1;
							break;
						}
				}
				// echo $kriteria[$no];
				// echo '<br>';
				// $kriteria1 = $respon->kelengkapan;
				// echo $kriteria1;
				$no1++;
			}
			$no++;
		}
		// echo $kriteria[0];
		// ====== DEFUZZY FIKASI ======
		for ($i=0; $i < 5; $i++) {
			$total=0; 
			$totalA=0;
			for ($j=0; $j < 10; $j++) { 
				$total +=$barisKolom[$i][$j] * $nilaiA[$i][$j];
				$totalA += $nilaiA[$i][$j];
			}
			$nilaiZ[$i]=$total/$totalA * 100;
		}
		// var_dump($nilaiZ);
		// echo '<br>';
		// var_dump($nilaiA[0]);
		// echo '<br>';
		// dd($barisKolom[0]);

		// =========== WASPASS ===========
		for ($b=0; $b < 5 ; $b++) { 
			$baris = $barisKolom[$b];
			$pembagi = max($baris);
			echo $pembagi;
			echo "<br>";
			for ($c=0; $c < 10 ; $c++) { 
				$bariskolom1[$b][$c] = $baris[$c] / $pembagi;
			}
		}
		var_dump($bariskolom1);
		$bobot = array(0.1,0.1,0.15,0.08,0.12,0.2,0.05,0.05,0.1,0.05);
		for ($d=1; $d <= 5 ; $d++) { 
			$totalA=0;
			$totalB=1;
			$baris1 = $bariskolom1[$d];
			$pembagi1 = max($baris1);
			for ($e=1; $e <= 10 ; $e++) { 
				$f = $e - 1;
				$bariskolom1[$d][$e] = $baris1[$e] * $bobot[$f];
				$bariskolom2[$d][$e] = pow($baris1[$e], $bobot[$f]);
				$totalA +=$bariskolom1[$d][$e];
				$totalB *=$bariskolom2[$d][$e];
			}
			echo "<br>";
			echo $totalA;
			echo "<br>";
			echo $totalB;
			echo "<br>";
			$hasilAkhir[]=(0.5*$totalA)+(0.5*$totalB);
	
		}
	
		var_dump($hasilAkhir);
		echo "<br>";
		$rsort=rsort($hasilAkhir);
		var_dump($hasilAkhir);
		echo "<br>";
		var_dump($bariskolom2);
	
		
        return view('spk/fuzzyfikasi', [
            'inferensiRules' => $barisKolom,
            'defuzyFikasi' => $nilaiZ,
        ]);
	}
}
