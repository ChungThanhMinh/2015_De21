@extends("AccountantWeb.login.template.admin_layout")

@section('macro')
	@if(Session::has("remember_login"))
		<a href="../accountant/login">{{$user->name}}</a>
	@else
		<a href="../accountant/login">Đăng nhập</a>
	@endif
@stop

@section('customer')
<div class="portlet box blue">
	<div class="portlet-title">
		<div class="caption">
			<i class="fa fa-edit"></i>Danh sách các Users
		</div>
		<div class="tools">
			<a href="javascript:;" class="collapse"></a>
			<a href="#portlet-config" data-toggle="modal" class="config"></a>
			<a href="javascript:;" class="reload"></a>
			<a href="javascript:;" class="remove"></a>
		</div>
	</div>

	<div class="portlet-body">
		<div class="table-toolbar">
			<div class="row">
				<div class="col-md-6">
					<div class="btn-group">
						<button id="user_table_new" class="btn green" data-toggle="modal" data-target="#Add_user">
						Add New <i class="fa fa-plus"></i>
						</button>
					</div>
				</div>
			</div>
		</div>

		<div class="modal fade" id="Add_user" tabindex="-1" role="dialog" aria-labelledby="Add_user_label" aria-hidden="true">
			<div class="modal-dialog">
				<div class="modal-content">
					<form method="post" id="form_user_add_new" action="{{ url('accountant/add_new_user_by_admin') }}">
						<input type="hidden" name="_token" value="{{ csrf_token() }}">
						<div class="modal-header">
							<button class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
							<h4 class="modal-title" id="Add_user_label">Thêm thành viên</h4>
						</div>
						<div class="modal-body">
							
								<div class="form-group">
									<label for="name">Username</label>
									<input type="text" class="form-control" name="username" id="username">
								</div>
								<div class="form-group">
									<label for="email">Email</label>
									<input type="email" class="form-control" name="email" id="email">
								</div>
								<div class="form-group">
									<label for="password">Mật khẩu</label>
									<input type="password" class="form-control" name="password" id="password">
								</div>
								<div class="form-group">
									<label for="re_password">Nhập lại mật khẩu</label>
									<input type="password" class="form-control" name="re_password" id="re_password">
								</div>
								<div class="form-group">
									<label for="address">Địa chỉ</label>
									<input type="text" class="form-control" name="address" id="address">
								</div>
								<div class="form-group">
									<label for="phone">Điện thoại</label>
									<input type="text" class="form-control" name="phone" id="phone">
								</div>
							
						</div>
						<div class="modal-footer">
							<button class="btn btn-default" data-dismiss="modal">Close</button>
							<button class="btn btn-primary" id="save">Save</button>
						</div>
					</form>
					<script type="text/javascript">
						$("#form_user_add_new").validate({
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
								}
							}
						})
					</script>
				</div>
			</div>
		</div>

		<table class="table table-striped table-hover table-bordered" id="sample_editable_1">
			<thead>
				<tr>
					<th>Tên thành viên</th>
					<th>Email</th>
					<th>Địa chỉ</th>
					<th>Điện thoại</th>
					<th>Tình trạng hồ sơ</th>
					<th>Edit</th>
					<th>Delete</th>
				</tr>
			</thead>
			<tbody>
				@foreach($member as $account)
				<tr>
				<td>{{$account->name}}</td>
				<td>{{$account->email}}</td>
				<td>{{$account->address}}</td>
				<td>{{$account->phone}}</td>
				<td>{{$account->status}}</td>
				<td><a href="{{URL::to('accountant/edit_user'.$account->id.'')}}">Edit</a></td>
				<td><a href="{{URL::to('accountant/delete_user'.$account->id.'')}}">Delete</a></td>
				</tr>
				@endforeach
			</tbody>
		</table>
	</div>
</div>

