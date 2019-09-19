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
	return view('page.chitiet');
})->name('chitiet');

// Gắn link vào danh sách điểm đến cuối trang chủ
Route::get('/diem-den',function(){
	return view('tour.chi-tiet-diem-den');
})->name('diemden');

// Gắn link vào nút xem thêm trong trang danh sách tour
Route::get('/danh-sach-tour',function(){
	return view('tour.ds-tour');
})->name('dstour');