<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class Modul2Controller extends Controller
{
    public function index(Request $request)
    {
        $request->validate([
            'nama.*' => 'required|string|max:10',
        ]);

        $hasil = [];
        if ($request->has('nama')) {
            foreach ($request->input('nama') as $n) {
                $data = [
                    'nama' => $n,
                    'jumlah_kata' => str_word_count($n),
                    'jumlah_huruf' => strlen(str_replace(' ', '', $n)),
                    'kebalikan_nama' => strrev($n),
                    'jumlah_vokal' => preg_match_all('/[aeiou]/i', $n),
                    'jumlah_konsonan' => preg_match_all('/[^aeiou]/i', $n),
                ];
                array_push($hasil, $data);
            }
        }
        return view('modul-2', compact('hasil'));
    }
}
