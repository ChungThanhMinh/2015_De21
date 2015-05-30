<?php namespace App\Http\Controllers;
use App\Customers;
use App\Comments;
use App\Taxprices;
use App\Accountingprices;
use App\Laborprices;
use App\Http\Requests;
use App\Users;
use App\Introduction;
use App\Laws;
use App\News;
use App\Company;
use App\Services;
use App\Http\Controllers\Controller;
use \Validator, \Redirect, \Input, \Session;
use \Auth;

use Illuminate\Http\Request;


class AccountantPageController extends Controller {
	/**
	 * This is my assignment Web Programming
	 *
	 * @return home page
	 */

	///////////////// Home page ///////////////////
	public function home()
	{
		$intro = Introduction::find(1);
		$news = News::all();
		$company = Company::find(1);
		if(Session::has("remember_login")){
			$id = Session::get("remember_login");
			$user = Users::find($id);
			return view("AccountantWeb.index")->with(array("user" => $user, "intro" => $intro, "news" => $news, "company" => $company));
		}
		return view("AccountantWeb.index")->with(array("intro" => $intro, "news" => $news, "company" => $company));
	}
	
	///////////////// About page //////////////////
	public function about()
	{
		if(Session::has("remember_login")){
			$id = Session::get("remember_login");
			$user = Users::find($id);
			return view("AccountantWeb.about")->with("user", $user);
		}
		return view("AccountantWeb.about");
	}
	
	///////////////// Contact page ////////////////
	public function contact()
	{
		$company = Company::find(1);
		if(Session::has("remember_login")){
			$id = Session::get("remember_login");
			$user = Users::find($id);
			return view("AccountantWeb.contact")->with(array("user" => $user, "company" => $company));
		}
		return view("AccountantWeb.contact")->with("company", $company);
	}
	
	////////// Show customer information //////////
	public function customers()
	{
		$customer = Customers::all();

		if(Session::has("remember_login")){
			$id = Session::get("remember_login");
			$user = Users::find($id);
			return view("AccountantWeb.customers.list")->with(array("user" => $user, "customer" => $customer));
		}
		
		return view("AccountantWeb.customers.list")->with("customer", $customer);
	}
	

	////// Show service prices information ////////
	public function serviceprices()
	{
		$taxprice = Taxprices::all();
		$accountingprice = Accountingprices::all();
		$laborprice = Laborprices::all();

		if(Session::has("remember_login")){
			$id = Session::get("remember_login");
			$user = Users::find($id);
			return view("AccountantWeb.customers.cost")->with(array("user" => $user, "taxprice" => $taxprice, "accountingprice" => $accountingprice, "laborprice" => $laborprice));
		}
		return view("AccountantWeb.customers.cost")->with(array("taxprice" => $taxprice, "accountingprice" => $accountingprice, "laborprice" => $laborprice));
	}

	///////// Registered form for members /////////
	public function register(){
		if(Session::has("remember_login")){
			$id = Session::get("remember_login");
			$user = Users::find($id);
			return view("AccountantWeb.login.register")->with("user", $user);
		}
		return view("AccountantWeb.login.register");
	}
	public function store_register(){	
		$user = new Users;
		$user->name = Input::get("username");
		$user->password = md5(sha1(Input::get("password")));
		$user->email = Input::get("email");
		$user->address = Input::get("address");
		$user->phone = Input::get("phone");
		$user->status = Input::get("status");
		$user->save();
		Session::put("register_success", Input::get('username')." đã đăng ký thành công");
		return Redirect::to("accountant/login");
	}
	public function checkusername(){
		if(Users::checkUsername(Input::get("username")))
			return "true";
		else
			return "false";
	}
	public function checkemail(){
		if(Users::checkEmail(Input::get("email")))
			return "true";
		else
			return "false";
	}
	