<div class="portlet box blue">
	<div class="portlet-title">
		<div class="caption">
			<i class="fa fa-edit"></i>Danh sách khách hàng
		</div>
		<div class="tools">
			<a href="javascript:;" class="collapse"></a>
			<a href="#portlet-config" data-toggle="modal" class="config"></a>
			<a href="javascript:;" class="reload"></a>
			<a href="javascript:;" class="remove"></a>
		</div>
	</div>

	<div class="portlet-body">
		<div class="table-toolbar">
			<div class="row">
				<div class="col-md-6">
					<div class="btn-group">
						<button id="customer_table_new" class="btn green" data-toggle="modal" data-target="#Add_customer">
						Add New <i class="fa fa-plus"></i>
						</button>
					</div>
				</div>
			</div>
		</div>

		<div class="modal fade" id="Add_customer" tabindex="-1" role="dialog" aria-labelledby="Add_customer_label" aria-hidden="true">
			<div class="modal-dialog">
				<div class="modal-content">
					<form method="post" id="form_customer_add_new" action="{{ url('accountant/add_new_guest_by_admin') }}">
						<input type="hidden" name="_token" value="{{ csrf_token() }}">
						<div class="modal-header">
							<button class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
							<h4 class="modal-title" id="Add_customer_label">Thêm khách hàng</h4>
						</div>
						<div class="modal-body">
							
								<div class="form-group">
									<label for="name">Tên công ty</label>
									<input type="text" class="form-control" name="name" id="name">
								</div>
								<div class="form-group">
									<label for="address">Địa chỉ</label>
									<input type="text" class="form-control" name="address" id="address">
								</div>
							
						</div>
						<div class="modal-footer">
							<button class="btn btn-default" data-dismiss="modal">Close</button>
							<button class="btn btn-primary" id="save">Save</button>
						</div>
					</form>
					<script type="text/javascript">
						$("#form_customer_add_new").validate({
							rules:{
								name:{
									required: true,
									minlength: 3
								},
								address:{
									required: true,
									minlength: 3
								}
							},
							messages:{
								name:{
									required: "Vui lòng nhập tên công ty",
									minlength: "Nhiều hơn 3 ký tự"
								},
								address:{
									required: "Vui lòng nhập địa chỉ",
									minlength: "Nhiều hơn 3 ký tự"
								}
							}
						})
					</script>
				</div>
			</div>
		</div>

		<table class="table table-striped table-hover table-bordered" id="customer_table">
			<thead>
				<tr>
					<th>STT</th>
					<th>Tên khách hàng</th>
					<th>Địa chỉ</th>
					<th>Edit</th>
					<th>Delete</th>
				</tr>
			</thead>
			<tbody>
				@foreach($customer as $guest)
				<tr>
				<td>{{$guest->id}}</td>
				<td>{{$guest->name}}</td>
				<td>{{$guest->address}}</td>
				<td><a href="{{URL::to('accountant/edit_guest'.$guest->id.'')}}">Edit</a></td>
				<td><a href="{{URL::to('accountant/delete_guest'.$guest->id.'')}}">Delete</a></td>
				</tr>
				@endforeach
			</tbody>
		</table>
	</div>
</div>

