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
        //jika komik tidak ada ditabel
        if (empty($data['komik'])) {
            throw new \CodeIgniter\Exceptions\PageNotFoundException('Judul Komik ' . $slug . ' tidak ditemukan');
        }
        return view('komik/detail', $data);
    }
    public function create()
    {
        // $komik =  $this->komikModel->findAll();
        $data = [
            'title' => 'Form Tambah data Komik | Ilyasa Ridho',
            'validation' => \Config\Services::validation()
        ];
        return view('komik/create', $data);
    }
    public function save()
    {
        //validasi input
        if (!$this->validate([
            // 'judul' => 'required|is_unique[komik.judul]'
            'judul' => [
                'rules' => 'required|is_unique[komik.judul]',
                'errors' => [
                    'required' => '{field} komik harus diisi',
                    'is_unique' => '{field} komik sudah terdaftar'
                ]
            ]
        ])) {
            $validation = \Config\Services::validation();
            return redirect()->to('/komik/create')->withInput()->with('validation', $validation);
        }
        $slug = url_title($this->request->getVar('judul'), '-', true);
        $this->komikModel->save([
            'judul' => $this->request->getVar('judul'),
            'slug' =>  $slug,
            'penulis' => $this->request->getVar('penulis'),
            'penerbit' => $this->request->getVar('penerbit'),
            'sampul' => $this->request->getVar('sampul')

        ]);
        session()->setFlashData('pesan', 'Data Berhasil Ditambahkan.');
        return redirect()->to('/komik');
        // $komik =  $this->komikModel->findAll();

    }
    public function delete($id)
    {
        $this->komikModel->delete($id);
        session()->setFlashData('pesan', 'Data Berhasil DiHapus.');

        return redirect()->to('/komik');
    }

    public function edit($slug)
    {
        // $komik =  $this->komikModel->findAll();
        $data = [
            'title' => 'Form Ubah data Komik | Ilyasa Ridho',
            'validation' => \Config\Services::validation(),
            'komik' => $this->komikModel->getKomik($slug)
        ];
        return view('komik/edit', $data);
    }
    public function update($id)
    {
        $komikLama = $this->komikModel->getKomik($this->request->getVar('slug'));
        if ($komikLama['judul'] == $this->request->getVar('judul')) {
            $rule_judul = 'required';
        } else {
            $rule_judul = 'required|is_unique[komik.judul]';
        }

        //validasi input
        if (!$this->validate([
            // 'judul' => 'required|is_unique[komik.judul]'
            'judul' => [
                'rules' => $rule_judul,
                'errors' => [
                    'required' => '{field} komik harus diisi',
                    'is_unique' => '{field} komik sudah terdaftar'
                ]
            ]
        ])) {
            $validation = \Config\Services::validation();
            return redirect()->to('/komik/edit/' . $this->request->getVar('slug'))
                ->withInput()->with('validation', $validation);
        }

        $slug = url_title($this->request->getVar('judul'), '-', true);
        $this->komikModel->save([
            'id' => $id,
            'judul' => $this->request->getVar('judul'),
            'slug' =>  $slug,
            'penulis' => $this->request->getVar('penulis'),
            'penerbit' => $this->request->getVar('penerbit'),
            'sampul' => $this->request->getVar('sampul')

        ]);
        session()->setFlashData('pesan', 'Data Berhasil Diubah.');
        return redirect()->to('/komik');
        // $komik =  $this->komikModel->findAll();      
    }
}
