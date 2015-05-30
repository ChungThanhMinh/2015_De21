@extends("AccountantWeb.login.template.admin_layout")

@section('customer')
<h2>Chỉnh sửa thông tin khách hàng</h2>
	<form method="post" id="form_edit" action="{{ url('accountant/store_edit_guest_by_admin') }}">
		<input type="hidden" name="_token" value="{{ csrf_token() }}">
		<input type="hidden" name="id" id="id" value="{{$guest->id}}">

		<input type="text" name="edit_name" id="edit_name" placeholder="Tên công ty" value="{{$guest->name}}" class="form-control"/>
		
		<input type="text" name="edit_address" id="edit_address" placeholder="Địa chỉ" value="{{$guest->address}}" class="form-control"/>
		
		<button class="btn btn-primary">Lưu thay đổi</button>
	</form>
	
	<script type="text/javascript">
		$("#form_edit").validate({
			rules:{
				edit_name:{
					required: true,
					minlength: 3
				}
			},
			messages:{
				edit_name:{
					required: "Vui lòng nhập name",
					minlength: "Nhiều hơn 3 ký tự"
				}
			}
		})
	</script>
@stop