<x-App>
<body>
    <div class="card-header font-semibold text-3xl">
          Tabel Data Mahasiswa Mata Kuliah Statistika
        <div class="card-tools">
          <button type="button" class="btn btn-tool" data-card-widget="collapse" title="Collapse">
            <i class="fas fa-minus"></i>
          </button> 
        </div>
    </div>
        <div class="py-2">
            <a href="/admin/create"><button type="submit" class="bg-green-500 hover:bg-blend-color text-gray-200 rounded px-4 py-2 focus:outline-none">Add mahasiswa</button></a>
            <a href="/admin/ubah-data"><button type="submit" class="bg-blue-500 hover:bg-blend-color text-gray-200 rounded px-4 py-2 focus:outline-none">Ubah Data</button></a>
            <a href="/admin/export-data"><button type="submit" class="bg-orange-500 hover:bg-blend-color text-gray-200 rounded px-4 py-2 focus:outline-none">Export Data</button></a>
            <a href="/admin/import-data"><button type="submit" class="bg-red-500 hover:bg-blend-color text-gray-200 rounded px-4 py-2 focus:outline-none">Import Data</button></a>
        </div>
        
        <table class="table-auto w-full text-left" id="datamahasiswa" class="table table-bordered table-striped">
        <thead>
            <tr>
            <th class="px-4 py-2">NIM</th>
            <th class="px-4 py-2">Nama</th>
            <th class="px-4 py-2">Prodi</th>
            <th class="px-4 py-2">Jenis Kelamin</th>
            <th class="px-4 py-2">Semester</th>
            <th class="px-4 py-2">Nilai</th>
            {{-- <th class="px-4 py-2">UBAH DATA</th>
            <th class="px-4 py-2">HAPUS DATA</th> --}}
            </tr>
        </thead>
        <tbody>
            @foreach ($mahasiswa as $m)
            <tr class="hover:bg-transparent">
            <td class="border px-4 py-2">{{$m->NIM}}</td>
            <td class="border px-4 py-2">{{$m->Nama}}</td>
            <td class="border px-4 py-2">{{$m->Prodi}}</td>
            <td class="border px-4 py-2">{{$m->Jenis_Kelamin}}</td>
            <td class="border px-4 py-2">{{$m->Semester}}</td>
            <td class="border px-4 py-2">{{$m->Score}}</td>
            {{-- <td><a href="/admin/{{$m->id}}/edit">Edit Data</a></td>
                <td><form action="/admin/{{$m->id}}" method="POST">
                    @csrf
                    @method('delete')
                    <input type="submit" value="delete">
                </form>
                </td> --}}
            @endforeach
        </tbody>
    </table>

</body>
</x-App>