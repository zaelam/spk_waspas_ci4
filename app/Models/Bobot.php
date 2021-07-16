<?php

namespace App\Models;

use CodeIgniter\Model;

class Bobot extends Model
{
	protected $table = 'bobot';
    protected $primaryKey = 'id_bobot';
    protected $allowedFields = [
        'kriteria', 'keterangan', 'bobot'
    ];
    protected $returnType = 'App\Entities\Bobot';
    protected $useTimestamps = false;
}
