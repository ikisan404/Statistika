<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Mahasiswa;
use App\User;
use Maatwebsite\Excel\Facades\Excel;
use App\Exports\UsersExport;
use App\Imports\UsersImport;


class AdminController extends Controller
{
    public function index(){
       $mahasiswa = Mahasiswa::all();
       //dd($mahasiswa);
       return view('admin.data', compact(['mahasiswa']));
    }

    public function create(){
        return view('admin.create');
    }
    public function store(Request $request){
        //dd($request->all());
        Mahasiswa::create($request->except(['_token']));
        return redirect('/admin');
    }
    // public function storeimport(Request $request){
    //     $this->validate($request, [
    //         'file' => 'required|mimes:csv,xls,xlsx'
    //     ]);
    //     $file = $request->file('file');
    //     $nama_file = rand().$file->getClientOriginalName();
    //     $file->move('file_siswa',$nama_file);
    //     Excel::import(new UsersImport, public_path('/file_siswa/'.$nama_file));
    //     return redirect('/admin');
    // }
    public function edit($id){
        $mahasiswa = Mahasiswa::find($id);
        //dd($mahasiswa);
        return view('admin.edit', compact('mahasiswa'));
    }
    public function update($id, Request $request){
        $mahasiswa = Mahasiswa::find($id);
        $mahasiswa->update($request->except(['_token']));
        return redirect('/admin/ubah-data');
    }
    public function destroy($id){
        $mahasiswa = Mahasiswa::find($id);
        $mahasiswa->delete();
        return redirect('/admin/ubah-data');
    }
    public function admin(){
        return view('admin.admindashboard');
    }
    public function ubahdata(){
        $mahasiswa = Mahasiswa::all();
        //dd($mahasiswa);
        return view('admin.ubahdata', compact(['mahasiswa']));
    }
    public function export() 
    {
        return Excel::download(new UsersExport(), 'users.xlsx');
    }
    public function import(Request $request) 
    {
        $this->validate($request, [
            'file' => 'required|mimes:csv,xls,xlsx'
        ]);
        $file = $request->file('file');
        $nama_file = rand().$file->getClientOriginalName();
        $file->move('file_siswa',$nama_file);
        Excel::import(new UsersImport, public_path('/file_siswa/'.$nama_file));
        return redirect('/admin');
    }
    public function importdata(){
        return view('admin.import');
    }
}
 