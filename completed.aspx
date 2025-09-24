<%@ Page Language="C#" AutoEventWireup="true" CodeFile="completed.aspx.cs" Inherits="completed" %>

<!DOCTYPE html>

<html class="boxed" data-style-switcher-options="{'layoutStyle': 'boxed'}" xmlns="http://www.w3.org/1999/xhtml">
<%--<html class="fulled" xmlns="http://www.w3.org/1999/xhtml">--%>
<head runat="server">
     <!-- Basic -->
		<meta charset="UTF-8"/>

		<title>Jobs</title>
		<meta name="keywords" content="" />
		<meta name="description" content=""/>
		<meta name="author" content=""/>

		<!-- Mobile Metas -->
		<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />

		<!-- Web Fonts  -->
		<link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700,800|Shadows+Into+Light" rel="stylesheet" type="text/css"/>

		<!-- Vendor CSS -->
		<link rel="stylesheet" href="assets/vendor/bootstrap/css/bootstrap.css" />

		<link rel="stylesheet" href="assets/vendor/font-awesome/css/font-awesome.css" />
		<link rel="stylesheet" href="assets/vendor/magnific-popup/magnific-popup.css" />
		<link rel="stylesheet" href="assets/vendor/bootstrap-datepicker/css/bootstrap-datepicker3.css" />
        <link rel="stylesheet" href="assets/vendor/jquery-datatables-bs3/assets/css/datatables.css" />
		<!-- Specific Page Vendor CSS -->		
        <link rel="stylesheet" href="assets/vendor/pnotify/pnotify.custom.css" />

		<!-- Theme CSS -->
		<link rel="stylesheet" href="assets/stylesheets/theme.css" />

		<!-- Theme Custom CSS -->
		<link rel="stylesheet" href="assets/stylesheets/theme-custom.css"/>

		<!-- Head Libs -->
		<script src="assets/vendor/modernizr/modernizr.js"></script>
</head>
<body>

    <section class="body">

			<!-- start: header -->
			<header class="header">
				<div class="logo-container">
					<a href="<%=ResolveUrl("~/Home") %>" class="logo">						
                        <img src="assets/images/logo.png" alt="University of Lahoe Job Portal" />					
					</a>					
                    <div class="visible-xs toggle-sidebar-left" data-toggle-class="sidebar-left-opened" data-target="html" data-fire-event="sidebar-left-opened">						
                        <%--<i class="fa fa-bars" aria-label="Toggle sidebar"></i>	--%>				

                    </div>
				</div>
			
				<!-- start: search & user box -->
				<div class="header-right" id="header" runat="server">
			        <span class="separator"></span>
                    <div id="userbox" class="userbox">
						<a href="#" data-toggle="dropdown">
							<figure class="profile-picture">
								<img src="assets/images/%21logged-user.jpg" alt="" class="img-circle" data-lock-picture="assets/images/%21logged-user.jpg" />
							</figure>
							<div class="profile-info" data-lock-name="John Doe" data-lock-email="">
								
								<span class="role"><%=Session["jobportal#fullname#@33"] %></span>
							</div>
			
							<i class="fa custom-caret"></i>
						</a>
			
						<div class="dropdown-menu">
							<ul class="list-unstyled">
								<li class="divider"></li>
								<li>
									<a role="menuitem" tabindex="-1" href="<%=ResolveUrl("~/Profile") %>"><i class="fa fa-user"></i> My Profile</a>
								</li>
                                <li>
									<a role="menuitem" tabindex="-1" href="<%=ResolveUrl("~/ChangePassword") %>"><i class="fa fa-key"></i> Change Password</a>
								</li>
								<li>
									<a role="menuitem" tabindex="-1" href="<%=ResolveUrl("~/SignOut") %>"><i class="fa fa-power-off"></i> Logout</a>
								</li>
							</ul>
						</div>
					</div>
			
                    
				</div>
				<!-- end: search & user box -->
			</header>
			<!-- end: header -->

			<div class="inner-wrapper">
				<section role="main" class="content-body">
                    
					<header class="page-header">
						<h2>Recruitment Portal</h2>
					
						<div class="right-wrapper pull-right">
							<ol class="breadcrumbs">
								<li>
									<a href="default.aspx">
										<i class="fa fa-home"></i>
									</a>
								</li>
							</ol>
					
							<a class="sidebar-right-toggle"></a>
						</div>
					</header>

                    
					<!-- start: page -->
						<section class="panel">
						
							<div class="panel-body">
                                <p class="center">
                                    <img src="images/completed.png" class="image center"/>
                                </p>
                                
                                <p>
                                    Thanks for submiting the application.
                                </p>
                                <p>
                                    After review of your Application, the HR department will contact you if you are shortlisted.
                                </p>
								
							</div>
						</section>
					<!-- end: page -->
				</section>
			</div>

		</section>

		<!-- Vendor -->
		<script src="assets/vendor/jquery/jquery.js"></script>		
    <script src="assets/vendor/jquery-browser-mobile/jquery.browser.mobile.js"></script>		
    <script src="assets/vendor/jquery-cookie/jquery-cookie.js"></script>		
    <script src="assets/vendor/bootstrap/js/bootstrap.js"></script>		
    <script src="assets/vendor/nanoscroller/nanoscroller.js"></script>		
    <script src="assets/vendor/bootstrap-datepicker/js/bootstrap-datepicker.js"></script>		
    <script src="assets/vendor/magnific-popup/jquery.magnific-popup.js"></script>		
    <script src="assets/vendor/jquery-placeholder/jquery-placeholder.js"></script>
		

		<!-- Theme Base, Components and Settings -->
		<script src="assets/javascripts/theme.js"></script>
		
		<!-- Theme Custom -->
		<script src="assets/javascripts/theme.custom.js"></script>
		
		<!-- Theme Initialization Files -->
		<script src="assets/javascripts/theme.init.js"></script>
		<!-- Examples -->
		<script src="assets/javascripts/forms/examples.wizard.js"></script>
   <!-- Examples -->
		<script src="assets/javascripts/tables/examples.datatables.default.js"></script>
		<script src="assets/javascripts/tables/examples.datatables.row.with.details.js"></script>
		<script src="assets/javascripts/tables/examples.datatables.tabletools.js"></script>
</body>
</html>
