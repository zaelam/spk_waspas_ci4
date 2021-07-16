<?php

namespace App\Models;

use CodeIgniter\Model;

class ResponModel extends Model
{
	protected $table                = 'respon';
	protected $primaryKey           = 'id_respon';
	protected $allowedFields = [
        'id_respon', 'id_user', 'id_kriteria', 'id_marketplace', 'kelengkapan', 'estimasi_pengiriman', 'user_experience', 'respon_pelayanan', 'metode_pembayaran', 'kemudahan_fitur', 'kepercayaan', 'penanganan_komplain', 'cashback', 'pengiriman', 'created_by', 'created_date', 'updated_by', 'updated_date'
    ];
	protected $returnType = 'App\Entities\Respon';
    protected $useTimestamps = false;
}
