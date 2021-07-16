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
		$db      = \Config\Database::connect();
		$builder = $db->table('respon');
		$builder->select('id_user');
		$builder->groupBy('id_user');
		$query   = $builder->get(); 
		$resultGB=$query->getResult();
		print_r(count($resultGB));
		// die();
		
		$responModel = new \App\Models\ResponModel();
		$bobotModel = new \App\Models\Bobot();
        // $respons = $responModel->findAll();
		$kriteria=['kelengkapan','estimasi_pengiriman','user_experience','respon_pelayanan','metode_pembayaran','kemudahan_fitur','kepercayaan','penanganan_komplain','cashback','pengiriman'];
		$bobot = $bobotModel->findAll();
        $respons = $responModel->join('marketplace','marketplace.id_marketplace=respon.id_marketplace')
                               ->join('user','user.id=respon.id_user')
							   ->where('respon.id_user',1)
                               ->findAll();
		$respon=$respons[0];
		// dd($respon['kelengkapan']);
        // ====== MENENTUKAN MATRIKS KEPUTUSAN ====
		$no=0;
		foreach($respons as $index=>$respon){
			
			$no1=0;
			while ($no1 < 10) {
				if ($kriteria[$no1] == 'kelengkapan') {
                    $barisKolom[$no][$no1]=$respon->kelengkapan;
				}

				if ($kriteria[$no1] == 'estimasi_pengiriman') {
                    $barisKolom[$no][$no1]=$respon->estimasi_pengiriman;
				}

				if ($kriteria[$no1] == 'user_experience') {
                    $barisKolom[$no][$no1]=$respon->user_experience;
				}

				if ($kriteria[$no1] == 'respon_pelayanan') {
                    $barisKolom[$no][$no1]=$respon->respon_pelayanan;
				}

				if ($kriteria[$no1] == 'metode_pembayaran') {
                    $barisKolom[$no][$no1]=$respon->metode_pembayaran;
				}

				if ($kriteria[$no1] == 'kemudahan_fitur') {
                    $barisKolom[$no][$no1]=$respon->kemudahan_fitur;
				}

				if ($kriteria[$no1] == 'kepercayaan') {
                    $barisKolom[$no][$no1]=$respon->kepercayaan;
				}

				if ($kriteria[$no1] == 'penanganan_komplain') {
                    $barisKolom[$no][$no1]=$respon->penanganan_komplain;
				}

				if ($kriteria[$no1] == 'cashback') {
                    $barisKolom[$no][$no1]=$respon->cashback;
				}

				if ($kriteria[$no1] == 'pengiriman') {
                    $barisKolom[$no][$no1]=$respon-> pengiriman;
				}
				
				$no1++;
			}
			$no++;
		}
        // ===== END MENENTUKAN MATRIKS KEPUTUSAN =====

        // =====  NORMALISASI MATRIKS =====
        for ($b=0; $b < 5 ; $b++) { 
            $baris = $barisKolom[$b];
            $pembagi = max($baris);
            echo $pembagi;
            echo "<br>";
            for ($c=0; $c < 10 ; $c++) { 
                $barisKolom1[$b][$c] = $baris[$c] / $pembagi;
            }
        }
        // =====  END NORMALISASI MATRIKS =====

		// =========== WASPASS ===========
		// var_dump($barisKolom1);
		$bobot = array(0.1,0.1,0.15,0.08,0.12,0.2,0.05,0.05,0.1,0.05);
		for ($d=0; $d < 5 ; $d++) { 
			$totalA=0;
			$totalB=0;
			$baris1 = $barisKolom1[$d];
			$pembagi1 = max($baris1);
			for ($e=0; $e < 10 ; $e++) { 
				// $f = $e - 1;
				$bariskolom2[$d][$e] = $baris1[$e] * $bobot[$e];
				$bariskolom3[$d][$e] = pow($baris1[$e], $bobot[$e]);
				$totalA +=$bariskolom2[$d][$e];
				$totalB *=$bariskolom3[$d][$e];
			}
			echo "<br>";
			echo $totalA;
			echo "<br>";
			echo $totalB;
			echo "<br>";
			$hasilAkhir[$d]=(0.5*$totalA)+(0.5*$totalB);
	
		}
	
		// var_dump($hasilAkhir);
		// echo "<br>";
		// $rsort=rsort($hasilAkhir);
		// var_dump($hasilAkhir);
		// echo "<br>";
        echo "MATRIKS";
        echo "</br>";
		var_dump($barisKolom);
        echo "</br>";
        echo "</br>";
        echo "NORMALISASI MATRIKS";
        echo "</br>";
        var_dump($barisKolom1);
        echo "</br>";
        echo "</br>";
        echo "WASPAS";
        echo "</br>";
        $rsort=rsort($hasilAkhir);
        var_dump($hasilAkhir);
	
		
        // return view('spk/fuzzyfikasi', [
        //     'inferensiRules' => $barisKolom,
        //     'defuzyFikasi' => $nilaiZ,
        // ]);
	}
}
