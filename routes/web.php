<?php

use Illuminate\Support\Facades\Route;

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
    return view('welcome');
}); 

// Halaman Beranda Dashboard //
Route::get('/beranda', function () {
    return view('beranda.index');
});

// Landing Page //
Route::get('home', function () {
    return view('landingpage');
});

// Form Pengaduan //
Route::get('/pengaduan', 'PengaduanController@index')->name('pengaduan'); 
Route::get('/pengaduan/create', 'PengaduanController@create'); 
Route::post('/pengaduan/store', 'PengaduanController@store');
Route::get('/pengaduan/edit/{id}', 'PengaduanController@edit'); 
Route::put('/pengaduan/update/{id}', 'PengaduanController@update');
Route::get('/pengaduan/destroy/{id_pengaduan}', 'PengaduanController@destroy'); 
Route::get('/pengaduan/show/{id_pengaduan}', 'PengaduanController@show');
Route::get('/pengaduan/status/{id}', 'PengaduanController@status');

// Form Tanggapan //
Route::get('/tanggapan', 'TanggapanController@index')->name('tanggapan'); 
Route::get('/tanggapan/create', 'TanggapanController@create'); 
Route::post('/tanggapan/store', 'TanggapanController@store');
Route::get('/tanggapan/edit/{id}', 'TanggapanController@edit'); 
Route::put('/tanggapan/update/{id}', 'TanggapanController@update');
Route::get('/tanggapan/destroy/{id_tanggapan}', 'TanggapanController@destroy'); 
Route::get('/tanggapan/show/{id_tanggapan}', 'TanggapanController@show');


Auth::routes();

Route::get('/home', 'HomeController@index')->name('home');
