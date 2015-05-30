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

    <!-- Navigation -->
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
                <a class="navbar-brand" href="../accountant"><span class="glyphicon glyphicon-home" style="font-size:1.5em"></span></a>
            </div>
            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav navbar-right">
                    <li>
                        <a href="../accountant/about">Giới Thiệu</a>
                    </li>
                    <li>
                        <a href="../accountant/contact">Liên Hệ</a>
                    </li>
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">Dịch vụ<b class="caret"></b></a>
                        <ul class="dropdown-menu">
                            <li>
                                <a href="../accountant/service1">Dịch vụ thuế</a>
                            </li>
                            <li>
                                <a href="../accountant/service2">Dịch vụ doanh nghiệp</a>
                            </li>
                            <li>
                                <a href="../accountant/service3">Thực hiện sổ sách</a>
                            </li>
                            <li>
                                <a href="../accountant/service4">Hồ sơ lao động</a>
                            </li>
							<li>
                                <a href="../accountant/service5">Hồ sơ bảo hiểm</a>
                            </li>
                        </ul>
                    </li>
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">Văn bản pháp luật<b class="caret"></b></a>
                        <ul class="dropdown-menu">
                            <li>
                                <a href="../accountant/law1">Luật doanh nghiệp</a>
                            </li>
                            <li>
                                <a href="../accountant/law2">Thuế và quản lý thuế</a>
                            </li>
                            <li>
                                <a href="../accountant/law3">Kế toán kiểm toán</a>
                            </li>
							<li>
                                <a href="../accountant/law4">Đầu tư</a>
                            </li>
							<li>
                                <a href="../accountant/law5">Bảo hiểm xã hội</a>
                            </li>
							<li>
                                <a href="../accountant/law6">Tiền lương</a>
                            </li>
                        </ul>
                    </li>
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">Tra cứu<b class="caret"></b></a>
                        <ul class="dropdown-menu">
                            <li>
                                <a href="../accountant/customers">Danh sách khách hàng</a>
                            </li>
                            <li>
                                <a href="../accountant/serviceprices">Bảng giá dịch vụ</a>
                            </li>
                        </ul>
                    </li>
					<li>
                        @if(Session::has("remember_login"))
                            <a href="../accountant/login">{{$user->name}}</a>
                        @else
                            <a href="../accountant/login">Đăng nhập</a>
                        @endif
                    </li>
					<li>
                        <a href="../accountant/register">Đăng ký</a>
                    </li>
                </ul>
            </div>
            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container -->
    </nav>

    <!-- Page Content -->
    <div class="container">

        <!-- Page Heading/Breadcrumbs -->
        <div class="row">
            <div class="col-lg-12">
                <h1 class="page-header">Liên Hệ</h1>
                <ol class="breadcrumb">
                    <li><a href="../accountant">Trang Chủ</a>
                    </li>
                    <li class="active">Liên Hệ</li>
                </ol>
            </div>
        </div>
        <!-- /.row -->

        <!-- Content Row -->
        <div class="row">
            <!-- Map Column -->
            <div class="col-md-8">
                <!-- Embedded Google Map -->
                <script type="text/javascript" src="http://maps.google.com/maps/api/js?sensor=false"></script>
				<div style="overflow:hidden;height:400px;width:750px;"><div id="gmap_canvas" style="height:400px;width:750px;"></div><style>#gmap_canvas img{max-width:none!important;background:none!important}</style><a class="google-map-code" href="http://www.map-embed.com" id="get-map-data">http://www.map-embed.com</a></div>
				<script type="text/javascript"> function init_map(){var myOptions = {zoom:14,center:new google.maps.LatLng(10.777209,106.70179359999997),mapTypeId: google.maps.MapTypeId.ROADMAP};map = new google.maps.Map(document.getElementById("gmap_canvas"), myOptions);marker = new google.maps.Marker({map: map,position: new google.maps.LatLng(10.777209, 106.70179359999997)});infowindow = new google.maps.InfoWindow({content:"<b>TDM Company</b><br/>72 Le Thanh Ton, District 1, Ho Chi Minh City<br/>70000 Vietnam" });google.maps.event.addListener(marker, "click", function(){infowindow.open(map,marker);});infowindow.open(map,marker);}google.maps.event.addDomListener(window, 'load', init_map);</script>
            </div>
            <!-- Contact Details Column -->
            <div class="col-md-4">
                <h3>Chi tiết liên hệ</h3>
                <p>72 Lê Thánh Tôn, P. Bến Nghé <br>
				   Q.1, Tp. Hồ Chí Minh
				</p>
                <p><i class="fa fa-phone"></i> 
                    <abbr title="Phone">P</abbr>: {{$company->phone}}</p>
                <p><i class="fa fa-envelope-o"></i> 
                    <abbr title="Email">E</abbr>: <a href="mailto:tdmcompany@gmail.com">{{$company->email}}</a>
                </p>
                <p><i class="fa fa-clock-o"></i> 
                    <abbr title="Hours">H</abbr>: {{$company->openday}}</p>
                <ul class="list-unstyled list-inline list-social-icons">
                    <li>
                        <a href="#"><i class="fa fa-facebook-square fa-2x"></i></a>
                    </li>
                    <li>
                        <a href="#"><i class="fa fa-linkedin-square fa-2x"></i></a>
                    </li>
                    <li>
                        <a href="#"><i class="fa fa-twitter-square fa-2x"></i></a>
                    </li>
                    <li>
                        <a href="#"><i class="fa fa-google-plus-square fa-2x"></i></a>
                    </li>
                </ul>
            </div>
        </div>
        <!-- /.row -->

        <!-- Contact Form -->
        <!-- In order to set the email address and subject line for the contact form go to the bin/contact_me.php file. -->
        <div class="row">
            <div class="col-md-8">
                <h3>Gửi phản hồi</h3>
                <form name="sentMessage" id="contactForm" novalidate>
                    <div class="control-group form-group">
                        <div class="controls">
                            <label>Họ và tên:</label>
                            <input type="text" class="form-control" id="name" required data-validation-required-message="Please enter your name.">
                            <p class="help-block"></p>
                        </div>
                    </div>
                    <div class="control-group form-group">
                        <div class="controls">
                            <label>Điện thoại:</label>
                            <input type="tel" class="form-control" id="phone" required data-validation-required-message="Please enter your phone number.">
                        </div>
                    </div>
                    <div class="control-group form-group">
                        <div class="controls">
                            <label>Email:</label>
                            <input type="email" class="form-control" id="email" required data-validation-required-message="Please enter your email address.">
                        </div>
                    </div>
                    <div class="control-group form-group">
                        <div class="controls">
                            <label>Nội dung:</label>
                            <textarea rows="10" cols="100" class="form-control" id="message" required data-validation-required-message="Please enter your message" maxlength="999" style="resize:none"></textarea>
                        </div>
                    </div>
                    <div id="success"></div>
                    <!-- For success/fail messages -->
                    <button type="submit" class="btn btn-primary">Gửi</button>
                </form>
            </div>

        </div>
        <!-- /.row -->

        <hr>

        <!-- Footer -->
        <footer>
            <div class="row">
                <div class="col-lg-12">
                    <p>Copyright &copy; Your Website 2015</p>
                </div>
            </div>
        </footer>

    </div>
    <!-- /.container -->

    <!-- jQuery -->
    <script src="{{asset('js/jquery.js')}}"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="{{asset('js/bootstrap.min.js')}}"></script>

    <!-- Contact Form JavaScript -->
    <!-- Do not edit these files! In order to set the email address and subject line for the contact form go to the bin/contact_me.php file. -->
    <script src="js/jqBootstrapValidation.js"></script>
    <script src="js/contact_me.js"></script>

</body>

</html>
