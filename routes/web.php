<?php


Route::get('/', function () {
    return view('welcome');
});
Route::get('/master-layout', function () {
    return view('master-layout');
});
Route::get('/trangchu',function(){
	return view('page.trangchu');
})->name('trangchu');
Route::get('/tintuc',function(){
	return view ('page.tintuc');
})->name('tintuc');
Route::get('/login',function(){
	return view('page.login');
})->name('login');
Route::get('lienhe',function(){
	return view('page.lienhe');
})->name('lienhe');
Route::get('/chitiet',function(){
	return view('page.chitiettintuc');
})->name('chitiet');
Route::get('/gioithieu',function(){
	return view('page.gioithieu');
})->name('gioithieu');