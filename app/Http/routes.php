<?php
/*
|--------------------------------------------------------------------------
| Application Routes
|--------------------------------------------------------------------------
|
| Here is where you can register all of the routes for an application.
| It's a breeze. Simply tell Laravel the URIs it should respond to
| and give it the controller to call when that URI is requested.
|
*/
Route::pattern('id', '[0-9]+');

Route::get('/', 'WelcomeController@index');

Route::get('home', 'HomeController@index');

Route::controllers([
	'auth' => 'Auth\AuthController',
	'password' => 'Auth\PasswordController',
]);

Route::get('/contact', 'WelcomeController@contact');

Route::get('/accountant', 'AccountantPageController@home');

Route::get('/accountant/about', 'AccountantPageController@about');

Route::get('/accountant/contact', 'AccountantPageController@contact');

Route::get('/accountant/news{id}', 'AccountantPageController@news');
Route::post('/accountant/news{id}', 'AccountantPageController@comments_news');
Route::get('/accountant/edit_news_{id}', 'AccountantPageController@edit_news');
Route::post('/accountant/store_edit_news{id}', 'AccountantPageController@store_edit_news');

Route::get('/accountant/law{id}', 'AccountantPageController@law');
Route::get('/accountant/edit_law_{id}', 'AccountantPageController@edit_law');
Route::post('/accountant/store_edit_law{id}', 'AccountantPageController@store_edit_law');

Route::get('/accountant/customers', 'AccountantPageController@customers');
Route::get('/accountant/serviceprices', 'AccountantPageController@serviceprices');

Route::get('/accountant/service{id}', 'AccountantPageController@service');
Route::get('/accountant/edit_service_{id}', 'AccountantPageController@edit_service');
Route::post('/accountant/store_edit_service{id}', 'AccountantPageController@store_edit_service');

Route::get('/accountant/register', 'AccountantPageController@register');
Route::post('/accountant/register', 'AccountantPageController@store_register');

Route::get('/accountant/login', 'AccountantPageController@login');
Route::post('/accountant/login', 'AccountantPageController@handle');
Route::get('/accountant/logout', 'AccountantPageController@logout');
Route::get('/accountant/admin', 'AccountantPageController@admin');

Route::get('/accountant/edit_user{id}', 'AccountantPageController@edit_user_by_admin');
Route::post('/accountant/store_edit_user_by_admin', 'AccountantPageController@change_user_by_admin');
Route::get('/accountant/delete_user{id}', 'AccountantPageController@delete_user_by_admin');
Route::post('accountant/add_new_user_by_admin', 'AccountantPageController@add_new_user_by_admin');

Route::get('/accountant/edit_guest{id}', 'AccountantPageController@edit_guest_by_admin');
Route::post('/accountant/store_edit_guest_by_admin', 'AccountantPageController@change_guest_by_admin');
Route::get('/accountant/delete_guest{id}', 'AccountantPageController@delete_guest_by_admin');
Route::post('accountant/add_new_guest_by_admin', 'AccountantPageController@add_new_guest_by_admin');

Route::get('/accountant/edit_tax_price{id}', 'AccountantPageController@edit_tax_price');
Route::post('/accountant/store_edit_tax_price_by_admin', 'AccountantPageController@change_tax_price_by_admin');
Route::get('/accountant/delete_tax_price{id}', 'AccountantPageController@delete_tax_price_by_admin');
Route::post('accountant/add_new_tax_by_admin', 'AccountantPageController@add_new_tax_by_admin');

Route::get('/accountant/edit_accounting_price{id}', 'AccountantPageController@edit_accounting_price');
Route::post('/accountant/store_edit_accounting_price_by_admin', 'AccountantPageController@change_accounting_price_by_admin');
Route::get('/accountant/delete_accounting_price{id}', 'AccountantPageController@delete_accounting_price_by_admin');
Route::post('accountant/add_new_document_by_admin', 'AccountantPageController@add_new_document_by_admin');

Route::get('/accountant/edit_labor_price{id}', 'AccountantPageController@edit_labor_price');
Route::post('/accountant/store_edit_labor_price_by_admin', 'AccountantPageController@change_labor_price_by_admin');
Route::get('/accountant/delete_labor_price{id}', 'AccountantPageController@delete_labor_price_by_admin');
Route::post('accountant/add_new_labor_by_admin', 'AccountantPageController@add_new_labor_by_admin');

Route::post('/accountant/edit', 'AccountantPageController@editinfo');
Route::post('/accountant/store_edit_info', 'AccountantPageController@changeInfo');

Route::get('/accountant/edit_home', 'AccountantPageController@edit_home');
Route::post('/accountant/store_edit_home', 'AccountantPageController@store_edit_home');

Route::get('/accountant/edit_company', 'AccountantPageController@edit_company');
Route::post('/accountant/store_edit_company', 'AccountantPageController@store_edit_company');



	