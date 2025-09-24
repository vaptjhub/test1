<%@ Page Language="C#" AutoEventWireup="true" CodeFile="signup.aspx.cs" Inherits="signup" EnableEventValidation="false" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <!-- Basic -->
		<meta charset="UTF-8"/>
    <title></title>
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

    <!-- Specific Page Vendor CSS -->		
	
    <link rel="stylesheet" href="assets/vendor/select2/css/select2.css" />		
    <link rel="stylesheet" href="assets/vendor/select2-bootstrap-theme/select2-bootstrap.min.css" />		
    

		<!-- Theme CSS -->
		<link rel="stylesheet" href="assets/stylesheets/theme.css" />

		<!-- Theme Custom CSS -->
		<link rel="stylesheet" href="assets/stylesheets/theme-custom.css"/>

		<!-- Head Libs -->
		<script src="assets/vendor/modernizr/modernizr.js"></script>		
    
</head>
<body>
    <!-- start: page -->
		<section class="backgroundimage">
            <div class="body-signup">
                <div class="center-sign">
				<a href="<%=ResolveUrl("~/Home") %>" class="logo pull-left">
					<img src="images/logo-white.png" alt="" />
				</a>

				<div class="panel panel-sign">
					<div class="panel-title-sign mt-xl text-right">
						<h2 class="title text-uppercase text-weight-bold m-none"><i class="fa fa-user mr-xs"></i> Sign Up</h2>
					</div>
					<div class="panel-body">
                        <%=displaymessage %>
                        <%=emailmessage %>
						<form id="form1" runat="server">
							<div class="form-group mb-lg">
								<div class="col-sm-6">
                                    <label>Full Name (capital letters) *</label>
                                    <asp:TextBox ID="txtfullname" CssClass="form-control input-lg text-uppercase" runat="server" required></asp:TextBox>
					            </div>
							</div>

                            <div class="form-group">
							<div class="col-sm-6">
                                <label>Date of Birth *</label>
                                <div class="input-group">
								    <span class="input-group-addon">
									    <i class="fa fa-calendar"></i>
									</span>
                                    <asp:TextBox ID="txtdob" data-plugin-datepicker CssClass="form-control input-lg" runat="server" required></asp:TextBox>
								</div>
                                
							</div>
                     
						<div class="col-sm-3">
                            <label>Gender *</label>
                            <asp:DropDownList ID="cbogender" CssClass="form-control input-lg" runat="server" required>
                                <asp:ListItem></asp:ListItem>
                                <asp:ListItem>Male</asp:ListItem>
                                <asp:ListItem>Female</asp:ListItem>
                            </asp:DropDownList>
						</div>
                                                       
						<div class="col-sm-3">
                                <label>Marital Status *</label>
                            <asp:DropDownList ID="cbomaritalstatus" CssClass="form-control input-lg" runat="server" required>
                                <asp:ListItem></asp:ListItem>
                                <asp:ListItem>Un-Married</asp:ListItem>
                                <asp:ListItem>Married</asp:ListItem>
                                <asp:ListItem>Other</asp:ListItem>
                            </asp:DropDownList>
						</div>

                        </div>

							<div class="form-group">
                                <div class="col-sm-12">
								<label>E-mail Address *</label>
                                <asp:TextBox ID="txtemail" TextMode="Email" runat="server" CssClass="form-control input-lg" required></asp:TextBox>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" ValidationGroup="signin" runat="server" ErrorMessage="!Invalid Email Address" ControlToValidate="txtemail" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ForeColor="Red" Font-Bold="true"></asp:RegularExpressionValidator>
                                </div>
							</div>
                            <div class="form-group">
                                <div class="col-sm-12">
                                <p>A password will be sent to your email address.</p>
                                </div>
                            </div>

							<div class="row">
								<div class="col-sm-8">
									
								</div>
								<div class="col-sm-4 text-right">
                                    <asp:Button ID="cmdsubmit" CssClass="btn btn-info" ValidationGroup="signin" runat="server" Text="Sign Up" OnClick="cmdsubmit_Click" />
								</div>
							</div>

							<span class="mt-lg mb-lg line-thru text-center text-uppercase">
								<span>or</span>
							</span>


							<p class="text-center">Already have an account? <a href="<%=ResolveUrl("SignIn") %>">Sign In!</a></p>

						</form>
					</div>
				</div>
                    <asp:Label ID="lblerror" runat="server"></asp:Label>
				<p class="text-center text-muted mt-md mb-md">&copy; Copyright 2023. All Rights Reserved.</p>
			</div>
            </div>
			
		</section>
		<!-- end: page -->

		<!-- Vendor -->
		<script src="assets/vendor/jquery/jquery.js"></script>		
    <script src="assets/vendor/jquery-browser-mobile/jquery.browser.mobile.js"></script>		
    <script src="assets/vendor/jquery-cookie/jquery-cookie.js"></script>		
    <script src="assets/vendor/bootstrap/js/bootstrap.js"></script>		
    <script src="assets/vendor/nanoscroller/nanoscroller.js"></script>		
    <script src="assets/vendor/bootstrap-datepicker/js/bootstrap-datepicker.js"></script>		
	<script type="text/javascript">
        $(function () {
            $('#txtdob').datepicker({
                format: "dd/mm/yyyy"
            });
        });
    </script>
    <script src="assets/vendor/jquery-placeholder/jquery-placeholder.js"></script>
		
    <!-- Specific Page Vendor -->		
	
        <script src="assets/vendor/select2/js/select2.js"></script>		
		

		<!-- Theme Base, Components and Settings -->
		<script src="assets/javascripts/theme.js"></script>
		
		<!-- Theme Custom -->
		<script src="assets/javascripts/theme.custom.js"></script>
		
		<!-- Theme Initialization Files -->
		<script src="assets/javascripts/theme.init.js"></script>
</body>
</html>
