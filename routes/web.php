<?php

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
    return View('welcome');
});


    Route::resource('system_data/year', 'yearcontroller');
Route::resource('system_data/namacu', 'namacucontroller');
Route::resource('system_data/business', 'businesscontroller');

Route::get('/blog', 'savejobcontroller@index');
Route::get('/blog/create', 'savejobcontroller@create');
Route::post('/blog/create/insert', 'savejobcontroller@store');
Route::post('/blog/create/update', 'savejobcontroller@update');


Route::get('/blog/check', 'checkcontroller@check');


Route::get('getsahakorn/{id}',array('as'=>'getsahakorn','uses'=>'savejobcontroller@getsahakorn'));
Route::get('getlist/{id}',array('as'=>'getlist','uses'=>'checkcontroller@getlist'));