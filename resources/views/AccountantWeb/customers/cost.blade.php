@extends('AccountantWeb.customers.template.customers')

@section('active')
	<a href="#" class="list-group-item">Danh sách khách hàng</a>
	<a href="#" class="list-group-item active">Bảng giá dịch vụ</a>
@stop

@section('title')
	<h2>Các bảng giá dịch vụ</h2>
@stop
 
@section('macro')
	@if(Session::has("remember_login"))
		<a href="../accountant/login">{{$user->name}}</a>
	@else
		<a href="../accountant/login">Đăng nhập</a>
	@endif
@stop
 
@section('list')
	<h2>Dịch vụ báo cáo thuế</h2>
	<table class="table table-bordered table-hover">
		<thead>
			<tr>
			<th>STT</th>
			<th>Số lượng chứng từ</th>
			<th>Giá</th>
			</tr>
		</thead>
		
		<tbody>
		@foreach($taxprice as $tax)
			<tr>
				<td>{{$tax->id}}</td>
				<td>{{$tax->amount}}</td>
				<td>{{$tax->cost}}</td>
			</tr>
		@endforeach
		</tbody>
	</table>
	
	<h2>Dịch vụ làm sổ sách kế toán</h2>
	<table class="table table-bordered table-hover">
		<thead>
			<tr>
			<th>STT</th>
			<th>Số lượng chứng từ</th>
			<th>Giá</th>
			</tr>
		</thead>
		
		<tbody>
		@foreach($accountingprice as $accounting)
			<tr>
				<td>{{$accounting->id}}</td>
				<td>{{$accounting->amount}}</td>
				<td>{{$accounting->cost}}</td>
			</tr>
		@endforeach
		</tbody>
	</table>
	
	<h2>Dịch vụ làm hồ sơ lao động + BHBB lần đầu hoặc tăng giảm LĐ + BHBB</h2>
	<table class="table table-bordered table-hover">
		<thead>
			<tr>
			<th>STT</th>
			<th>Số lượng lao động</th>
			<th>Phí/Lần phát sinh</th>
			</tr>
		</thead>
		
		<tbody>
		@foreach($laborprice as $labor)
			<tr>
				<td>{{$labor->id}}</td>
				<td>{{$labor->amount}}</td>
				<td>{{$labor->cost}}</td>
			</tr>
		@endforeach
		</tbody>
	</table>
	
	<h2>Dịch vụ thành lập công ty : 700,000 Đ/Lần chưa kể phí nhà nước</h2>
	<h2>Dịch vụ thay đổi nội dung đăng ký kinh doanh : 1,000,000 Đ/Lần chưa kể phí nhà nước</h2>
	<h2>Quyết toán năm:</h2>
		<p style="color: red">Khách hàng TDM được cung cấp dịch vụ miễn phí</p>
@stop