<?php

namespace App\Controllers;

use App\Controllers\BaseController;

class Spk extends BaseController
{
	public function __construct(){
        helper('form');
        $this->validation = \Config\Services::validation();
        $this->session = session();
    }

	public function index()
	{
		return view('spk/index');
	}

	public function hasil()
	{
		return view('spk/hasil');
	}
}
