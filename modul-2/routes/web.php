<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\Modul2Controller;

Route::get('/', function () {
    return view('welcome');
});

route::get('/modul/2', [Modul2Controller::class, 'index'])->name('modul-2');
