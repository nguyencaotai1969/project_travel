<?php

Route::get('/', function () {
    return view('page.trangchu');
})->name('trangchu');




// Route::get('/master-layout', function () {
//     return view('master-layout');
// });

Route::get('/tintuc',function(){
	return view ('page.tintuc');
})->name('tintuc');

Route::get('login','Auth\LoginController@login')->name('login');

// logout user
Route::get('/logout_user','Auth\UserController@logout')->name('logout_user');


Route::get('/lienhe',function(){
	return view('page.lienhe');
})->name('lienhe');

Route::get('/chitiet',function(){
	return view('page.chitiettintuc');
})->name('chitiet');

// Gắn link vào danh sách điểm đến cuối trang chủ
Route::get('/diem-den',function(){
	return view('tour.chi_tiet_diem_den');
})->name('diemden');

// Gắn link vào nút xem thêm trong trang danh sách tour
Route::get('/danh-sach-tour',function(){
	return view('tour.ds-tour');
})->name('dstour');
Route::get('/gioithieu',function(){
	return view('page.gioithieu');
})->name('gioithieu');
Route::get('/dulich',function(){
	return view('page.dulich');
})->name('dulich');
Route::get('/chi-tiet-tour',function(){
	return view('tour.chitiettour');
})->name('chitiettour');




//admin
Route::group(['prefix' => 'admin'], function () {
    /*
     * Admin đăng nhập
     */
Route::get('/',function(){
	return view('admin.index');
})->name('index');
Route::get('/inputs',function(){
	return view('admin.inputs');
})->name('inputs');
Route::get('/validation',function(){
	return view('admin.validation');
})->name('validation');

});

Auth::routes();
Route::get('/home', 'HomeController@index')->name('home');