	//////////// Login form for users ////////////
	public function login(){
		if(Session::has("remember_login")){
			$id = Session::get("remember_login");
			$user = Users::find($id);
			return view("AccountantWeb.login.info")->with("user", $user);
		}		
		return view("AccountantWeb.login.login");
	}
	public function handle(){
		if(Users::checkLogin(Input::get("username"), md5(sha1(Input::get("password"))))){
			$user = Users::where('name', Input::get("username"))->first();
			Session::put("login_success", "Đăng nhập thành công !");
			Session::put("remember_login", $user->id);

			if($user->id == 1){
				Session::put("admin_login", $user->id);
				return Redirect::to("/accountant/admin");
			}

			return view("AccountantWeb.login.info")->with("user", $user);
		}else
			return view("AccountantWeb.login.login")->with("error_message", "Tên đăng nhập hoặc mật khẩu không đúng");
	}
	public function admin(){
		if(Session::has("admin_login")){
			$member = Users::all();
			$customer = Customers::all();
			$tax_price = Taxprices::all();
			$accounting_price = Accountingprices::all();
			$labor_price = Laborprices::all();

			if(Session::has("remember_login")){
				$id = Session::get("remember_login");
				$user = Users::find($id);
				return view("AccountantWeb.login.admin")->with(array("user" => $user, "member" => $member, "customer" => $customer, "tax_price" => $tax_price, "accounting_price" => $accounting_price, "labor_price" => $labor_price));
			}

			return view("AccountantWeb.login.admin")->with(array("member" => $member, "customer" => $customer, "tax_price" => $tax_price, "accounting_price" => $accounting_price, "labor_price" => $labor_price));
		}else{
			return Redirect::to("/accountant/login");
		}
	}
	public function logout(){
		Session::forget("remember_login");
		if(Session::has("admin_login")){
			Session::forget("admin_login");
		}
		return Redirect::to("/accountant/login");
	}
	
	//////// Editing user's information //////////
	public function add_new_user_by_admin(){
		$user = new Users;
		$user->name = Input::get("username");
		$user->password = md5(sha1(Input::get("password")));
		$user->email = Input::get("email");
		$user->address = Input::get("address");
		$user->phone = Input::get("phone");
		$user->status = "none";
		$user->save();
		return Redirect::to('/accountant/admin');
	}
	public function editinfo(){
		$id = Input::get("id");
		$user_edit = Users::find($id);

		if(Session::has("remember_login")){
			$id = Session::get("remember_login");
			$user = Users::find($id);
			return view("AccountantWeb.login.edit")->with(array("user" => $user, "user_edit" => $user_edit));
		}

		return view("AccountantWeb.login.edit")->with("user_edit", $user_edit);
	}
	public function edit_user_by_admin($id){
		$user_edit = Users::find($id);
		return view("AccountantWeb.login.edit_user_by_admin")->with("user_edit", $user_edit);
	}
	public function change_user_by_admin(){
		$user = Users::find(Input::get("id"));
		$user->name = Input::get("edit_name");
		$user->password = md5(sha1(Input::get("edit_pass")));
		$user->email = Input::get("edit_email");
		$user->address = Input::get("edit_address");
		$user->phone = Input::get("edit_phone");
		$user->status = Input::get("edit_status");
		$user->save();
		return Redirect::to("accountant/admin");
	}
	public function changeInfo(){	
		$user = Users::find(Input::get("id"));
		$user->name = Input::get("edit_name");
		$user->password = md5(sha1(Input::get("edit_pass")));
		$user->email = Input::get("edit_email");
		$user->address = Input::get("edit_address");
		$user->phone = Input::get("edit_phone");
		$user->status = Input::get("edit_status");
		$user->save();
		return Redirect::to("accountant/login");
	}
	public function delete_user_by_admin($id){
		$user = Users::find($id);
		$user->delete();
		return Redirect::to("accountant/admin");
	}

	//////// Editing guest's information //////////
	public function add_new_guest_by_admin(){
		$guest = new Customers;
		$guest->name = Input::get("name");
		$guest->address = Input::get("address");
		$guest->save();
		return Redirect::to("accountant/admin");
	}
	public function edit_guest_by_admin($id){
		$guest = Customers::find($id);
		return view("AccountantWeb.login.edit_guest_by_admin")->with("guest", $guest);
	}
	public function change_guest_by_admin(){
		$guest = Customers::find(Input::get("id"));
		$guest->name = Input::get("edit_name");
		$guest->address = Input::get("edit_address");
		$guest->save();
		return Redirect::to("accountant/admin");
	}
	public function delete_guest_by_admin($id){
		$guest = Customers::find($id);
		$guest->delete();
		return Redirect::to("accountant/admin");
	}

