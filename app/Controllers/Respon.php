<?php

namespace App\Controllers;

use App\Controllers\BaseController;

class Respon extends BaseController
{
	public function __construct(){
        helper('form');
        $this->validation = \Config\Services::validation();
        $this->session = session();
    }

	public function index()
	{
		$responModel = new \App\Models\ResponModel();
        // $respons = $responModel->findAll();
        if(session()->get('role') == 0){
            $respons = $responModel->join('marketplace','marketplace.id_marketplace=respon.id_marketplace')
                                // ->join('user','user.id=respon.id_user')
                                ->findAll();
        }else{
            $id_user = session()->get('id');
            $respons = $responModel->join('marketplace','marketplace.id_marketplace=respon.id_marketplace')
                                // ->join('user','user.id=respon.id_user')
                                // ->where('id_user', $id_user)
                                ->findAll();
        }
        return view('respon/index', [
            'respons' => $respons,
            'page' => 'respon',
        ]);
	}

	public function create()
    {
        if($this->request->getPost())
        {
            $data = $this->request->getPost();
            $validate = $this->validation->run($data, 'respon');
            $errors = $this->validation->getErrors();

            if (!$errors) {
                $id = $this->session->get('id');
                $responModel = new \App\Models\ResponModel();
                // $userModel = new \App\Models\UserModel();
                // $user = $userModel->findColumn('username,umur,pendidikan,jenis_kelamin')->where('id_user', $id);
                $db      = \Config\Database::connect();
                $builder = $db->table('user');
                $builder->select('username,umur,pendidikan,jenis_kelamin');       // names of your columns
                $builder->where('id', $id);                // where clause
                $user = $builder->get();
                $datauser = $user->getRow();
                // var_dump($user->getResult());
                // dd($datauser->username);
                $respon = new \App\Entities\Respon();
                $respon->nama = $datauser->username;
                $respon->umur = $datauser->umur;
                $respon->pendidikan = $datauser->pendidikan;
                $respon->jenis_kelamin = $datauser->jenis_kelamin;
                $respon->fill($data);
                $respon->id_user = $this->session->get('id');
                $respon->updated_by = $this->session->get('id');
                $respon->created_date = date("Y-m-d H:i:s");
                
                // dd($respon);
                $responModel->save($respon);
                $id = $responModel->insertID();

                $segments = ['respon', 'view', $id];

                return redirect()->to(site_url('respon/list'));
            }
            $this->session->setFlashdata('errors', $errors);
        }
        return view('respon/create', [
            'page' => 'respon',
        ]);
    }

    public function update()
    {
        $id = $this->request->uri->getSegment(3);
        // dd($id);
        $responModel = new \App\Models\ResponModel();
        $respons = $responModel->join('marketplace','marketplace.id_marketplace=respon.id_marketplace')
                               ->join('user','user.id=respon.id_user')
                               ->find($id);

        if($this->request->getPost())
        {
            $data = $this->request->getPost();
            $validate = $this->validation->run($data, 'respon');
            $errors = $this->validation->getErrors();

            if (!$errors) {
                $responModel = new \App\Models\ResponModel();
                $respon = new \App\Entities\Respon();

                $respon->fill($data);
                $respon->id_user = $this->session->get('id');
                $respon->updated_by = $this->session->get('id');
                $respon->created_date = date("Y-m-d H:i:s");

                // $responModel->save($respon);
                // dd($respon);
                $responModel->update($id, $respon);

                // $id = $responModel->insertID();

                // $segments = ['respon', 'view', $id];

                return redirect()->to(site_url('respon/list'));
            }
            $this->session->setFlashdata('errors', $errors);
        }
        // return view('respon/create');
        // dd($respons);
        return view('respon/update',[
            'respon' => $respons,
            'page' => 'respon',
        ]);
    }

    public function delete(){
        $id = $this->request->uri->getSegment(3);
        $modelRespon = new \App\Models\ResponModel();
        $delete = $modelRespon->delete($id);
        // dd($id);
        if ($delete) {
            # code...
            $this->session->setFlashdata('error',['Data telah dihapus!']);
        }
        return redirect()->to(site_url('respon/list'));
    }
}
