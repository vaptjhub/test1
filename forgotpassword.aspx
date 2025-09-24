<%@ Page Language="C#" AutoEventWireup="true" CodeFile="forgotpassword.aspx.cs" Inherits="forgotpassword" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <!-- Basic -->
		<meta charset="UTF-8"/>

		<meta name="keywords" content="" />
		<meta name="description" content=""/>
		<meta name="author" content=""/>
        <title>Forgot Password</title>
		<!-- Mobile Metas -->
		<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />

		<!-- Web Fonts  -->
		<link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700,800|Shadows+Into+Light" rel="stylesheet" type="text/css"/>

		<!-- Vendor CSS -->
		<link rel="stylesheet" href="assets/vendor/bootstrap/css/bootstrap.css" />

		<link rel="stylesheet" href="assets/vendor/font-awesome/css/font-awesome.css" />
		<link rel="stylesheet" href="assets/vendor/magnific-popup/magnific-popup.css" />
		<link rel="stylesheet" href="assets/vendor/bootstrap-datepicker/css/bootstrap-datepicker3.css" />

		<!-- Theme CSS -->
		<link rel="stylesheet" href="assets/stylesheets/theme.css" />

		<!-- Theme Custom CSS -->
		<link rel="stylesheet" href="assets/stylesheets/theme-custom.css"/>

		<!-- Head Libs -->
		<script src="assets/vendor/modernizr/modernizr.js"></script>		

</head>
<body>
    <section class="backgroundimage">
        <div class="body-sign">
			<div class="center-sign">
				<a href="<%=ResolveUrl("~/Home") %>" class="logo pull-left">
					<img src="images/logo-white.png" alt="" />
				</a>

				<div class="panel panel-sign">
					<div class="panel-title-sign mt-xl text-right">
						<h2 class="title text-uppercase text-weight-bold m-none"><i class="fa fa-user mr-xs"></i> Forgot Password</h2>
					</div>
					<div class="panel-body">
                        <%=displaymessage %>
						<form id="form1" runat="server">
							<div class="form-group mb-lg">
								<label>Email</label>
								<div class="input-group input-group-icon">
                                    <asp:TextBox ID="txtemail" runat="server" CssClass="form-control input-lg" TextMode="Email" required></asp:TextBox>
									<span class="input-group-addon">
										<span class="icon icon-lg">
											<i class="fa fa-envelope"></i>
										</span>
									</span>
								</div>
							</div>

							<div class="row">
								<div class="col-sm-7">
									<div class="checkbox-custom checkbox-default">
										<%--<input id="RememberMe" name="rememberme" type="checkbox"/>
										<label for="RememberMe">Remember Me</label>--%>
									</div>
								</div>
								<div class="col-sm-5 text-right">
                                    <asp:Button ID="cmdsubmit" runat="server" Text="Get Password" CssClass="btn btn-info" OnClick="cmdsubmit_Click" />
								</div>
							</div>

							<span class="mt-lg mb-lg line-thru text-center text-uppercase">
								<span>or</span>
							</span>

							<p class="text-center">Already have an account? <a href="<%=ResolveUrl("SignIn") %>">Sign In!</a></p>

						</form>
					</div>
				</div>

				<p class="text-center text-muted mt-md mb-md">&copy; Copyright 2022. All Rights Reserved.</p>
			</div>
        </div>
		</section>
		<!-- end: page -->

		<!-- Vendor -->
		<script src="assets/vendor/jquery/jquery.js"></script>		
        <script src="assets/vendor/jquery-browser-mobile/jquery.browser.mobile.js"></script>		
        <script src="assets/vendor/jquery-cookie/jquery-cookie.js"></script>		
        <script src="assets/vendor/style-switcher/style.switcher.js"></script>		
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
</body>
</html>