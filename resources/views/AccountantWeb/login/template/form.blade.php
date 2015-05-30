<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
	<!-- Meta: co the su dung cho browser, serach engine, ... -->
    <meta name="description" content="University of Technology">
    <meta name="author" content="Chung Thanh Minh - Diep Thanh Dang - Ngo Duc Thinh">

    <title>News</title>

    <!-- Bootstrap Core CSS -->
    <link href="{{asset('css/bootstrap.min.css')}}" rel="stylesheet">
    <!-- Custom CSS -->
    <link href="{{asset('css/modern-business.css')}}" rel="stylesheet">
    <!-- Custom Fonts -->
    <link href="{{asset('css/font-awesome.min.css')}}" rel="stylesheet" type="text/css">
	 <!-- jQuery -->
    <script src="{{asset('js/jquery.js')}}"></script>
    <!-- Bootstrap Core JavaScript -->
    <script src="{{asset('js/bootstrap.min.js')}}"></script>
	<!-- JQuery validation -->
	<script src="{{asset('js/jquery.validate.js')}}"></script>
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
                        <a href="../accountant/about">Giới thiệu</a>
                    </li>
                    <li>
                        <a href="../accountant/contact">Liên hệ</a>
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
                        @yield('macro')
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
                <h1 class="page-header">Thông tin khách hàng</h1>
                <ol class="breadcrumb">
                    <li><a href="../accountant">Trang chủ</a></li>
					<li class="active">Đăng nhập - Đăng ký</li>
                </ol>
            </div>
        </div>
        <!-- /.row -->

        <!-- Content Row -->
        <div class="row">
            <div class="col-lg-4">
				<!-- Register -->
				@yield('content')
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


</body>

</html>