	//////////// Editing tax's price /////////////
	public function add_new_tax_by_admin(){
		$tax = new Taxprices;
		$tax->amount = Input::get("amount");
		$tax->cost = Input::get("cost");
		$tax->save();
		return Redirect::to("accountant/admin");
	}
	public function edit_tax_price($id){
		$t_cost = Taxprices::find($id);
		return view("AccountantWeb.login.edit_tax_price_by_admin")->with("t_cost", $t_cost);
	}
	public function change_tax_price_by_admin(){
		$tax = Taxprices::find(Input::get("id"));
		$tax->amount = Input::get("edit_amount");
		$tax->cost = Input::get("edit_cost");
		$tax->save();
		return Redirect::to("accountant/admin");
	}
	public function delete_tax_price_by_admin($id){
		$tax = Taxprices::find($id);
		$tax->delete();
		return Redirect::to("accountant/admin");
	}

	///////// Editing accounting's price //////////
	public function add_new_document_by_admin(){
		$accounting = new Accountingprices;
		$accounting->amount = Input::get("amount");
		$accounting->cost = Input::get("cost");
		$accounting->save();
		return Redirect::to("accountant/admin");
	}
	public function edit_accounting_price($id){
		$a_cost = Accountingprices::find($id);
		return view("AccountantWeb.login.edit_accounting_price_by_admin")->with("a_cost", $a_cost);
	}
	public function change_accounting_price_by_admin(){
		$accounting = Accountingprices::find(Input::get("id"));
		$accounting->amount = Input::get("edit_amount");
		$accounting->cost = Input::get("edit_cost");
		$accounting->save();
		return Redirect::to("accountant/admin");
	}
	public function delete_accounting_price_by_admin($id){
		$accounting = Accountingprices::find($id);
		$accounting->delete();
		return Redirect::to("accountant/admin");
	}

	/////////// Editing labor's price ////////////
	public function add_new_labor_by_admin(){
		$labor = new Laborprices;
		$labor->amount = Input::get("amount");
		$labor->cost = Input::get("cost");
		$labor->save();
		return Redirect::to("accountant/admin");
	}
	public function edit_labor_price($id){
		$labor = Laborprices::find($id);
		return view("AccountantWeb.login.edit_labor_price_by_admin")->with("labor", $labor);
	}
	public function change_labor_price_by_admin(){
		$labor = Laborprices::find(Input::get("id"));
		$labor->amount = Input::get("edit_amount");
		$labor->cost = Input::get("edit_cost");
		$labot->save();
		return Redirect::to("accountant/admin");
	}
	public function delete_labor_price_by_admin($id){
		$labor = Laborprices::find($id);
		$labor->delete();
		return Redirect::to("accountant/admin");
	}


	/////////////// Editing Page ////////////////
	public function edit_home(){
		$home = Introduction::find(1);
		return view("AccountantWeb.edit_page.edit_home")->with("home", $home);
	}
	public function store_edit_home(){
		$home = Introduction::find(1);
		$home->title = Input::get("title");
		$home->service = Input::get("service");
		$home->document = Input::get("document");
		$home->notification = Input::get("notification");
		$home->save();
		return Redirect::to("accountant/edit_home");
	}

	public function edit_company(){
		$company = Company::find(1);
		return view("AccountantWeb.edit_page.edit_company")->with("company", $company);
	}
	public function store_edit_company(){
		$company = Company::find(1);
		$company->intro1 = Input::get("intro1");
		$company->intro2 = Input::get("intro2");
		$company->address = Input::get("address");
		$company->phone = Input::get("phone");
		$company->email = Input::get("email");
		$company->foundation = Input::get("foundation");
		$company->openday = Input::get("openday");
		$company->save();
		return Redirect::to("accountant/edit_company");
	}

