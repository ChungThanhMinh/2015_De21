@extends("AccountantWeb.login.template.form")

@section('macro')
	@if(Session::has("remember_login"))
		<a href="#">{{$user->name}}</a>
	@else
		<a href="../accountant/login">Đăng nhập</a>
	@endif
@stop

@section('content')

	<h2>Chỉnh sửa thông tin khách hàng</h2>
	<form method="post" id="form_edit" action="{{ url('accountant/store_edit_info') }}">
		<input type="hidden" name="_token" value="{{ csrf_token() }}">
		<input type="hidden" name="id" id="id" value="{{$user_edit->id}}">
		<input type="text" name="edit_name" id="edit_name" placeholder="Tên đăng nhập" value="{{$user_edit->name}}" class="form-control"/>
		<hr>
		<input type="password" name="edit_pass" id="edit_pass" placeholder="Mật khẩu" class="form-control"/>
		<hr>
		<input type="password" name="edit_re_pass" id="edit_re_pass" placeholder="Nhập lại mật khẩu" class="form-control"/>
		<hr>
		<input type="email" name="edit_email" id="edit_email" placeholder="Email" value="{{$user_edit->email}}" class="form-control"/>
		<hr>
		<input type="text" name="edit_address" id="edit_address" placeholder="Địa chỉ" value="{{$user_edit->address}}" class="form-control"/>
		<hr>
		<input type="text" name="edit_phone" id="edit_phone" placeholder="Điện thoại" value="{{$user_edit->phone}}" class="form-control"/>
		<hr>
		<input type="text" name="edit_status" id="edit_status" placeholder="Tình trạng" value="{{$user_edit->status}}" class="form-control"/>
		<hr>
		<button class="btn btn-primary">Lưu thay đổi</button>
	</form>
	
	<script type="text/javascript">
		$("#form_edit").validate({
			rules:{
				edit_name:{
					required: true,
					minlength: 3
				},
				edit_pass:{
					required: true,
					minlength: 6
				},
				edit_re_pass:{
					equalTo: "#edit_pass",
				},
				edit_email:{
					required: true,
					email: true
				},
				edit_phone:{
					required: true,
					minlength: 6
				},
				edit_status:{
					required: true,
				}
			},
			messages:{
				edit_name:{
					required: "Vui lòng nhập username",
					minlength: "Nhiều hơn 3 ký tự"
				},
				edit_pass:{
					required: "Vui lòng nhập mật khẩu",
					minlength: "Nhiều hơn 6 ký tự"
				},
				edit_re_pass:{
					equalTo: "Mật khẩu không đúng"
				},
				edit_email:{
					required: "Vui lòng nhập email",
					email: "Không đúng định dạng email"
				},
				edit_phone:{
					required: "Vui lòng nhập số điện thoại",
					minlength: "Nhiều hơn 6 số"
				},
				edit_status:{
					required: "Vui lòng nhập tình trạng"				
				}
			}
		})
	</script>
@stop