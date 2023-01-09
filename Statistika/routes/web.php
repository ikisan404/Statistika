<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\ProfileController;
use App\Http\Controllers\AdminController;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', function () {
    //return view('welcome');
    return redirect('/admin');
});

Route::get('/dashboard', function () {
    return view('dashboard');
})->middleware(['auth', 'verified'])->name('dashboard');

Route::middleware('auth')->group(function () {
    Route::get('/profile', [ProfileController::class, 'edit'])->name('profile.edit');
    Route::patch('/profile', [ProfileController::class, 'update'])->name('profile.update');
    Route::delete('/profile', [ProfileController::class, 'destroy'])->name('profile.destroy');
});

Route::get('/admin', [AdminController::class,'index']);
Route::get('/admin/create', [AdminController::class,'create']);
Route::post('/admin/store', [AdminController::class,'store']);
Route::post('/admin/import', [AdminController::class,'import']);
Route::get('/admin/{id}/edit', [AdminController::class,'edit']);
Route::put('/admin/{id}', [AdminController::class,'update']);
Route::delete('/admin/{id}', [AdminController::class,'destroy']);
Route::get('/admindashboard',[AdminController::class,'admin']);
Route::get('/admin/ubah-data',[AdminController::class,'ubahdata']);
Route::get('/admin/export-data',[AdminController::class,'export']);
Route::get('/admin/import-data',[AdminController::class,'importdata']);

require __DIR__.'/auth.php';
