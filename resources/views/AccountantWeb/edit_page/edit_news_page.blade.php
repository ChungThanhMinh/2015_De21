@extends("AccountantWeb.edit_page.template.admin_layout")

@section('macro')
	
@stop

@section('customer')
	<form method="post" id="form_user_add_new" action="{{URL::to('accountant/store_edit_news'.$news->id.'')}}">
		<input type="hidden" name="_token" value="{{ csrf_token() }}">
		<div class="modal-body">
			<h2>Title</h2>
			<textarea id="title" name="title" rows="2" cols="120" value="{{$news->title}}">
				{{$news->title}}
			</textarea>

			<h2>Lead1</h2>
			<textarea id="lead1" name="lead1" rows="3" cols="120" value="{{$news->lead1}}">
				{{$news->lead1}}
			</textarea>

			<h2>Lead2</h2>
			<textarea id="lead2" name="lead2" rows="3" cols="120" value="{{$news->lead2}}">
				{{$news->lead2}}
			</textarea>

			<h2>Paragraph1</h2>
			<textarea id="paragraph1" name="paragraph1" rows="20" cols="120" value="{{$news->paragraph1}}">
				{{$news->paragraph1}}
			</textarea>

			<h2>Paragraph2</h2>
			<textarea id="paragraph2" name="paragraph2" rows="20" cols="120" value="{{$news->paragraph2}}">
				{{$news->paragraph2}}
			</textarea>

			<h2>Paragraph3</h2>
			<textarea id="paragraph3" name="paragraph3" rows="20" cols="120" value="{{$news->paragraph3}}">
				{{$news->paragraph3}}
			</textarea>

			<h2>Images</h2>
			<h3>Link Image 1</h3>
			<textarea id="image1" name="image1" rows="1" cols="100" value="{{$news->image1}}">
				{{$news->image1}}
			</textarea>
			<h3>Link Image 2</h3>
			<textarea id="image2" name="image2" rows="1" cols="100" value="{{$news->image2}}">
				{{$news->image2}}
			</textarea>
			<h3>Link Image 3</h3>
			<textarea id="image3" name="image3" rows="1" cols="100" value="{{$news->image3}}">
				{{$news->image3}}
			</textarea>
		</div>
		<div class="modal-footer">
			<button class="btn btn-primary" id="save">Change</button>
		</div>
	</form>
@stop