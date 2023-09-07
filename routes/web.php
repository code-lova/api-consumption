<?php

use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "web" middleware group. Make something great!
|
*/

Route::get('/', function () {
    return view('welcome');
});

//Route::get('/fetch', \App\Http\Controllers\QuestionController::class, 'fetchInsert');

Route::controller(\App\Http\Controllers\QuestionController::class)->group(function() {
    Route::get('/fetch', 'fetchInsert');
    Route::get('/questions', 'show');


});
