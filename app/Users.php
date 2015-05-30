<?php namespace App;
use \Validator, \Redirect, \Input;
use Illuminate\Database\Eloquent\Model;

class Users extends Model {

	public $table = "users";
	
	public static function checkLogin($username, $password){
		$name = array("username" => $username);
		$email = array("username" => "email");
		if(Validator::make($name, $email)->fails()){
			$check = Users::where("name","=",$username)->where("password","=",$password)->count();
		}else{
			$check = Users::where("email","=",$username)->where("password","=",$password)->count();
		}
		
		if($check > 0)
			return true;
		else
			return false;
	}
	
	public static function checkUsername($username){
		if(Users::where("username","=",$username)->count()>0)
			return false;
		else
			return true;
	}
	
	public static function checkEmail($email){
		if(Users::where("email","=",$email)->count()>0)
			return false;
		else
			return true;
	}

}
