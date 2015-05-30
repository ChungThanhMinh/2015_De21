<!DOCTYPE html>
<html lang="en">
<!-- BEGIN HEAD -->
	<head>
		<meta charset="utf-8"/>
		<title>Admin Page TDM</title>
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta content="width=device-width, initial-scale=1.0" name="viewport"/>
		<meta http-equiv="Content-type" content="text/html; charset=utf-8">
		<meta name="description" content="University of Technology">
    	<meta name="author" content="Chung Thanh Minh - Diep Thanh Dang - Ngo Duc Thinh">
	<!-- BEGIN GLOBAL MANDATORY STYLES -->
		<link href="http://fonts.googleapis.com/css?family=Open+Sans:400,300,600,700&subset=all" rel="stylesheet" type="text/css"/>
		<link href="{{asset('assets/global/plugins/font-awesome/css/font-awesome.min.css')}}" rel="stylesheet" type="text/css"/>
		<link href="{{asset('assets/global/plugins/simple-line-icons/simple-line-icons.min.css')}}" rel="stylesheet" type="text/css"/>
		<link href="{{asset('assets/global/plugins/bootstrap/css/bootstrap.min.css')}}" rel="stylesheet" type="text/css"/>
		<link href="{{asset('assets/global/plugins/uniform/css/uniform.default.css')}}" rel="stylesheet" type="text/css"/>
		<link href="{{asset('assets/global/plugins/bootstrap-switch/css/bootstrap-switch.min.css')}}" rel="stylesheet" type="text/css"/>
	<!-- END GLOBAL MANDATORY STYLES -->
	<!-- BEGIN PAGE LEVEL STYLES -->
		<link rel="stylesheet" type="text/css" href="{{asset('assets/global/plugins/select2/select2.css')}}"/>
		<link rel="stylesheet" type="text/css" href="{{asset('assets/global/plugins/datatables/plugins/bootstrap/dataTables.bootstrap.css')}}"/>
	<!-- END PAGE LEVEL STYLES -->
	<!-- BEGIN THEME STYLES -->
		<link href="{{asset('assets/global/css/components.css')}}" rel="stylesheet" type="text/css"/>
		<link href="{{asset('assets/global/css/plugins.css')}}" rel="stylesheet" type="text/css"/>
		<link href="{{asset('assets/admin/layout/css/layout.css')}}" rel="stylesheet" type="text/css"/>
		<link id="style_color" href="{{asset('assets/admin/layout/css/themes/default.css')}}" rel="stylesheet" type="text/css"/>
		<link href="{{asset('assets/admin/layout/css/custom.css')}}" rel="stylesheet" type="text/css"/>
	<!-- END THEME STYLES -->
		<link rel="shortcut icon" href="favicon.ico"/>
	<!-- jQuery -->
    	<script src="{{asset('js/jquery.js')}}"></script>
    <!-- Bootstrap Core JavaScript -->
    	<script src="{{asset('js/bootstrap.min.js')}}"></script>
	<!-- JQuery validation -->
		<script src="{{asset('js/jquery.validate.js')}}"></script>
	<!-- Custom CSS -->
    	<link href="{{asset('css/modern-business.css')}}" rel="stylesheet">
    <!-- Custom Fonts -->
    	<link href="{{asset('css/font-awesome.min.css')}}" rel="stylesheet" type="text/css">

	</head>
