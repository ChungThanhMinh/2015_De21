@extends("AccountantWeb.edit_page.template.admin_layout")

@section('macro')
	
@stop

@section('customer')
	<form method="post" id="form_user_add_new" action="{{URL::to('accountant/store_edit_company')}}">
		<input type="hidden" name="_token" value="{{ csrf_token() }}">
		<div class="modal-body">
			<h2>Lời giới thiệu 1</h2>
			<textarea id="intro1" name="intro1" rows="5" cols="120" value="{{$company->intro1}}">
				{{$company->intro1}}
			</textarea>

			<h2>Lời giới thiệu 2</h2>
			<textarea id="intro2" name="intro2" rows="5" cols="120" value="{{$company->intro2}}">
				{{$company->intro2}}
			</textarea>

			<h2>Địa chỉ</h2>
			<textarea id="address" name="address" rows="1" cols="90" value="{{$company->address}}">
				{{$company->address}}
			</textarea>

			<h2>Điện thoại</h2>
			<textarea id="phone" name="phone" rows="1" cols="90" value="{{$company->phone}}">
				{{$company->phone}}
			</textarea>

			<h2>Email</h2>
			<textarea id="email" name="email" rows="1" cols="90" value="{{$company->email}}">
				{{$company->email}}
			</textarea>

			<h2>Ngày thành lập</h2>
			<textarea id="foundation" name="foundation" rows="1" cols="90" value="{{$company->foundation}}">
				{{$company->foundation}}
			</textarea>

			<h2>Giờ mở cửa</h2>
			<textarea id="openday" name="openday" rows="1" cols="90" value="{{$company->openday}}">
				{{$company->openday}}
			</textarea>
		</div>
		<div class="modal-footer">
			<button class="btn btn-primary" id="save">Change</button>
		</div>
	</form>
@stop