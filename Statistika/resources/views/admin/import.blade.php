<x-App>
    <body>
        <div class="card-header font-semibold text-3xl">
        Import Data
          <div class="card-tools">
            <button type="button" class="btn btn-tool" data-card-widget="collapse" title="Collapse">
              <i class="fas fa-minus"></i>
            </button> 
          </div>
      </div>
        <form action="/admin/import" method="POST" enctype="multipart/form-data">
            @csrf
            <input type="file" name="file" class="form-control">
            <div class="col-span-6 sm:col-span-4">
                <button type="submit" class="rounded-lg border-transparent bg-blue-400 text-gray-200 px-4 py-2 hover:bg-green-500">Upload</button>
            </div>  
        </form>
    </body>
</x-App>