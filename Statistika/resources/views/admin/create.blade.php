<x-App>
<body>
    <div class="card-header font-semibold text-4xl">
        Create Data Mahasiswa
      <div class="card-tools">
        <button type="button" class="btn btn-tool" data-card-widget="collapse" title="Collapse">
          <i class="fas fa-minus"></i>
        </button> 
      </div>
    </div>
    <form action="/admin/store" method="POST">
        @csrf
        <div>
            <div class="bg-white px-4 py-5 sm:p-6">
                <div class="grid grid-cols-6 gap-6">
                    <div class="col-span-6 sm:col-span-3">
                        <label for="NIM" class="block text-sm font-medium text-gray-700">NIM</label>
                        <input type="text" name="NIM" placeholder="Nomor Induk Mahasiswa"><br>
                    </div>
                    <div class="col-span-6 sm:col-span-3">
                        <label for="Nama Lengkap" class="block text-sm font-medium text-gray-700">Nama Lengkap</label>
                        <input type="text" name="Nama" placeholder="Nama Lengkap"><br>
                    </div>
                    <div class="col-span-6 sm:col-span-3">
                        <label for="Program Studi" class="block text-sm font-medium text-gray-700">Program Studi</label>
                        <input type="text" name="Prodi" placeholder="Program Studi"><br>
                    </div>
                    <div class="col-span-6 sm:col-span-3">
                        <label for="Jenis_Kelamin" class="block text-sm font-medium text-gray-700">Jenis Kelamin</label>
                        <select name="Jenis_Kelamin">
                            <option value=""> Pilih Jenis Kelamin</option>
                            <option value="L"> Laki-Laki</option>
                            <option value="P"> Perempuan</option>
                        </select> <br>
                    </div>
                    <div class="col-span-6 sm:col-span-3">
                        <label for="Semester" class="block text-sm font-medium text-gray-700">Semester</label>
                        <input type="text" name="Semester" placeholder="Semester"> <br>
                    </div>
                    <div class="col-span-6 sm:col-span-3">
                        <label for="Nilai" class="block text-sm font-medium text-gray-700">Nilai Mahasiswa</label>
                        <input type="text" name="Score" placeholder="Nilai"> <br>
                    </div>
                    <div class="col-span-6 sm:col-span-4">
                        <button type="submit" class="rounded-lg border-transparent bg-blue-400 text-gray-200 px-4 py-2 hover:bg-green-500">Save</button>
                    </div>
                </div>
            </div>
        </div>
    </form>
   
</body>

</x-App>