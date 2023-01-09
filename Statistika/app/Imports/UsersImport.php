<?php

namespace App\Imports;

use App\Models\Mahasiswa;
use Illuminate\Support\Facades\Hash;
use Maatwebsite\Excel\Concerns\ToModel;

class UsersImport implements ToModel
{
    /**
     * @param array $row
     *
     * @return Mahasiswa|null
     */
    public function model(array $row)
    {
        return new Mahasiswa([
           'NIM'                => $row[0],
           'Nama'               => $row[1], 
           'Prodi'              => $row[2], 
           'Jenis_Kelamin'      => $row[3], 
           'Semester'           => $row[4], 
           'Score'              => $row[5],
           //'password' => Hash::make($row[2]),
        ]);
    }
}