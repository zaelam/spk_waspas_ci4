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
		// print_r($resultGB);
		// die();
		
		$responModel = new \App\Models\ResponModel();
		$bobotModel = new \App\Models\Bobot();
        // $respons = $responModel->findAll();
		for ($i=1; $i <= count($resultGB); $i++) { 

			$kriteria=['kelengkapan','estimasi_pengiriman','user_experience','respon_pelayanan','metode_pembayaran','kemudahan_fitur','kepercayaan','penanganan_komplain','cashback','pengiriman'];
			$bobot = $bobotModel->findAll();
			$respons = $responModel->join('marketplace','marketplace.id_marketplace=respon.id_marketplace')
								->join('user','user.id=respon.id_user')
								->where('respon.id_user',$i)
								->findAll();
			// $respon=$respons[0];
			// dd($respon);

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

			$barisKolomAll[$i] = $barisKolom;
			// ===== END MENENTUKAN MATRIKS KEPUTUSAN =====

			// =====  NORMALISASI MATRIKS =====
			for ($b=0; $b < 5 ; $b++) { 
				$baris = $barisKolom[$b];
				$pembagi = max($baris);
				// echo $pembagi;
				// echo "<br>";
				for ($c=0; $c < 10 ; $c++) { 
					$barisKolom1[$b][$c] = $baris[$c] / $pembagi;
				}
			}

			$barisKolom1All[$i] = $barisKolom1;
			// =====  END NORMALISASI MATRIKS =====

			// =========== WASPASS ===========
			// var_dump($barisKolom1);
			$bobot = array(0.1,0.1,0.15,0.08,0.12,0.2,0.05,0.05,0.1,0.05);
			for ($d=0; $d < 5 ; $d++) { 
				$totalA=0;
				$totalB=1;
				$baris1 = $barisKolom1[$d];
				$pembagi1 = max($baris1);
				for ($e=0; $e < 10 ; $e++) { 
					// $f = $e - 1;
					$bariskolom2[$d][$e] = $baris1[$e] * $bobot[$e];
					$bariskolom3[$d][$e] = pow($baris1[$e], $bobot[$e]);
					$totalA +=$bariskolom2[$d][$e];
					$totalB *=$bariskolom3[$d][$e];
					// echo "<br>";
					// echo $baris1[$e];
					// echo "<br>";
					// echo $bobot[$e];
					// echo "<br>";
					// echo $bariskolom2[$d][$e];;
					// echo "<br>";
				}
				$totalAfix[$d]=0.5*$totalA;
				$totalBfix[$d]=0.5*$totalB;
				
				// echo "<br>";
				// echo "TOTAL A & B";
				// echo "<br>";
				// echo $totalA;
				// echo "<br>";
				// echo $totalB;
				// echo "<br>";
				$hasilAkhir[$d]=(0.5*$totalA)+(0.5*$totalB);
		
			}
			$angka=array(1,2,3,4,5,6,7,8,9,10);
			$angka1=array(1,2,3,4,5,6,7,8,9,10);

			for($k=0; $k < 5; $k++){
				$hasil[$i][$k]=$totalAfix[$k] + $totalBfix[$k];
				// echo $hasil[$i]. "</br>";
			}
			
		}
		// var_dump($hasilAkhir);
		// echo "<br>";
		// $rsort=rsort($hasilAkhir);
		// var_dump($hasilAkhir);
		// echo "<br>";
        // echo "MATRIKS";
        // echo "</br>";
		// var_dump($barisKolom);
        // echo "</br>";
        // echo "</br>";
        // echo "NORMALISASI MATRIKS";
        // echo "</br>";
        // var_dump($barisKolom1);
        // echo "</br>";
        // echo "</br>";
        // echo "WASPAS";
        // echo "</br>";
        // $rsort=rsort($hasilAkhir);
        // var_dump($totalAfix);
		// echo "</br>";
		// var_dump($totalBfix);
		// echo "</br>";
		// var_dump($hasil);
		// echo "</br>";
		// var_dump(count($hasil));
		// ===== HASIL WASPAS =====
		for($y=0; $y < 5; $y++){
			$nilai=0;
			for($z=1; $z <= count($hasil); $z++){
				$nilai +=$hasil[$z][$y];
				// echo $hasil[$i]. "</br>";
			}
			$nilai1=$nilai/count($hasil);
			$hasilFix[$y]=$nilai1;
		}

		// echo "</br>";
		// echo "HASIL AKHIR WASPAS";
		// echo "</br>";
		// var_dump($hasilFix);

		// echo "</br>";
		// var_dump($barisKolomAll);
		// echo "</br>";
		// var_dump($barisKolom1All);
	
		
        return view('spk/fuzzyfikasi', [
            'matrixX' => $barisKolomAll,
            'normalisasiMatrix' => $barisKolom1All,
			'waspas' => $hasilFix,
			'page' => 'proses',
        ]);
	}

	public function hasil()
	{
		$db      = \Config\Database::connect();
		$builder = $db->table('respon');
		$builder->select('id_user');
		$builder->groupBy('id_user');
		$query   = $builder->get(); 
		$resultGB=$query->getResult();
		
		$responModel = new \App\Models\ResponModel();
		$bobotModel = new \App\Models\Bobot();
		for ($i=1; $i <= count($resultGB); $i++) { 

			$kriteria=['kelengkapan','estimasi_pengiriman','user_experience','respon_pelayanan','metode_pembayaran','kemudahan_fitur','kepercayaan','penanganan_komplain','cashback','pengiriman'];
			$bobot = $bobotModel->findAll();
			$respons = $responModel->join('marketplace','marketplace.id_marketplace=respon.id_marketplace')
								// ->join('user','user.id=respon.id_user')
								->where('respon.id_user',$i)
								->findAll();

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
				// echo $pembagi;
				// echo "<br>";
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
				$totalB=1;
				$baris1 = $barisKolom1[$d];
				$pembagi1 = max($baris1);
				for ($e=0; $e < 10 ; $e++) { 
					// $f = $e - 1;
					$bariskolom2[$d][$e] = $baris1[$e] * $bobot[$e];
					$bariskolom3[$d][$e] = pow($baris1[$e], $bobot[$e]);
					$totalA +=$bariskolom2[$d][$e];
					$totalB *=$bariskolom3[$d][$e];

				}
				$totalAfix[$d]=0.5*$totalA;
				$totalBfix[$d]=0.5*$totalB;
				
				$hasilAkhir[$d]=(0.5*$totalA)+(0.5*$totalB);
		
			}
			// echo "</br>";
			$nilaiRespon[$i]=$bariskolom2;
			// echo "</br>";
			$angka=array(1,2,3,4,5,6,7,8,9,10);
			$angka1=array(1,2,3,4,5,6,7,8,9,10);

			for($k=0; $k < 5; $k++){
				$hasil[$i][$k]=$totalAfix[$k] + $totalBfix[$k];
			}
			
		}
		// echo "</br>";
		// var_dump($nilaiRespon);
		// echo "</br>";
		// ==== NILAI UNGGUL ====
		for ($n=1; $n <= count($nilaiRespon); $n++) {
			$respon=$nilaiRespon[$n]; 
			for ($m=0; $m < 5; $m++) { 
				$barisRespon[$m][$n]=$respon[$m];
			}
		}

		for($k=1; $k <= count($nilaiRespon); $k++){
			if ($k == 1 | $k ==2) {
				$commerce1Array1=$barisRespon[0][1];
				$commerce1Array2=$barisRespon[0][2];
				// ====
				$commerce2Array1=$barisRespon[1][1];
				$commerce2Array2=$barisRespon[1][2];
				// ====
				$commerce3Array1=$barisRespon[2][1];
				$commerce3Array2=$barisRespon[2][2];
				// ====
				$commerce4Array1=$barisRespon[3][1];
				$commerce4Array2=$barisRespon[3][2];
				// ====
				$commerce5Array1=$barisRespon[4][1];
				$commerce5Array2=$barisRespon[4][2];
				for ($l=0; $l < 10; $l++) { 
					$commerce1[$l]=$commerce1Array1[$l] + $commerce1Array2[$l];
					$commerce2[$l]=$commerce2Array1[$l] + $commerce2Array2[$l];
					$commerce3[$l]=$commerce3Array1[$l] + $commerce3Array2[$l];
					$commerce4[$l]=$commerce4Array1[$l] + $commerce4Array2[$l];
					$commerce5[$l]=$commerce5Array1[$l] + $commerce5Array2[$l];
					// $barisCommerce1=$commerce1;
				}
			} else {
				$barisArray1=$barisRespon[0][$k];
				$barisArray2=$barisRespon[1][$k];
				$barisArray3=$barisRespon[2][$k];
				$barisArray4=$barisRespon[3][$k];
				$barisArray5=$barisRespon[4][$k];
				for ($l=0; $l < 10; $l++) { 
					$commerce1[$l]=$commerce1[$l] + $barisArray1[$l];
					$commerce2[$l]=$commerce2[$l] + $barisArray2[$l];
					$commerce3[$l]=$commerce3[$l] + $barisArray3[$l];
					$commerce4[$l]=$commerce4[$l] + $barisArray4[$l];
					$commerce5[$l]=$commerce5[$l] + $barisArray5[$l];
				}
			}
			
			
			// $commerce1[0][$k]=$totalAfix[$k] + $totalBfix[$k];
		}
		// ==== END NILAI UNGGUL ====
		// echo "</br>";
		// var_dump($barisRespon[4][1]);
		// echo "</br>";
		// var_dump($barisRespon[4][2]);
		// echo "</br>";
		// var_dump($barisRespon[4][3]);
		// echo "</br>";
		// echo "</br>";
		// var_dump($commerce5);
		// echo "</br>";

		// ===== HASIL WASPAS =====
		for($y=0; $y < 5; $y++){
			$nilai=0;
			for($z=1; $z <= count($hasil); $z++){
				$nilai +=$hasil[$z][$y];
				// echo $hasil[$i]. "</br>";
			}
			$nilai1=$nilai/count($hasil);
			$hasilFix[$y]=$nilai1;
		}
	
		// echo "</br>";
		// var_dump($hasilFix);
		// echo "</br>";
		
        return view('spk/hasil', [
            'commerce1' => $commerce1,
			'commerce2' => $commerce2,
			'commerce3' => $commerce3,
			'commerce4' => $commerce4,
			'commerce5' => $commerce5,
			'waspas' => $hasilFix,
			'page' => 'hasil',
        ]);
	}

	public function bobot()
	{
		return view('spk/bobot', [
            'page' => 'bobot',
        ]);
	}
}
