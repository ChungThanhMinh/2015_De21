@extends('AccountantWeb.law.template.law')
 
@section('title')
Luật Doanh Nghiệp
@stop

@section('time')
Posted on April 24, 2015 at 9:00 PM
@stop

@section('content')
<pre>
	{{$business->content}}
</pre>
@stop