<div class="portlet box blue">
	<div class="portlet-title">
		<div class="caption">
			<i class="fa fa-edit"></i>Bảng giá dịch vụ báo cáo thuế
		</div>
		<div class="tools">
			<a href="javascript:;" class="collapse"></a>
			<a href="#portlet-config" data-toggle="modal" class="config"></a>
			<a href="javascript:;" class="reload"></a>
			<a href="javascript:;" class="remove"></a>
		</div>
	</div>

	<div class="portlet-body">
		<div class="table-toolbar">
			<div class="row">
				<div class="col-md-6">
					<div class="btn-group">
						<button id="tax_table_new" class="btn green" data-toggle="modal" data-target="#Add_tax">
						Add New <i class="fa fa-plus"></i>
						</button>
					</div>
				</div>
			</div>
		</div>

		<div class="modal fade" id="Add_tax" tabindex="-1" role="dialog" aria-labelledby="Add_tax_label" aria-hidden="true">
			<div class="modal-dialog">
				<div class="modal-content">
					<form method="post" id="form_tax_add_new" action="{{ url('accountant/add_new_tax_by_admin') }}">
						<input type="hidden" name="_token" value="{{ csrf_token() }}">
						<div class="modal-header">
							<button class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
							<h4 class="modal-title" id="Add_tax_label">Thêm giá dịch vụ thuế</h4>
						</div>
						<div class="modal-body">
							
								<div class="form-group">
									<label for="amount">Số lượng chứng từ</label>
									<input type="text" class="form-control" name="amount" id="amount">
								</div>
								<div class="form-group">
									<label for="cost">Chi phí</label>
									<input type="text" class="form-control" name="cost" id="cost">
								</div>
							
						</div>
						<div class="modal-footer">
							<button class="btn btn-default" data-dismiss="modal">Close</button>
							<button class="btn btn-primary" id="save">Save</button>
						</div>
					</form>
					<script type="text/javascript">
						$("#form_tax_add_new").validate({
							rules:{
								amount:{
									required: true,
								},
								cost:{
									required: true,
									minlength: 3
								}
							},
							messages:{
								amount:{
									required: "Vui lòng nhập số lượng chứng từ"
								},
								cost:{
									required: "Vui lòng nhập chi phí",
									minlength: "Nhiều hơn 3 ký tự"
								}
							}
						})
					</script>
				</div>
			</div>
		</div>

		<table class="table table-striped table-hover table-bordered" id="tax_table">
			<thead>
				<tr>
					<th>STT</th>
					<th>Số lượng chứng từ</th>
					<th>Giá</th>
					<th>Edit</th>
					<th>Delete</th>
				</tr>
			</thead>
			<tbody>
				@foreach($tax_price as $t_cost)
				<tr>
				<td>{{$t_cost->id}}</td>
				<td>{{$t_cost->amount}}</td>
				<td>{{$t_cost->cost}}</td>
				<td><a href="{{URL::to('accountant/edit_tax_price'.$t_cost->id.'')}}">Edit</a></td>
				<td><a href="{{URL::to('accountant/delete_tax_price'.$t_cost->id.'')}}">Delete</a></td>
				</tr>
				@endforeach
			</tbody>
		</table>

	</div>
</div>

<div class="portlet box blue">
	<div class="portlet-title">
		<div class="caption">
			<i class="fa fa-edit"></i>Bảng giá dịch vụ làm sổ sách kế toán
		</div>
		<div class="tools">
			<a href="javascript:;" class="collapse"></a>
			<a href="#portlet-config" data-toggle="modal" class="config"></a>
			<a href="javascript:;" class="reload"></a>
			<a href="javascript:;" class="remove"></a>
		</div>
	</div>

	<div class="portlet-body">
		<div class="table-toolbar">
			<div class="row">
				<div class="col-md-6">
					<div class="btn-group">
						<button id="accounting_table_new" class="btn green" data-toggle="modal" data-target="#Add_document">
						Add New <i class="fa fa-plus"></i>
						</button>
					</div>
				</div>
			</div>
		</div>

		<div class="modal fade" id="Add_document" tabindex="-1" role="dialog" aria-labelledby="Add_document_label" aria-hidden="true">
			<div class="modal-dialog">
				<div class="modal-content">
					<form method="post" id="form_document_add_new" action="{{ url('accountant/add_new_document_by_admin') }}">
						<input type="hidden" name="_token" value="{{ csrf_token() }}">
						<div class="modal-header">
							<button class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
							<h4 class="modal-title" id="Add_document_label">Thêm giá dịch vụ sổ sách - kế toán</h4>
						</div>
						<div class="modal-body">
							
								<div class="form-group">
									<label for="amount">Số lượng chứng từ</label>
									<input type="text" class="form-control" name="amount" id="amount">
								</div>
								<div class="form-group">
									<label for="cost">Chi phí</label>
									<input type="text" class="form-control" name="cost" id="cost">
								</div>
							
						</div>
						<div class="modal-footer">
							<button class="btn btn-default" data-dismiss="modal">Close</button>
							<button class="btn btn-primary" id="save">Save</button>
						</div>
					</form>
					<script type="text/javascript">
						$("#form_document_add_new").validate({
							rules:{
								amount:{
									required: true,
								},
								cost:{
									required: true,
									minlength: 3
								}
							},
							messages:{
								amount:{
									required: "Vui lòng nhập số lượng chứng từ"
								},
								cost:{
									required: "Vui lòng nhập chi phí",
									minlength: "Nhiều hơn 3 ký tự"
								}
							}
						})
					</script>
				</div>
			</div>
		</div>

		<table class="table table-striped table-hover table-bordered" id="accounting_table">
			<thead>
				<tr>
					<th>STT</th>
					<th>Số lượng chứng từ</th>
					<th>Giá</th>
					<th>Edit</th>
					<th>Delete</th>
				</tr>
			</thead>
			<tbody>
				@foreach($accounting_price as $a_cost)
				<tr>
				<td>{{$a_cost->id}}</td>
				<td>{{$a_cost->amount}}</td>
				<td>{{$a_cost->cost}}</td>
				<td><a href="{{URL::to('accountant/edit_accounting_price'.$a_cost->id.'')}}">Edit</a></td>
				<td><a href="{{URL::to('accountant/delete_accounting_price'.$a_cost->id.'')}}">Delete</a></td>
				</tr>
				@endforeach
			</tbody>
		</table>
	</div>
