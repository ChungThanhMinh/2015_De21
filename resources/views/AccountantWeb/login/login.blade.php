@extends("AccountantWeb.login.template.form")

@section('macro')
	@if(Session::has("remember_login"))
		<a href="../accountant/login">{{$user->name}}</a>
	@else
		<a href="../accountant/login">Đăng nhập</a>
	@endif
@stop

@section('content')

	<h2>Đăng nhập</h2>
	<form method="post" id="form_login" action="{{ url('accountant/login') }}">
	
		@if(Session::has("register_success"))
			{{Session::get("register_success")}}
		<?php Session::forget("register_success") ?>
		@endif
		
		<input type="hidden" name="_token" value="{{ csrf_token() }}">
		<input type="text" name="username" id="username" placeholder="Tên đăng nhập" class="form-control"/>
		<br>
		<input type="password" name="password" id="password" placeholder="Mật khẩu" class="form-control"/>
		
		<hr>
		<div class="col-md-12 text-center">
		@if(isset($error_message))
			<label class="error">{{$error_message}}<label>
		@endif
		</div>
		<hr>
		<button class="btn btn-primary">Đăng nhập</button>
	</form>

@stop