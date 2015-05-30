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
                <h1 class="page-header">Giới Thiệu
                </h1>
                <ol class="breadcrumb">
                    <li><a href="../accountant">Trang Chủ</a></li>
                    <li class="active">Giới Thiệu</li>
                </ol>
            </div>
        </div>
        <!-- /.row -->

        <!-- Intro Content -->
        <div class="row">
            <div class="col-md-6">
				<img class="img-responsive img-portfolio img-hover" src="{{asset('images-accountant/about_company.jpg')}}" alt="">
            </div>
            <div class="col-md-6">
                <h2>Thông tin về công ty chúng tôi</h2>
                <p>TDM chính thức đi vào hoạt động ngày 01/7/2007 theo Giấy chứng nhận đăng ký kinh doanh số 0203003210 ngày 13/6/2007; mã số thuế 0200747399. Công ty có văn phòng tại 72 Lê Thánh Tôn, Phường Bến Nghé, Quận 1, Tp. Hồ Chí Minh.</p>
                <p>Hoạt động chính của TDM là tư vấn thuế, đại lý thuế; dịch vụ kế toán, tư vấn tài chính. Chúng tôi cũng đang hướng tới đa ngành, đa dịch vụ, ưu tiên quyền lợi hợp pháp của đối tác và những người đang sống, làm việc cũng như cộng tác cùng TDM.</p>
                <p>TDM được sáng lập bởi sự kết hợp tuyệt vời giữa các chuyên gia tư vấn tài chính, kiểm toán hàng đầu ở Việt Nam với các chuyên gia đã thực tế công tác trong ngành thuế và Bộ Tài chính có số năm kinh nghiệm đạt độ chín muồi về tuổi đời và trình độ chuyên môn nghiệp vụ.</p>
            </div>
        </div>
        <!-- /.row -->

        <!-- Team Members -->
        <div class="row">
            <div class="col-lg-12">
                <h2 class="page-header">Thành viên</h2>
            </div>
            <div class="col-md-3 text-center">
                <div class="thumbnail">
                    <img class="img-responsive img-portfolio img-hover" src="{{asset('images-accountant/team/thinh.jpg')}}" alt="">
                    <div class="caption">
                        <h3>Ngô Đức Thịnh<br>
                            <small>Boss</small>
                        </h3>
                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Iste saepe et quisquam nesciunt maxime.</p>
                        <ul class="list-inline">
                            <li><a href="#"><i class="fa fa-2x fa-facebook-square"></i></a>
                            </li>
                            <li><a href="#"><i class="fa fa-2x fa-linkedin-square"></i></a>
                            </li>
                            <li><a href="#"><i class="fa fa-2x fa-twitter-square"></i></a>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
            <div class="col-md-3 text-center">
                <div class="thumbnail">
                    <img class="img-responsive img-portfolio img-hover" src="{{asset('images-accountant/team/dang.jpg')}}" alt="">
                    <div class="caption">
                        <h3>Diệp Thanh Đăng<br>
                            <small>Boss</small>
                        </h3>
                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Iste saepe et quisquam nesciunt maxime.</p>
                        <ul class="list-inline">
                            <li><a href="#"><i class="fa fa-2x fa-facebook-square"></i></a>
                            </li>
                            <li><a href="#"><i class="fa fa-2x fa-linkedin-square"></i></a>
                            </li>
                            <li><a href="#"><i class="fa fa-2x fa-twitter-square"></i></a>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
            <div class="col-md-3 text-center">
                <div class="thumbnail">
                    <img class="img-responsive img-portfolio img-hover" src="{{asset('images-accountant/team/minh.jpg')}}" alt="">
                    <div class="caption">
                        <h3>Chung Thành Minh<br>
                            <small>Boss</small>
                        </h3>
                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Iste saepe et quisquam nesciunt maxime.</p>
                        <ul class="list-inline">
                            <li><a href="#"><i class="fa fa-2x fa-facebook-square"></i></a>
                            </li>
                            <li><a href="#"><i class="fa fa-2x fa-linkedin-square"></i></a>
                            </li>
                            <li><a href="#"><i class="fa fa-2x fa-twitter-square"></i></a>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>          
        </div>
        <!-- /.row -->

        <!-- Our Customers -->
        <div class="row">
            <div class="col-lg-12">
                <h2 class="page-header">Khách hàng thân thiết</h2>
            </div>
            <div class="col-md-2 col-sm-4 col-xs-6">
                <img class="img-responsive img-portfolio img-hover" src="{{asset('images-accountant/logo/customer1.jpg')}}" alt="">
            </div>
            <div class="col-md-2 col-sm-4 col-xs-6">
                <img class="img-responsive img-portfolio img-hover" src="{{asset('images-accountant/logo/customer2.jpg')}}" alt="">
            </div>
            <div class="col-md-2 col-sm-4 col-xs-6">
                <img class="img-responsive img-portfolio img-hover" src="{{asset('images-accountant/logo/customer3.jpg')}}" alt="">
            </div>
            <div class="col-md-2 col-sm-4 col-xs-6">
                <img class="img-responsive img-portfolio img-hover" src="{{asset('images-accountant/logo/customer4.jpg')}}" alt="">
            </div>
            <div class="col-md-2 col-sm-4 col-xs-6">
                <img class="img-responsive img-portfolio img-hover" src="{{asset('images-accountant/logo/customer5.jpg')}}" alt="">
            </div>
            <div class="col-md-2 col-sm-4 col-xs-6">
                <img class="img-responsive img-portfolio img-hover" src="{{asset('images-accountant/logo/customer6.png')}}" alt="">
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

</body>

</html>
