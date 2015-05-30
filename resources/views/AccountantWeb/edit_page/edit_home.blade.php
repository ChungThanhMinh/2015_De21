@extends("AccountantWeb.edit_page.template.admin_layout")

@section('macro')
	
@stop

@section('customer')
	<form method="post" id="form_user_add_new" action="{{URL::to('accountant/store_edit_home')}}">
		<input type="hidden" name="_token" value="{{ csrf_token() }}">
		<div class="modal-body">
			<h2>Lời giới thiệu</h2>
			<textarea id="title" name="title" rows="5" cols="120" value="{{$home->title}}">
				{{$home->title}}
			</textarea>

			<h2>Dịch vụ</h2>
			<textarea id="service" name="service" rows="3" cols="100" value="{{$home->service}}">
				{{$home->service}}
			</textarea>

			<h2>Văn bản pháp luật</h2>
			<textarea id="document" name="document" rows="3" cols="100" value="{{$home->document}}">
				{{$home->document}}
			</textarea>

			<h2>Thông báo</h2>
			<textarea id="notification" name="notification" rows="3" cols="100" value="{{$home->notification}}">
				{{$home->notification}}
			</textarea>
		</div>
		<div class="modal-footer">
			<button class="btn btn-primary" id="save">Change</button>
		</div>
	</form>
@stop