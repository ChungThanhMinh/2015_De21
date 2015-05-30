@extends("AccountantWeb.login.template.admin_layout")

@section('customer')
<h2>Chỉnh sửa bảng giá dịch vụ lao động và BHBB</h2>
	<form method="post" id="form_edit" action="{{ url('accountant/store_edit_labor_price_by_admin') }}">
		<input type="hidden" name="_token" value="{{ csrf_token() }}">
		<input type="hidden" name="id" id="id" value="{{$labor->id}}">

		<input type="text" name="edit_amount" id="edit_amount" placeholder="Số lượng lao động" value="{{$labor->amount}}" class="form-control"/>
		
		<input type="text" name="edit_cost" id="edit_cost" placeholder="Phí/lần phát sinh" value="{{$labor->cost}}" class="form-control"/>
		
		<button class="btn btn-primary">Lưu thay đổi</button>
	</form>
	
	<script type="text/javascript">
		$("#form_edit").validate({
			rules:{
				edit_amount:{
					required: true,
					minlength: 3
				}
			},
			messages:{
				edit_amount:{
					required: "Vui lòng nhập name",
					minlength: "Nhiều hơn 3 ký tự"
				}
			}
		})
	</script>
@stop