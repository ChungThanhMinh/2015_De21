@extends("AccountantWeb.edit_page.template.admin_layout")

@section('macro')
	
@stop

@section('customer')
	<form method="post" id="form_user_add_new" action="{{URL::to('accountant/store_edit_law'.$law->id.'')}}">
		<input type="hidden" name="_token" value="{{ csrf_token() }}">
		<div class="modal-body">
			<textarea id="content" name="content" rows="100" cols="120" value="{{$law->content}}">
				{{$law->content}}
			</textarea>
		</div>
		<div class="modal-footer">
			<button class="btn btn-primary" id="save">Change</button>
		</div>
	</form>
@stop