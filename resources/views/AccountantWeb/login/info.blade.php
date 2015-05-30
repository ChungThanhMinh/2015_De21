@extends("AccountantWeb.login.template.form")

@section('macro')
	@if(Session::has("remember_login"))
		<a href="../accountant/login">{{$user->name}}</a>
	@else
		<a href="../accountant/login">Đăng nhập</a>
	@endif
@stop

@section('content')
		<h3>
		@if(Session::has("login_success"))
			{{Session::get("login_success")}}
		<?php Session::forget("login_success") ?>
		@endif
		</h3>
		<div class="col-md-8">
			<form method="post" id="form_login" action="{{ url('accountant/edit') }}">
				<input type="hidden" name="_token" value="{{ csrf_token() }}">
				<input type="hidden" name="id" id="id" value="{{$user->id}}">
				<hr>
				<p><strong>Tên Đăng Nhập: </strong></p><p>{{$user->name}}</p>
				<hr>
				<p><strong>Email: </strong></p><p>{{$user->email}}</p>
				<hr>
				<p><strong>Địa chỉ: </strong></p><p>{{$user->address}}</p>
				<hr>
				<p><strong>Điện thoại: </strong></p><p>{{$user->phone}}</p>
				<hr>
				<p><strong>Tình trạng hồ sơ: </strong></p><p>{{$user->status}}</p>
				<hr>
				<button class="btn btn-primary">Chỉnh sửa thông tin</button>
			</form>
		</div>
		<div class="col-md-12">
			<hr>
			<h2><a href="../accountant/logout">Thoát khỏi tài khoản</a></h2>
		</div>
@stop