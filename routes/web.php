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
Route::get('/lienhe',function(){
	return view('page.lienhe');
})->name('lienhe');
Route::get('/chitiet',function(){
	return view('page.chitiettintuc');
})->name('chitiet');

// Gắn link vào danh sách điểm đến cuối trang chủ
Route::get('/diem-den',function(){
	return view('tour.chi-tiet-diem-den');
})->name('diemden');

// Gắn link vào nút xem thêm trong trang danh sách tour
Route::get('/danh-sach-tour',function(){
	return view('tour.ds-tour');
})->name('dstour');
Route::get('/gioithieu',function(){
	return view('page.gioithieu');
})->name('gioithieu');
<<<<<<< HEAD
Route::get('/dulich',function(){
	return view('page.dulich');
})->name('dulich');
=======
>>>>>>> e3a85e8bdb4d942d650f5c34685961648f2e6899