</div>

<div class="portlet box blue">
	<div class="portlet-title">
		<div class="caption">
			<i class="fa fa-edit"></i>Bảng giá dịch vụ làm hồ sơ lao động và BHBB
		</div>
		<div class="tools">
			<a href="javascript:;" class="collapse"></a>
			<a href="#portlet-config" data-toggle="modal" class="config"></a>
			<a href="javascript:;" class="reload"></a>
			<a href="javascript:;" class="remove"></a>
		</div>
	</div>

	<div class="portlet-body">
		<div class="table-toolbar">
			<div class="row">
				<div class="col-md-6">
					<div class="btn-group">
						<button id="labor_table_new" class="btn green" data-toggle="modal" data-target="#Add_labor">
						Add New <i class="fa fa-plus"></i>
						</button>
					</div>
				</div>
			</div>
		</div>

		<div class="modal fade" id="Add_labor" tabindex="-1" role="dialog" aria-labelledby="Add_labor_label" aria-hidden="true">
			<div class="modal-dialog">
				<div class="modal-content">
					<form method="post" id="form_labor_add_new" action="{{ url('accountant/add_new_labor_by_admin') }}">
						<input type="hidden" name="_token" value="{{ csrf_token() }}">
						<div class="modal-header">
							<button class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
							<h4 class="modal-title" id="Add_labor_label">Thêm giá dịch vụ lao động - bảo hiểm</h4>
						</div>
						<div class="modal-body">
							
								<div class="form-group">
									<label for="amount">Số lượng lao động</label>
									<input type="text" class="form-control" name="amount" id="amount">
								</div>
								<div class="form-group">
									<label for="cost">Chi phí</label>
									<input type="text" class="form-control" name="cost" id="cost">
								</div>
							
						</div>
						<div class="modal-footer">
							<button class="btn btn-default" data-dismiss="modal">Close</button>
							<button class="btn btn-primary" id="save">Save</button>
						</div>
					</form>
					<script type="text/javascript">
						$("#form_labor_add_new").validate({
							rules:{
								amount:{
									required: true,
								},
								cost:{
									required: true,
									minlength: 3
								}
							},
							messages:{
								amount:{
									required: "Vui lòng nhập số lượng chứng từ"
								},
								cost:{
									required: "Vui lòng nhập chi phí",
									minlength: "Nhiều hơn 3 ký tự"
								}
							}
						})
					</script>
				</div>
			</div>
		</div>

		<table class="table table-striped table-hover table-bordered" id="labor_table">
			<thead>
				<tr>
					<th>STT</th>
					<th>Số lượng lao động</th>
					<th>Phí/lần phát sinh</th>
					<th>Edit</th>
					<th>Delete</th>
				</tr>
			</thead>
			<tbody>
				@foreach($labor_price as $l_cost)
				<tr>
				<td>{{$l_cost->id}}</td>
				<td>{{$l_cost->amount}}</td>
				<td>{{$l_cost->cost}}</td>
				<td><a href="{{URL::to('accountant/edit_labor_price'.$l_cost->id.'')}}">Edit</a></td>
				<td><a href="{{URL::to('accountant/delete_labor_price'.$l_cost->id.'')}}">Delete</a></td>
				</tr>
				@endforeach
			</tbody>
		</table>
	</div>
</div>
@stop