<!-- END HEAD -->
<!-- BEGIN BODY -->
<!-- DOC: Apply "page-header-fixed-mobile" and "page-footer-fixed-mobile" class to body element to force fixed header or footer in mobile devices -->
<!-- DOC: Apply "page-sidebar-closed" class to the body and "page-sidebar-menu-closed" class to the sidebar menu element to hide the sidebar by default -->
<!-- DOC: Apply "page-sidebar-hide" class to the body to make the sidebar completely hidden on toggle -->
<!-- DOC: Apply "page-sidebar-closed-hide-logo" class to the body element to make the logo hidden on sidebar toggle -->
<!-- DOC: Apply "page-sidebar-hide" class to body element to completely hide the sidebar on sidebar toggle -->
<!-- DOC: Apply "page-sidebar-fixed" class to have fixed sidebar -->
<!-- DOC: Apply "page-footer-fixed" class to the body element to have fixed footer -->
<!-- DOC: Apply "page-sidebar-reversed" class to put the sidebar on the right side -->
<!-- DOC: Apply "page-full-width" class to the body element to have full width page without the sidebar menu -->
<body class="page-header-fixed page-quick-sidebar-over-content ">
	<!-- Begin header in body -->
	<div class="page-header navbar navbar-fixed-top">
		<!-- Begin header inner -->
		<div class="page-header-inner">
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
		</div>
		<!-- End header inner -->
	</div>
	<!-- End header -->

	<div class="clearfix"></div>

	<!-- Begin container -->
	<div class="page-container">
		<!-- Begin sidebar -->
		<div class="page-sidebar-wrapper">
			<!-- DOC: Set data-auto-scroll="false" to disable the sidebar from auto scrolling/focusing -->
			<!-- DOC: Change data-auto-speed="200" to adjust the sub menu slide up/down speed -->
			<div class="page-sidebar navbar-collapse collapse">
			<!-- Begin sidebar menu -->
			<!-- DOC: Apply "page-sidebar-menu-light" class right after "page-sidebar-menu" to enable light sidebar menu style(without borders) -->
			<!-- DOC: Apply "page-sidebar-menu-hover-submenu" class right after "page-sidebar-menu" to enable hoverable(hover vs accordion) sub menu mode -->
			<!-- DOC: Apply "page-sidebar-menu-closed" class right after "page-sidebar-menu" to collapse("page-sidebar-closed" class must be applied to the body element) the sidebar sub menu mode -->
			<!-- DOC: Set data-auto-scroll="false" to disable the sidebar from auto scrolling/focusing -->
			<!-- DOC: Set data-keep-expand="true" to keep the submenues expanded -->
			<!-- DOC: Set data-auto-speed="200" to adjust the sub menu slide up/down speed -->
			<ul class="page-sidebar-menu" data-keep-expanded="false" data-auto-scroll="true" data-slide-speed="200">
				<!-- DOC: To remove the sidebar toggler from the sidebar you just need to completely remove the below "sidebar-toggler-wrapper" LI element -->
				<li class="sidebar-toggler-wrapper">
					<!-- Begin sidebar toggler button -->
					<div class="sidebar-toggler"></div>
					<!-- End sidebar toggler button -->
				</li>
				<!-- DOC: To remove the search box from the sidebar you just need to completely remove the below "sidebar-search-wrapper" LI element -->
				<li class="sidebar-search-wrapper">
					<!-- Begin responsive quick search form -->
					<!-- DOC: Apply "sidebar-search-bordered" class the below search form to have bordered search box -->
					<!-- DOC: Apply "sidebar-search-bordered sidebar-search-solid" class the below search form to have bordered & solid search box -->
					<form class="sidebar-search " action="extra_search.html" method="POST">
						<a href="javascript:;" class="remove">
						<i class="icon-close"></i>
						</a>
						<div class="input-group">
							<input type="text" class="form-control" placeholder="Search...">
							<span class="input-group-btn">
							<a href="javascript:;" class="btn submit"><i class="icon-magnifier"></i></a>
							</span>
						</div>
					</form>
					<!-- End responsive quick search form -->
				</li>
				<!-- Side-bar menu -->
				<li class="start active open">
					<a href="javascript:;">
					<i class="icon-home"></i>
					<span class="title">Quản lý website</span>
					<span class="selected"></span>
					<span class="arrow open"></span>
					</a>
					<ul class="sub-menu">
						<li class="active">
							<a href="../accountant/edit_home">
							<i class="icon-home"></i>
							Home page</a>
						</li>
						<li>
							<a href="../accountant/admin">
							<i class="icon-lock"></i>
							Cơ sở dữ liệu</a>
						</li>
						<li>
							<a href="../accountant/edit_company">
							<i class="icon-info"></i>
							Thông tin công ty</a>
						</li>
						<li>
							<a href="javascript:;">
							<i class="icon-info"></i>
							Dịch vụ</a>
							<ul class="sub-menu">
								<li>
								<a href="../accountant/edit_service_1"><i class="icon-tag"></i>Dịch vụ thuế</a>
								</li>
								<li>
								<a href="../accountant/edit_service_2"><i class="icon-tag"></i>Dịch vụ doanh nghiệp</a>
								</li>
								<li>
								<a href="../accountant/edit_service_3"><i class="icon-tag"></i>Thực hiện sổ sách</a>
								</li>
								<li>
								<a href="../accountant/edit_service_4"><i class="icon-tag"></i>Hồ sơ lao động</a>
								</li>
								<li>
								<a href="../accountant/edit_service_5"><i class="icon-tag"></i>Hồ sơ bảo hiểm</a>
								</li>
							</ul>
						</li>
						<li>
							<a href="javascript:;">
							<i class="icon-graph"></i>
							Văn bản luật</a>
							<ul class="sub-menu">
								<li>
								<a href="../accountant/edit_law_1"><i class="icon-tag"></i>Luật doanh nghiệp</a>
								</li>
								<li>
								<a href="../accountant/edit_law_2"><i class="icon-tag"></i>Thuế và quản lý thuế</a>
								</li>
								<li>
								<a href="../accountant/edit_law_3"><i class="icon-tag"></i>Kế toán kiểm toán</a>
								</li>
								<li>
								<a href="../accountant/edit_law_4"><i class="icon-tag"></i>Đầu tư</a>
								</li>
								<li>
								<a href="../accountant/edit_law_5"><i class="icon-tag"></i>Bảo hiểm xã hội</a>
								</li>
								<li>
								<a href="../accountant/edit_law_6"><i class="icon-tag"></i>Tiền lương</a>
								</li>
							</ul>
						</li>
						<li>
							<a href="javascript:;">
							<i class="icon-grid"></i>
							Tin tức</a>
							<ul class="sub-menu">
								<li>
								<a href="../accountant/edit_news_1"><i class="icon-tag"></i>News 1</a>
								</li>
								<li>
								<a href="../accountant/edit_news_2"><i class="icon-tag"></i>News 2</a>
								</li>
								<li>
								<a href="../accountant/edit_news_3"><i class="icon-tag"></i>News 3</a>
								</li>
								<li>
								<a href="../accountant/edit_news_4"><i class="icon-tag"></i>News 4</a>
								</li>
								<li>
								<a href="../accountant/edit_news_5"><i class="icon-tag"></i>News 5</a>
								</li>
								<li>
								<a href="../accountant/edit_news_6"><i class="icon-tag"></i>News 6</a>
								</li>
							</ul>
						</li>
					</ul>
				</li>
			</ul>
			<!-- End sidebar menu -->
			</div>
		</div>
		<!-- End sidebar -->

		<!-- Begin content -->
		<div class="page-content-wrapper">
			<div class="page-content">
				<!-- Begin style customizer -->
				<div class="theme-panel hidden-xs hidden-sm">
					<div class="toggler"></div>
					<div class="toggler-close"></div>
					<div class="theme-options">
						<div class="theme-option theme-colors clearfix">
							<span>THEME COLOR</span>
							<ul>
								<li class="color-default current tooltips" data-style="default" data-container="body" data-original-title="Default">
								</li>
								<li class="color-darkblue tooltips" data-style="darkblue" data-container="body" data-original-title="Dark Blue">
								</li>
								<li class="color-blue tooltips" data-style="blue" data-container="body" data-original-title="Blue">
								</li>
								<li class="color-grey tooltips" data-style="grey" data-container="body" data-original-title="Grey">
								</li>
								<li class="color-light tooltips" data-style="light" data-container="body" data-original-title="Light">
								</li>
								<li class="color-light2 tooltips" data-style="light2" data-container="body" data-html="true" data-original-title="Light 2">
								</li>
							</ul>
						</div>
						<div class="theme-option">
							<span>
							Layout </span>
							<select class="layout-option form-control input-sm">
								<option value="fluid" selected="selected">Fluid</option>
								<option value="boxed">Boxed</option>
							</select>
						</div>
						<div class="theme-option">
							<span>
							Header </span>
							<select class="page-header-option form-control input-sm">
								<option value="fixed" selected="selected">Fixed</option>
								<option value="default">Default</option>
							</select>
						</div>
						<div class="theme-option">
							<span>
							Top Menu Dropdown</span>
							<select class="page-header-top-dropdown-style-option form-control input-sm">
								<option value="light" selected="selected">Light</option>
								<option value="dark">Dark</option>
							</select>
						</div>
						<div class="theme-option">
							<span>
							Sidebar Mode</span>
							<select class="sidebar-option form-control input-sm">
								<option value="fixed">Fixed</option>
								<option value="default" selected="selected">Default</option>
							</select>
						</div>
						<div class="theme-option">
							<span>
							Sidebar Menu </span>
							<select class="sidebar-menu-option form-control input-sm">
								<option value="accordion" selected="selected">Accordion</option>
								<option value="hover">Hover</option>
							</select>
						</div>
						<div class="theme-option">
							<span>
							Sidebar Style </span>
							<select class="sidebar-style-option form-control input-sm">
								<option value="default" selected="selected">Default</option>
								<option value="light">Light</option>
							</select>
						</div>
						<div class="theme-option">
							<span>
							Sidebar Position </span>
							<select class="sidebar-pos-option form-control input-sm">
								<option value="left" selected="selected">Left</option>
								<option value="right">Right</option>
							</select>
						</div>
						<div class="theme-option">
							<span>
							Footer </span>
							<select class="page-footer-option form-control input-sm">
								<option value="fixed">Fixed</option>
								<option value="default" selected="selected">Default</option>
							</select>
						</div>
					</div>
				</div>
				<!-- End style customizer -->

				<!-- Begin page header-->
				<h3 class="page-title">Admin page</h3>
				<div class="page-bar">
					<ul class="page-breadcrumb">
						<li>
							<i class="fa fa-home"></i>
							<a href="../accountant">Home</a>
							<i class="fa fa-angle-right"></i>
						</li>
						<li>
							<a href="#">Các cơ sở dữ liệu</a>
							<i class="fa fa-angle-right"></i>
						</li>
					</ul>
				</div>
				<!-- End page header-->

				<!-- Begin page content-->
				<div class="row">
					<div class="col-md-12">
						<!-- Begin example table portlet -->
							@yield('customer')
						<!-- End example table portlet-->
					</div>
				</div>
				<!-- End page content -->
			</div>
		</div>
		<!-- End content -->
	</div>
	<!-- End container -->

	<!-- Begin footer -->
	<div class="page-footer">
		<div class="page-footer-inner">Copyright &copy; Your Website 2015</div>
		<div class="scroll-to-top"><i class="icon-arrow-up"></i></div>
	</div>
	<!-- End footer -->

		<!-- BEGIN JAVASCRIPTS(Load javascripts at bottom, this will reduce page load time) -->
		<!-- BEGIN CORE PLUGINS -->
		<script src="{{asset('assets/global/plugins/jquery.min.js')}}" type="text/javascript"></script>
		<script src="{{asset('assets/global/plugins/jquery-migrate.min.js')}}" type="text/javascript"></script>
		<!-- IMPORTANT! Load jquery-ui-1.10.3.custom.min.js before bootstrap.min.js to fix bootstrap tooltip conflict with jquery ui tooltip -->
		<script src="{{asset('assets/global/plugins/jquery-ui/jquery-ui-1.10.3.custom.min.js')}}" type="text/javascript"></script>
		<script src="{{asset('assets/global/plugins/bootstrap/js/bootstrap.min.js')}}" type="text/javascript"></script>
		<script src="{{asset('assets/global/plugins/bootstrap-hover-dropdown/bootstrap-hover-dropdown.min.js')}}" type="text/javascript"></script>
		<script src="{{asset('assets/global/plugins/jquery-slimscroll/jquery.slimscroll.min.js')}}" type="text/javascript"></script>
		<script src="{{asset('assets/global/plugins/jquery.blockui.min.js')}}" type="text/javascript"></script>
		<script src="{{asset('assets/global/plugins/jquery.cokie.min.js')}}" type="text/javascript"></script>
		<script src="{{asset('assets/global/plugins/uniform/jquery.uniform.min.js')}}" type="text/javascript"></script>
		<script src="{{asset('assets/global/plugins/bootstrap-switch/js/bootstrap-switch.min.js')}}" type="text/javascript"></script>
		<!-- END CORE PLUGINS -->
		<!-- BEGIN PAGE LEVEL PLUGINS -->
		<script type="text/javascript" src="{{asset('assets/global/plugins/select2/select2.min.js')}}"></script>
		<script type="text/javascript" src="{{asset('assets/global/plugins/datatables/media/js/jquery.dataTables.min.js')}}"></script>
		<script type="text/javascript" src="{{asset('assets/global/plugins/datatables/plugins/bootstrap/dataTables.bootstrap.js')}}"></script>
		<!-- END PAGE LEVEL PLUGINS -->
		<!-- BEGIN PAGE LEVEL SCRIPTS -->
		<script src="{{asset('assets/global/scripts/metronic.js')}}" type="text/javascript"></script>
		<script src="{{asset('assets/admin/layout/scripts/layout.js')}}" type="text/javascript"></script>
		<script src="{{asset('assets/admin/layout/scripts/quick-sidebar.js')}}" type="text/javascript"></script>
		<script src="{{asset('assets/admin/layout/scripts/demo.js')}}" type="text/javascript"></script>
		<script src="{{asset('assets/admin/pages/scripts/table-editable.js')}}"></script>
		<script>
		jQuery(document).ready(function() {       
		   Metronic.init(); // init metronic core components
		Layout.init(); // init current layout
		QuickSidebar.init(); // init quick sidebar
		Demo.init(); // init demo features
		   TableEditable.init();
		});
		</script>
	</body>
	<!-- End body -->
</html>