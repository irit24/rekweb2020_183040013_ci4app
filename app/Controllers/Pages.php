<?php

namespace App\Controllers;

class Pages extends BaseController
{
    public function index()
    {
        $data = [
            'title' => 'Home | Ilyasa Ridho'
        ];
        // echo view('layout/header', $data);
        return view('pages/home', $data);
        // echo view('layout/footer');
    }
    public function about()
    {
        $data = [
            'title' => 'About | Ilyasa Ridho'
        ];
        return view('pages/about', $data);
    }
    public function contact()
    {
        $data = [
            'title' => 'Contact Us',
            'alamat' => [
                [
                    'tipe' => 'Rumah',
                    'alamat' => 'jalan ABC no 123',
                    'kota' => 'Bandung'
                ],
                [
                    'tipe' => 'Kantor',
                    'alamat' => 'jalan Setiabudi no 193',
                    'kota' => 'Bandung'
                ]
            ]
        ];
        return view('pages/contact', $data);
    }
}
