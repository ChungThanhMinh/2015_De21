@extends('AccountantWeb.customers.template.customers')

@section('active')
	<a href="#" class="list-group-item active">Danh sách khách hàng</a>
	<a href="#" class="list-group-item">Bảng giá dịch vụ</a>
@stop

@section('title')
	<h2>Thống kê các khách hàng của công ty</h2>
@stop
 
@section('macro')
	@if(Session::has("remember_login"))
		<a href="../accountant/login">{{$user->name}}</a>
	@else
		<a href="../accountant/login">Đăng nhập</a>
	@endif
@stop

@section('list')
	<table class="table table-bordered table-hover">
		<thead>
			<tr>
			<th>STT</th>
			<th>Tên công ty</th>
			<th>Địa chỉ</th>
			</tr>
		</thead>
		
		<tbody>
		@foreach($customer as $item)
			<tr>
				<td>{{$item->id}}</td>
				<td>{{$item->name}}</td>
				<td>{{$item->address}}</td>
			</tr>
		@endforeach
		</tbody>
	</table>
@stop