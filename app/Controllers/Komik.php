<?php

namespace App\Controllers;

use App\Models\KomikModel;

class Komik extends BaseController
{

    protected $komikModel;
    public function __construct()
    {
        $this->komikModel = new KomikModel();
    }
    public function index()
    {
        // $komik =  $this->komikModel->findAll();

        $data = [
            'title' => 'Daftar Komik | Ilyasa Ridho',
            'komik' => $this->komikModel->getKomik()

        ];

        $komikModel = new KomikModel();
        // $komik = $komikModel->findAll
        // //konek db tanpa model
        // $db = \Config\Database::connect();
        // $komik = $db->query("SElECT *FROM komik");
        // foreach ($komik->getResultArray() as $row) {
        //     d($row);
        // }
        // // dd($komik);

        // echo view('layout/header', $data);
        return view('komik/index', $data);
        // echo view('layout/footer');
    }
    public function detail($slug)
    {
        $data = [
            'title' => 'Detail Komik | Ilyasa Ridho',
            'komik' => $this->komikModel->getKomik($slug)

        ];
        return view('komik/detail', $data);
    }
}