	/////////////// Show Laws ///////////////////
	public function law($id){

		switch($id){
			case "1":
				$business = Laws::find(1);
				if(Session::has("remember_login")){
					$id = Session::get("remember_login");
					$user = Users::find($id);
					return view("AccountantWeb.law.business")->with(array("business" => $business, "user" => $user));
				}
				return view("AccountantWeb.law.business")->with("business", $business);
				break;
			case "2":
				$tax = Laws::find(2);
				if(Session::has("remember_login")){
					$id = Session::get("remember_login");
					$user = Users::find($id);
					return view("AccountantWeb.law.tax")->with(array("tax" => $tax, "user" => $user));
				}
				return view("AccountantWeb.law.tax")->with("tax", $tax);
				break;
			case "3":
				$accounting = Laws::find(3);
				if(Session::has("remember_login")){
					$id = Session::get("remember_login");
					$user = Users::find($id);
					return view("AccountantWeb.law.accounting")->with(array("accounting" => $accounting, "user" => $user));
				}
				return view("AccountantWeb.law.accounting")->with("accounting", $accounting);
				break;
			case "4":
				$invest = Laws::find(4);
				if(Session::has("remember_login")){
					$id = Session::get("remember_login");
					$user = Users::find($id);
					return view("AccountantWeb.law.investment")->with(array("invest" => $invest, "user" => $user));
				}
				return view("AccountantWeb.law.investment")->with("invest", $invest);
				break;
			case "5":
				$bhxh = Laws::find(5);
				if(Session::has("remember_login")){
					$id = Session::get("remember_login");
					$user = Users::find($id);
					return view("AccountantWeb.law.bhxh")->with(array("bhxh" => $bhxh, "user" => $user));
				}
				return view("AccountantWeb.law.bhxh")->with("bhxh", $bhxh);
				break;
			case "6":
				$salary = Laws::find(6);
				if(Session::has("remember_login")){
					$id = Session::get("remember_login");
					$user = Users::find($id);
					return view("AccountantWeb.law.salary")->with(array("salary" => $salary, "user" => $user));
				}
				return view("AccountantWeb.law.salary")->with("salary", $salary);
				break;
		}
	}
	public function edit_law($id){
		switch($id){
			case "1":
				$law = Laws::find(1);
				return view("AccountantWeb.edit_page.edit_law_page")->with("law", $law);
				break;
			case "2":
				$law = Laws::find(2);
				return view("AccountantWeb.edit_page.edit_law_page")->with("law", $law);
				break;
			case "3":
				$law = Laws::find(3);
				return view("AccountantWeb.edit_page.edit_law_page")->with("law", $law);
				break;
			case "4":
				$law = Laws::find(4);
				return view("AccountantWeb.edit_page.edit_law_page")->with("law", $law);
				break;
			case "5":
				$law = Laws::find(5);
				return view("AccountantWeb.edit_page.edit_law_page")->with("law", $law);
				break;
			case "6":
				$law = Laws::find(6);
				return view("AccountantWeb.edit_page.edit_law_page")->with("law", $law);
				break;
		}
	}
	public function store_edit_law($id){
		switch($id){
			case "1":
				$law = Laws::find(1);
				$law->content = Input::get("content");
				$law->save();
				return Redirect::to("accountant/edit_law_1");
				break;
			case "2":
				$law = Laws::find(2);
				$law->content = Input::get("content");
				$law->save();
				return Redirect::to("accountant/edit_law_2");
				break;
			case "3":
				$law = Laws::find(3);
				$law->content = Input::get("content");
				$law->save();
				return Redirect::to("accountant/edit_law_3");
				break;
			case "4":
				$law = Laws::find(4);
				$law->content = Input::get("content");
				$law->save();
				return Redirect::to("accountant/edit_law_4");
				break;
			case "5":
				$law = Laws::find(5);
				$law->content = Input::get("content");
				$law->save();
				return Redirect::to("accountant/edit_law_5");
				break;
			case "6":
				$law = Laws::find(6);
				$law->content = Input::get("content");
				$law->save();
				return Redirect::to("accountant/edit_law_6");
				break;
		}
	}

