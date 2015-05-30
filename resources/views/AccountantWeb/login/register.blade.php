@extends("AccountantWeb.login.template.form")

@section('macro')
	@if(Session::has("remember_login"))
		<a href="../accountant/login">{{$user->name}}</a>
	@else
		<a href="../accountant/login">Đăng nhập</a>
	@endif
@stop

@section('content')

	<h2>Đăng ký thành viên</h2>
	<form method="post" id="form_register" action="{{ url('accountant/register') }}">
		<input type="hidden" name="_token" value="{{ csrf_token() }}">
		<input type="text" name="username" id="username" placeholder="Tên tài khoản" class="form-control"/>
		<br>
		<input type="password" name="password" id="password" placeholder="Mật khẩu" class="form-control"/>
		<br>
		<input type="password" name="re_password" id="re_password" placeholder="Nhập lại mật khẩu" class="form-control"/>
		<br>
		<input type="email" name="email" id="email" placeholder="Email" class="form-control"/>
		<br>
		<input type="text" name="address" id="address" placeholder="Địa chỉ" class="form-control"/>
		<br>
		<input type="text" name="phone" id="phone" placeholder="Điện thoại" class="form-control"/>
		<br>
		<input type="text" name="status" id="status" placeholder="Tình trạng" class="form-control"/>
		<hr>
		<button class="btn btn-primary">Đăng ký</button>
	</form>
	
	<script type="text/javascript">
		$("#form_register").validate({
			rules:{
				username:{
					required: true,
					minlength: 3
				},
				password:{
					required: true,
					minlength: 6
				},
				re_password:{
					equalTo: "#password",
				},
				email:{
					required: true,
					email: true
				},
				phone:{
					required: true,
					minlength: 6
				},
				status:{
					required: true,
				}
			},
			messages:{
				username:{
					required: "Vui lòng nhập username",
					minlength: "Nhiều hơn 3 ký tự",
					remote: "Tên này đã tồn tại"
				},
				password:{
					required: "Vui lòng nhập mật khẩu",
					minlength: "Nhiều hơn 6 ký tự"
				},
				re_password:{
					equalTo: "Mật khẩu không đúng"
				},
				email:{
					required: "Vui lòng nhập email",
					email: "Không đúng định dạng email",
					remote: "Email này đã tồn tại"
				},
				phone:{
					required: "Vui lòng nhập số điện thoại",
					minlength: "Nhiều hơn 6 số"
				},
				status:{
					required: "Vui lòng nhập tình trạng hoạt động"				
				}
			}
		})
	</script>
@stop