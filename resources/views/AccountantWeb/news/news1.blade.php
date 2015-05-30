@extends('AccountantWeb.news.template.gui')
 
@section('title')
{{$news->title}}
@stop

@section('time')
Posted on April 24, 2015 at 9:00 PM
@stop

@section('content')
<hr>
<img class="img-responsive img-portfolio img-hover" src="{{asset('images-accountant/news/news1/pic1.jpg')}}" alt="">
<hr>

<p class="lead">{{$news->lead2}}</p>

<p>
	{{$news->paragraph1}}
</p>

<hr>
<img class="img-responsive img-portfolio img-hover" src="{{asset('images-accountant/news/news1/pic2.jpg')}}" alt="">
<hr>

<p>
	{{$news->paragraph2}}
</p>

<br>

<h4>Nguyên nhân</h4>
<p>
	{{$news->paragraph3}}
</p>

<hr>
@stop

@section('comments')
<div class="well">
    <h4>Bình luận:</h4>
	<form method="post" id="form_comments" action="{{ url('accountant/news1') }}">
		<input type="hidden" name="_token" value="{{ csrf_token() }}">
		<div class="form-group">
			<textarea name="text" id="text" class="form-control" rows="3"></textarea>
			<label>Tên: </label>
			<input type="text" name="author" id="author" class="form-control">
		</div>
        <button type="submit" class="btn btn-primary">Gửi</button>
	</form>
</div>
<hr>
<hr>
@foreach($item as $account)
<div class="media-body">
    <h4 class="media-heading">{{$account->author}}
		<small>{{$account->created_at}}</small>
    </h4>
    <p>{{$account->text}}</p>
</div>
<br>
@endforeach
@stop