	/////////////// Show Services /////////////////
	public function service($id){
		switch($id){
			case "1":
				$tax = Services::find(1);
				if(Session::has("remember_login")){
					$id = Session::get("remember_login");
					$user = Users::find($id);
					return view("AccountantWeb.services.tax")->with(array("tax" => $tax, "user" => $user));
				}
				return view("AccountantWeb.services.tax")->with("tax", $tax);
				break;
			case "2":
				$business = Services::find(2);
				if(Session::has("remember_login")){
					$id = Session::get("remember_login");
					$user = Users::find($id);
					return view("AccountantWeb.services.business")->with(array("business" => $business, "user" => $user));
				}
				return view("AccountantWeb.services.business")->with("business", $business);
				break;
			case "3":
				$book = Services::find(3);
				if(Session::has("remember_login")){
					$id = Session::get("remember_login");
					$user = Users::find($id);
					return view("AccountantWeb.services.book")->with(array("book" => $book, "user" => $user));
				}
				return view("AccountantWeb.services.book")->with("book", $book);
				break;
			case "4":
				$labor = Services::find(4);
				if(Session::has("remember_login")){
					$id = Session::get("remember_login");
					$user = Users::find($id);
					return view("AccountantWeb.services.labor")->with(array("labor" => $labor, "user" => $user));
				}
				return view("AccountantWeb.services.labor")->with("labor", $labor);
				break;
			case "5":
				$insurance = Services::find(5);
				if(Session::has("remember_login")){
					$id = Session::get("remember_login");
					$user = Users::find($id);
					return view("AccountantWeb.services.insurance")->with(array("insurance" => $insurance, "user" => $user));
				}
				return view("AccountantWeb.services.insurance")->with("insurance", $insurance);
				break;
		}
	}
	public function edit_service($id){
		switch($id){
			case "1":
				$service = Services::find(1);
				return view("AccountantWeb.edit_page.edit_service_page")->with("service", $service);
				break;
			case "2":
				$service = Services::find(2);
				return view("AccountantWeb.edit_page.edit_service_page")->with("service", $service);
				break;
			case "3":
				$service = Services::find(3);
				return view("AccountantWeb.edit_page.edit_service_page")->with("service", $service);
				break;
			case "4":
				$service = Services::find(4);
				return view("AccountantWeb.edit_page.edit_service_page")->with("service", $service);
				break;
			case "5":
				$service = Services::find(5);
				return view("AccountantWeb.edit_page.edit_service_page")->with("service", $service);
				break;
		}
	}
	public function store_edit_service($id){
		switch($id){
			case "1":
				$service = Services::find(1);
				$service->content = Input::get("content");
				$service->save();
				return Redirect::to("accountant/edit_service_1");
				break;
			case "2":
				$service = Services::find(2);
				$service->content = Input::get("content");
				$service->save();
				return Redirect::to("accountant/edit_service_2");
				break;
			case "3":
				$service = Services::find(3);
				$service->content = Input::get("content");
				$service->save();
				return Redirect::to("accountant/edit_service_3");
				break;
			case "4":
				$service = Services::find(4);
				$service->content = Input::get("content");
				$service->save();
				return Redirect::to("accountant/edit_service_4");
				break;
			case "5":
				$service = Services::find(5);
				$service->content = Input::get("content");
				$service->save();
				return Redirect::to("accountant/edit_service_5");
				break;
		}
	}


