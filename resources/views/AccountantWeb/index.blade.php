<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
	<!-- Meta: co the su dung cho browser, serach engine, ... -->
    <meta name="description" content="University of Technology">
    <meta name="author" content="Chung Thanh Minh - Diep Thanh Dang - Ngo Duc Thinh">

    <title>Accountant Website</title>

    <!-- Bootstrap Core CSS -->
    <link href="{{asset('css/bootstrap.min.css')}}" rel="stylesheet">
    <!-- Custom CSS -->
    <link href="{{asset('css/modern-business.css')}}" rel="stylesheet">
    <!-- Custom Fonts -->
    <link href="{{asset('css/font-awesome.min.css')}}" rel="stylesheet" type="text/css">
	
</head>

<body>
    <!-- Navigation menu -->
    <nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
        <div class="container">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="accountant"><span class="glyphicon glyphicon-home" style="font-size:1.5em"></span></a>
            </div>
            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav navbar-right">
                    <li>
                        <a href="accountant/about">Giới Thiệu</a>
                    </li>
                    <li>
                        <a href="accountant/contact">Liên Hệ</a>
                    </li>
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">Dịch vụ<b class="caret"></b></a>
                        <ul class="dropdown-menu">
                            <li>
                                <a href="accountant/service1">Dịch vụ thuế</a>
                            </li>
                            <li>
                                <a href="accountant/service2">Dịch vụ doanh nghiệp</a>
                            </li>
                            <li>
                                <a href="accountant/service3">Thực hiện sổ sách</a>
                            </li>
                            <li>
                                <a href="accountant/service4">Hồ sơ lao động</a>
                            </li>
							<li>
                                <a href="accountant/service5">Hồ sơ bảo hiểm</a>
                            </li>
                        </ul>
                    </li>
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">Văn bản pháp luật<b class="caret"></b></a>
                        <ul class="dropdown-menu">
                            <li>
                                <a href="{{URL::to('accountant/law1')}}">Luật doanh nghiệp</a>
                            </li>
                            <li>
                                <a href="{{URL::to('accountant/law2')}}">Thuế và quản lý thuế</a>
                            </li>
                            <li>
                                <a href="{{URL::to('accountant/law3')}}">Kế toán kiểm toán</a>
                            </li>
							<li>
                                <a href="{{URL::to('accountant/law4')}}">Đầu tư</a>
                            </li>
							<li>
                                <a href="{{URL::to('accountant/law5')}}">Bảo hiểm xã hội</a>
                            </li>
							<li>
                                <a href="{{URL::to('accountant/law6')}}">Tiền lương</a>
                            </li>
                        </ul>
                    </li>
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">Tra cứu<b class="caret"></b></a>
                        <ul class="dropdown-menu">
                            <li>
                                <a href="accountant/customers">Danh sách khách hàng</a>
                            </li>
                            <li>
                                <a href="accountant/serviceprices">Bảng giá dịch vụ</a>
                            </li>
                        </ul>
                    </li>
					<li>
                        @if(Session::has("remember_login"))
                            <a href="../public/accountant/login">{{$user->name}}</a>
                         @else
                            <a href="../public/accountant/login">Đăng nhập</a>
                        @endif
                    </li>
					<li>
                        <a href="accountant/register">Đăng ký</a>
                    </li>
                </ul>
            </div>
			
            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container -->
    </nav>

    <!-- Header Carousel -->
    <header id="myCarousel" class="carousel slide">
        <!-- Indicators -->
        <ol class="carousel-indicators">
            <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
            <li data-target="#myCarousel" data-slide-to="1"></li>
            <li data-target="#myCarousel" data-slide-to="2"></li>
        </ol>

        <!-- Wrapper for slides -->
        <div class="carousel-inner">
            <div class="item active">
                <div class="fill" style="background-image:url('{{asset('images-accountant/slide1.jpg')}}');"></div>
                <div class="carousel-caption">
                    <h2>Mathematics</h2>
                </div>
            </div>
            <div class="item">
                <div class="fill" style="background-image:url('{{asset('images-accountant/slide2.jpg')}}');"></div>
                <div class="carousel-caption">
                    <h2>Analytical</h2>
                </div>
            </div>
            <div class="item">
                <div class="fill" style="background-image:url('{{asset('images-accountant/slide3.jpg')}}');"></div>
                <div class="carousel-caption">
                    <h2>Critical thinking</h2>
                </div>
            </div>
        </div>

        <!-- Controls -->
        <a class="left carousel-control" href="#myCarousel" data-slide="prev">
            <span class="icon-prev"></span>
        </a>
        <a class="right carousel-control" href="#myCarousel" data-slide="next">
            <span class="icon-next"></span>
        </a>
    </header>

    <!-- Page Content -->
    <div class="container">

        <!-- Marketing Icons Section -->
        <div class="row">
            <div class="col-lg-12">
                <h1 class="page-header" style="color:#063544">
                    Công Ty TNHH TDM
                </h1>
            </div>
			<div class="col-md-9">
				<div class="well" style="color:#063544">
				{{$intro->title}}
				</div>
			</div>
			<div class="col-md-3">
				<img class="img-responsive img-portfolio img-hover" src="{{asset('images-accountant/logo/logo.jpg')}}" alt="">
			</div>
            <div class="col-md-4">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h4><i class="glyphicon glyphicon-cog"></i> Dịch vụ</h4>
                    </div>
                    <div class="panel-body">
                        <p><strong>Chúng tôi lắng nghe và có giải pháp cho bạn:</strong></p>
						<p>{{$intro->service}}</p>
                    </div>
                </div>
            </div>
            <div class="col-md-4">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h4><i class="glyphicon glyphicon-book"></i> Văn bản pháp luật</h4>
                    </div>
                    <div class="panel-body">
                        <p><strong>Tư vấn pháp lý:</strong></p>
						<p>{{$intro->document}}</p>
                    </div>
                </div>
            </div>
            <div class="col-md-4">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h4><i class="glyphicon glyphicon-exclamation-sign"></i> Thông báo</h4>
                    </div>
                    <div class="panel-body">
                        <p><strong>Các thông báo mới nhất về:</strong></p>
						<p>{{$intro->notification}}</p>
                    </div>
                </div>
            </div>
        </div>
        <!-- /.row -->

        <!-- Portfolio Section -->
        <div class="row">
            <div class="col-lg-12">
                <h2 class="page-header">Tin tức mới nhất</h2>
            </div>
            @foreach($news as $item)
            <div class="col-md-4 col-sm-6">
				<div class="item">
					<img class="img-responsive img-portfolio img-hover" src="{{$item->image1}}" alt="">
					<a href="{{URL::to('accountant/news'.$item->id.'')}}"><h4>{{$item->title}}</h4></a>
					<p>{{$item->lead1}}</p>
				</div>
            </div>
            @endforeach
        </div>
        <!-- /.row -->

        <!-- Features Section -->
        <div class="row">
            <div class="col-lg-12">
                <h2 class="page-header">Liên hệ</h2>
            </div>
            <div class="col-md-6">
                <p>Nếu có bất cứ câu hỏi nào, xin hãy liên hệ với chúng tôi tại:</p>
                <ul>
                    <li><strong>Công ty TNHH TDM</strong></li>
                    <li>{{$company->address}}</li>
                    <li>{{$company->foundation}}</li>
                    <li>{{$company->intro1}}</li>
                </ul>
            </div>
            <div class="col-md-6">
                <script type="text/javascript" src="http://maps.google.com/maps/api/js?sensor=false"></script>
				<div style="overflow:hidden;height:500px;width:600px;"><div id="gmap_canvas" style="height:500px;width:600px;"></div><style>#gmap_canvas img{max-width:none!important;background:none!important}</style><a class="google-map-code" href="http://www.map-embed.com" id="get-map-data">http://www.map-embed.com</a></div>
				<script type="text/javascript"> function init_map(){var myOptions = {zoom:14,center:new google.maps.LatLng(10.777209,106.70179359999997),mapTypeId: google.maps.MapTypeId.ROADMAP};map = new google.maps.Map(document.getElementById("gmap_canvas"), myOptions);marker = new google.maps.Marker({map: map,position: new google.maps.LatLng(10.777209, 106.70179359999997)});infowindow = new google.maps.InfoWindow({content:"<b>TDM Company</b><br/>72 Le Thanh Ton, District 1, Ho Chi Minh City<br/>70000 Vietnam" });google.maps.event.addListener(marker, "click", function(){infowindow.open(map,marker);});infowindow.open(map,marker);}google.maps.event.addDomListener(window, 'load', init_map);</script>
            </div>
        </div>
        <!-- /.row -->

        <hr>

        <!-- Call to Action Section -->
        <div class="well">
            <div class="row">
                <div class="col-md-8">
                    <p>Chúng tôi đang phấn đầu để xây dựng một doanh nghiệp năng động, chuyên sâu trong lĩnh vực tư vấn thuế và các văn bản tài chính - kế toán. TDM, với sự ra đời của mình, đã cam kết nhận sứ mệnh đi tiên phong trong lĩnh vực đại lý thuế, góp phần đưa dịch vụ tư vấn đi vào cuộc sống và đem lại hiệu quả thiết thực cho cộng đồng doanh nghiệp tại Việt Nam.</p>
                </div>
                <div class="col-md-4">
                    <a class="btn btn-lg btn-default btn-block" href="#">Tham gia</a>
                </div>
            </div>
        </div>

        <hr>

        <!-- Footer -->
        <footer>
            <div class="row">
                <div class="col-lg-12">
                    <p>Copyright &copy; Accountant Website 2015</p>
                </div>
            </div>
        </footer>

    </div>
    <!-- /.container -->

    <!-- jQuery -->
    <script src="{{asset('js/jquery.js')}}"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="{{asset('js/bootstrap.min.js')}}"></script>

    <!-- Script to Activate the Carousel -->
    <script>
    $('.carousel').carousel({
        interval: 5000 //changes the speed
    })
    </script>

</body>

</html>
