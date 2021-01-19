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

Route::resource('/huertos',\App\Http\Controllers\OrchardsController::class);

Route::resource('/tareas_huerto',\App\Http\Controllers\OrchardWorksController::class);
Route::get('tarea_realizada/{id}',[App\Http\Controllers\OrchardWorksController::class, 'tarea_realizada']);
Route::get('tarea_pendiente/{id}',[App\Http\Controllers\OrchardWorksController::class, 'tarea_pendiente']);

Route::resource('/tipos_agucate',\App\Http\Controllers\TypesAvocadoController::class);
Route::resource('/tipos_topografia',\App\Http\Controllers\TypesTopographicController::class);
Route::resource('/tipos_suelo',\App\Http\Controllers\TypesSoilController::class);
Route::resource('/tipos_clima',\App\Http\Controllers\TypesClimateController::class);
Route::resource('/tipos_tarea',\App\Http\Controllers\TypeJobController::class);

Route::resource('/jornada',\App\Http\Controllers\WorkdaysController::class);

/*
Route::get('/huertos', 'App\Http\Controllers\OrchardsController@index');

Route::get('/huertos/create', [App\Http\Controllers\OrchardsController::class, 'create']);
Route::post('/huertos/post', [App\Http\Controllers\OrchardsController::class, 'store']);
Route::get('/huerto/{id}/edit', [App\Http\Controllers\OrchardsController::class, 'edit']);
*/

Auth::routes();

Route::get('/home', [App\Http\Controllers\HomeController::class, 'index'])->name('home');

Route::get('imprimir/{id}', [App\Http\Controllers\WorkdaysController::class, 'imprimir']);