	////////////////// Show News ////////////////////
	public function news($id){
		switch($id){
			case "1":
				$news = News::find(1);
				$item = Comments::all();
				return view("AccountantWeb.news.news1")->with(array("news" => $news, "item" => $item));
				break;
			case "2":
				$news = News::find(2);
				return view("AccountantWeb.news.news2")->with("news", $news);
				break;
			case "3":
				$news = News::find(3);
				return view("AccountantWeb.news.news3")->with("news", $news);
				break;
			case "4":
				$news = News::find(4);
				return view("AccountantWeb.news.news4")->with("news", $news);
				break;
			case "5":
				$news = News::find(5);
				return view("AccountantWeb.news.news5")->with("news", $news);
				break;
			case "6":
				$news = News::find(6);
				return view("AccountantWeb.news.news6")->with("news", $news);
				break;
		}
	}
	public function edit_news($id){
		switch($id){
			case "1":
				$news = News::find(1);
				return view("AccountantWeb.edit_page.edit_news_page")->with("news", $news);
				break;
			case "2":
				$news = News::find(2);
				return view("AccountantWeb.edit_page.edit_news_page")->with("news", $news);
				break;
			case "3":
				$news = News::find(3);
				return view("AccountantWeb.edit_page.edit_news_page")->with("news", $news);
				break;
			case "4":
				$news = News::find(4);
				return view("AccountantWeb.edit_page.edit_news_page")->with("news", $news);
				break;
			case "5":
				$news = News::find(5);
				return view("AccountantWeb.edit_page.edit_news_page")->with("news", $news);
				break;
			case "6":
				$news = News::find(6);
				return view("AccountantWeb.edit_page.edit_news_page")->with("news", $news);
				break;
		}
	}
	public function store_edit_news($id){
		switch($id){
			case "1":
				$news = News::find(1);
				$news->title = Input::get("title");
				$news->lead1 = Input::get("lead1");
				$news->lead2 = Input::get("lead2");
				$news->paragraph1 = Input::get("paragraph1");
				$news->paragraph2 = Input::get("paragraph2");
				$news->paragraph3 = Input::get("paragraph3");
				$news->image1 = Input::get("image1");
				$news->image2 = Input::get("image2");
				$news->image3 = Input::get("image3");
				$news->save();
				return Redirect::to("accountant/edit_news_1");
				break;
			case "2":
				$news = News::find(2);
				$news->title = Input::get("title");
				$news->lead1 = Input::get("lead1");
				$news->lead2 = Input::get("lead2");
				$news->paragraph1 = Input::get("paragraph1");
				$news->paragraph2 = Input::get("paragraph2");
				$news->paragraph3 = Input::get("paragraph3");
				$news->image1 = Input::get("image1");
				$news->image2 = Input::get("image2");
				$news->image3 = Input::get("image3");
				$news->save();
				return Redirect::to("accountant/edit_news_2");
				break;
			case "3":
				$news = News::find(3);
				$news->title = Input::get("title");
				$news->lead1 = Input::get("lead1");
				$news->lead2 = Input::get("lead2");
				$news->paragraph1 = Input::get("paragraph1");
				$news->paragraph2 = Input::get("paragraph2");
				$news->paragraph3 = Input::get("paragraph3");
				$news->image1 = Input::get("image1");
				$news->image2 = Input::get("image2");
				$news->image3 = Input::get("image3");
				$news->save();
				return Redirect::to("accountant/edit_news_3");
				break;
			case "4":
				$news = News::find(4);
				$news->title = Input::get("title");
				$news->lead1 = Input::get("lead1");
				$news->lead2 = Input::get("lead2");
				$news->paragraph1 = Input::get("paragraph1");
				$news->paragraph2 = Input::get("paragraph2");
				$news->paragraph3 = Input::get("paragraph3");
				$news->image1 = Input::get("image1");
				$news->image2 = Input::get("image2");
				$news->image3 = Input::get("image3");
				$news->save();
				return Redirect::to("accountant/edit_news_4");
				break;
			case "5":
				$news = News::find(5);
				$news->title = Input::get("title");
				$news->lead1 = Input::get("lead1");
				$news->lead2 = Input::get("lead2");
				$news->paragraph1 = Input::get("paragraph1");
				$news->paragraph2 = Input::get("paragraph2");
				$news->paragraph3 = Input::get("paragraph3");
				$news->image1 = Input::get("image1");
				$news->image2 = Input::get("image2");
				$news->image3 = Input::get("image3");
				$news->save();
				return Redirect::to("accountant/edit_news_5");
				break;
			case "6":
				$news = News::find(6);
				$news->title = Input::get("title");
				$news->lead1 = Input::get("lead1");
				$news->lead2 = Input::get("lead2");
				$news->paragraph1 = Input::get("paragraph1");
				$news->paragraph2 = Input::get("paragraph2");
				$news->paragraph3 = Input::get("paragraph3");
				$news->image1 = Input::get("image1");
				$news->image2 = Input::get("image2");
				$news->image3 = Input::get("image3");
				$news->save();
				return Redirect::to("accountant/edit_news_6");
				break;
		}
	}
	public function comments_news($id){
		switch($id){
			case "1":
				$comment = new Comments;
				$comment->text = Input::get("text");
				$comment->author = Input::get("author");
				$comment->save();
				return Redirect::to("accountant/news1");
				break;
		}
	}
}

