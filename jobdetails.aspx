<%@ Page Language="C#" AutoEventWireup="true" CodeFile="jobdetails.aspx.cs" Inherits="jobdetails" %>

<!DOCTYPE html>
<html class="boxed" data-style-switcher-options="{'layoutStyle': 'boxed'}" xmlns="http://www.w3.org/1999/xhtml">
<%--<html class="fulled" xmlns="http://www.w3.org/1999/xhtml">--%>
<head runat="server">
     <!-- Basic -->
		<meta charset="UTF-8"/>

		<title>UOL Recruitment Portal</title>
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
<%--    <script src="assets/vendor/style-switcher/style.switcher.localstorage.js"></script>--%>

</head>
<body>

    <section class="backgroundimage">
        <div class="body">
            <!-- start: header -->
			<header class="header">
				<div class="logo-container">
					<a href="default.aspx" class="logo">						
                        <img src="assets/images/logo.png" alt="University of Lahoe Job Portal" />					
					</a>					
                    <div class="visible-xs toggle-sidebar-left" data-toggle-class="sidebar-left-opened" data-target="html" data-fire-event="sidebar-left-opened">						
                        <%--<i class="fa fa-bars" aria-label="Toggle sidebar"></i>	--%>				

                    </div>
				</div>
			
				<!-- start: search & user box -->
				<div class="header-right" id="header" runat="server">

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
									<a href="<%=ResolveUrl("home") %>">
										<i class="fa fa-home"></i>
									</a>
								</li>
							</ol>
					
							<a class="sidebar-right-toggle"></a>
						</div>
					</header>

                    
					<!-- start: page -->
						<section class="panel panel-featured panel-featured-info">
							<header class="panel-heading">
								<div class="panel-actions">
                                    <%--<button>Apply Now</button>--%>
								</div>
						
								<h2 class="panel-title"><%=jobstitle %></h2>
							</header>
							<div class="panel-body">
                                <form id="form1" runat="server">
                                    <div class="row">

                                    </div>
                               			<div class="form-group">
                                            <div class="col-sm-4">
                                                <b>Department</b>
                                               <p><%=jobdepartment %></p>
                                            </div>				                            
                                               
				                            <div class="col-sm-2">
                                                <b>Location</b>
                                                <p><%=joblocation %></p>
				                            </div>
                                            
				                            <div class="col-sm-2">
                                                <b>Category</b>
					                            <p><%=jobcategory %></p>
				                            </div>
                                               
				                            <div class="col-sm-2">
                                                <b>Type</b>
					                            <p><%=jobtype %></p>
				                            </div>
			                            </div>
                                    <hr />
                                        <div class="form-group">
				                            <div class="col-sm-3">
                                                <b>Education</b>
					                            <p><%=jobeducation %></p>
                                                <%--<p><%= jobeducation.Replace("\r\n", "<br/>") %></p>--%>
				                            </div>
                                            
				                            <div class="col-sm-4">
                                                <b>Experience</b>
					                            <p><%=jobexperience %></p>
				                            </div>
                                            
				                            <div class="col-sm-4">
                                                <b>Skills</b>
					                            <p><%=jobskills %></p>
				                            </div>
                                        </div>
                                        <hr />
                                        <div class="form-group">
                                            
                                            
				                            <div class="col-sm-2">
                                                <b>Salary Range</b>
					                            <p><%=jobsalary %></p>
				                            </div>
                                            
				                            <div class="col-sm-2">
                                                <b>No.of Posts</b>
					                            <p><%=jobnoofposts %></p>
				                            </div>
                                            
				                            
				                            <div class="col-sm-2" style="background-color:#3acd4d;">
                                                <b>Last Date</b>
					                            <p><%=joblastdate %></p>
				                            </div>
                                            
			                            </div>
                                    <div class="form-group">

                                    </div>
                                        <div class="form-group">
				                            <div class="col-md-12">
                                                <h4>Jobs Description*</h4>
                                                <br />
                                                <%=jobsdescription %>
				                            </div>
			                            </div>

                                </form>
							</div>
						</section>

					<!-- end: page -->
				</section>
			</div>
        </div>
			 <p class="text-center text-muted mt-md mb-md">&copy; Copyright 2022. All Rights Reserved.
             </p>

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
		
		<!-- Specific Page Vendor -->		
    <script src="assets/vendor/jquery-validation/jquery.validate.js"></script>		
    <script src="assets/vendor/bootstrap-wizard/jquery.bootstrap.wizard.js"></script>		
    <script src="assets/vendor/pnotify/pnotify.custom.js"></script>
		<!-- Specific Page Vendor -->		
        <script src="assets/vendor/select2/js/select2.js"></script>		
        <script src="assets/vendor/jquery-datatables/media/js/jquery.dataTables.js"></script>		
        <script src="assets/vendor/jquery-datatables/extras/TableTools/js/dataTables.tableTools.min.js"></script>		
        <script src="assets/vendor/jquery-datatables-bs3/assets/js/datatables.js"></script>
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
