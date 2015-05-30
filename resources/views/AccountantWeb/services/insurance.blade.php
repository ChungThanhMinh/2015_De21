@extends('AccountantWeb.services.template.services')
 
@section('title')
Dịch vụ thuế
@stop

@section('time')
Posted on April 24, 2015 at 9:00 PM
@stop

@section('content')
	<pre>
		{{$insurance->content}}
	</pre>
@stop