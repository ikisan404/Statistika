<?php

namespace App\Exports;

use App\Models\Mahasiswa;
use Maatwebsite\Excel\Concerns\Exportable;
use Maatwebsite\Excel\Concerns\FromCollection;
use Maatwebsite\Excel\Concerns\FromQuery;
use Maatwebsite\Excel\Concerns\WithHeadings;
use Maatwebsite\Excel\Concerns\WithMapping;
use Maatwebsite\Excel\Concerns\ShouldAutoSize;

class UsersExport implements FromQuery, WithMapping, ShouldAutoSize, WithHeadings
{
    use Exportable;

    public function query()
    {
        return Mahasiswa::query();
    }
    public function map($data): array
    {
        return[
            $data->NIM,
            $data->Nama,
            $data->Prodi,
            $data->Jenis_Kelamin,
            $data->Semester,
            $data->Score,        ];
    }
    public function headings(): array
    {
        return[
            'NIM',
            'Nama',
            'Program Studi',
            'Gender',
            'Semester',
            'Nilai',
        ];
    }
}
