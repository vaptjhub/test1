<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>
<html class="boxed" data-style-switcher-options="{'layoutStyle': 'boxed'}" xmlns="http://www.w3.org/1999/xhtml">
<%--<html class="fulled" xmlns="http://www.w3.org/1999/xhtml">--%>
<head runat="server">
     <!-- Basic -->
		<meta charset="UTF-8"/>

		<title>UOL Recruitment Portal</title>
		<meta name="keywords" content="The University of Lahore, Jobs, Careers, Recruitment,Open Jobs, Lecturer, Professors, Admin, Project Manager, Programmer" />
		<meta name="description" content="The University of Lahore, the largest private sector university in Pakistan and an equal opportunity employer, invites job applications from competent individuals for the following open vacancies. Interested applicants are required to fill all sections of this portal for proper assessment of their profile and credentials."/>
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

    <!-- for slider -->
    <link rel="stylesheet" type="text/css" href="css/slider.css"/>
    <link href="https://www.jqueryscript.net/css/jquerysctipttop.css" rel="stylesheet" type="text/css"/>
    <script src="https://code.jquery.com/jquery-1.11.1.min.js"></script>
    <script type="text/javascript" src="js/slide.js"></script>

		<!-- Specific Page Vendor CSS -->		
    <link rel="stylesheet" href="assets/vendor/pnotify/pnotify.custom.css" />

		<!-- Theme CSS -->
		<link rel="stylesheet" href="assets/stylesheets/theme.css" />

		<!-- Theme Custom CSS -->
		<link rel="stylesheet" href="assets/stylesheets/theme-custom.css"/>

		<!-- Head Libs -->
		<script src="assets/vendor/modernizr/modernizr.js"></script>
    		<script>
		        $(document).ready( function () {
		        var table = $('#datatable-default').DataTable({
		        "lengthMenu": [ 10, 25, 50, 100 ],
		        "pageLength":25
                });
                } );
		</script>
    <script>
		        $(document).ready( function () {
		        var table = $('#datatable-default1').DataTable({
		        "lengthMenu": [ 10, 25, 50, 100 ],
		        "pageLength":25
                });
                } );
		</script>
</head>
<body>

    <section class="backgroundimage">
        <div class="body">
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
							<div class="profile-info" data-lock-name="" data-lock-email="">
								
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
							<ol class="breadcrumbs" id="ollogin" runat="server">
								<li>
									<a href="/signin">Login</a>
								</li>
                                <li>
									<a href="/signup">Register</a>
								</li>
							</ol>
					
							<a class="sidebar-right-toggle"></a>
						</div>
                         
					</header>
                    <section class="">
                        <div class='main'>
                          <section id="gallery" >
                            <section id="buttons" > <a href='#'class='prev'>&laquo;</a> <a href='#'class='next'>&raquo;</a> </section>
                            <ul>
                              <li> <span><h3> Discover yourself, team up and lead the change. </h3></span> <img src='images/slider/1.jpg' /> </li>
                              <li> <span> <h3>We offer challenging and rewarding professional opportunities.</h3></span> <img src='images/slider/2.jpg' /> </li>
                              <li> <span> <h3>Our people are our most important assets.</h3></span> <img src='images/slider/3.jpg' /> </li>
                              <li> <span> <h3>Be part of a diverse & professional culture.</h3></span> <img src='images/slider/4.jpg' /> </li>
                              <li> <span> <h3>We are committed to excellence in whatever we do.</h3></span> <img src='images/slider/5.jpg' /> </li>
                            </ul>
                          </section>
                        </div>
                        <%--<div class="row">
                            <div class="col-lg-11">
                                <img src="images/slider/slider1.jpg" style="width:1120px;height:400px;"/>
                             </div>
                         </div>--%>
                    </section>
                    <%=displaymessage  %>
                       <section class="panel">
							<div class="panel-body">
								<div class="form-group">
                                    <div class="col-md-12">
													
				                        <p>
                                                    The University of Lahore, the largest private sector university in Pakistan and an equal opportunity employer, invites job applications from competent individuals for the following open vacancies. Interested applicants are required to fill all sections of this portal for proper assessment of their profile and credentials. Incomplete applications will not be considered. All information provided herein will be kept confidential.
                                                </p>
                                
                                        <p id="u" runat="server">
                                            If you are not registered with The University of Lahore, click <button class="mt-xs mr-xs btn btn-xs btn-success"><a href="<%=ResolveUrl("~/SignUp") %>" style="color:#fff">this link</a></button> to first register yourself. 
                                        </p>
                                
                                        <p id="u1" runat="server">
                                            To create your profile or edit and preferences click <button class="mt-xs mr-xs btn btn-xs btn-success"><a href="<%=ResolveUrl("~/Profile") %>" style="color:#fff">this link</a></button>.
                                        </p>

									</div>
	
								</div>
							</div>
						</section>


					<!-- start: page -->
						<section class="panel panel-success">
							<header class="panel-heading">
								<div class="panel-actions">

								</div>
						
								<h2 class="panel-title">Open Jobs (Academic)</h2>
							</header>
							<div class="panel-body">
                                
                                
                                <asp:Repeater ID="Repeater1" runat="server">
                                <HeaderTemplate>
                                <table class="table table-bordered table-striped mb-none" id="datatable-default">
                                <thead>
                                <th>S.No</th>
                                    <th width="30%">Name of Department</th>
                                <th>Job Title</th>
                                    <th>View</th>
                                <th>Last Date</th>
                                <th>Location</th>
                                    <th>ADVT</th>
                                <th></th>
                                </thead>
                                <tbody>
                                </HeaderTemplate>
                                <ItemTemplate>
                                <tr>
                                <td><% srno = srno + 1; %><% =srno %></td>
                                    <td><%# Eval("departmentname")%></td>
                                <td><%# Eval("jobtitle")%></td>
                                <td><a href='jobdetails.aspx?id=<%# EncryptConnectionString(Eval("jobid").ToString()) %>' target="_blank"><img src="images/detail-image.png" /></a></td>
                                <td><b><%# Eval("jobdate", "{0: dd/MM/yyyy}")%></b></td>
                                <td><%# Eval("joblocation")%></td>
                                 <td><%#getadvertislink(Eval("imagepath").ToString()) %></td>
                                            
                                <td>
                                    <%#getjoblink(Eval("profileid").ToString(),Eval("jobid").ToString(),Eval("jobtitle").ToString()) %>
                                </td>
                                </tr>
                                </ItemTemplate>
                                <FooterTemplate>
                                </tbody>
                                </table>
                                </FooterTemplate>
                                </asp:Repeater>
								
							</div>
						</section>

                    <section class="panel panel-warning">
							<header class="panel-heading">
								<div class="panel-actions">
								</div>
						
								<h2 class="panel-title">Open Jobs (Non-Academic)</h2>
							</header>
							<div class="panel-body">
                                <asp:Repeater ID="Repeater2" runat="server">
                                <HeaderTemplate>
                                <table class="table table-bordered table-striped mb-none" id="datatable-default1">
                                <thead>
                                <th>S.No</th>
                                    <th width="25%">Name of Department</th>
                                <th width="25%">Job Title</th>
                                    <th>View</th>
                                <th>Last Date</th>
                                <th>Location</th>
                                    <th>ADVT</th>
                                <th></th>
                                </thead>
                                <tbody>
                                </HeaderTemplate>
                                <ItemTemplate>
                                <tr>
                                <td><% srno1 = srno1 + 1; %><% =srno1 %></td>
                                    <td><%# Eval("departmentname")%></td>
                                <td><%# Eval("jobtitle")%></td>
                                <td><a href='jobdetails.aspx?id=<%# EncryptConnectionString(Eval("jobid").ToString()) %>' target="_blank"><img src="images/detail-image.png" /></a></td>
                                <td><b><%# Eval("jobdate", "{0: dd/MM/yyyy}")%></b></td>
                                <td><%# Eval("joblocation")%></td>
                                 <td><%#getadvertislink(Eval("imagepath").ToString()) %></td>
                                            
                                <td>
                                    <%#getjoblink(Eval("profileid").ToString(),Eval("jobid").ToString(),Eval("jobtitle").ToString()) %>
                                </td>
                                </tr>
                                </ItemTemplate>
                                <FooterTemplate>
                                </tbody>
                                </table>
                                </FooterTemplate>
                                </asp:Repeater>
							</div>
						</section>
					<!-- end: page -->

				</section>
                
			</div>
            <p class="text-center text-muted mt-md mb-md">&copy; Copyright 2022. All Rights Reserved.
                        <br />
                        <asp:Label ID="lblfeedback" runat="server">For any technical issue & feedback email us at webmaster@uol.edu.pk</asp:Label> 
                <br />
                <a href="https://info.flagcounter.com/H4KK"><img src="https://s11.flagcounter.com/count2/H4KK/bg_FFFFFF/txt_000000/border_CCCCCC/columns_2/maxflags_10/viewers_0/labels_0/pageviews_0/flags_0/percent_0/" alt="Flag Counter" border="0"></a>
                    </p>

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
    <!-- Google tag (gtag.js) -->
    <script async src="https://www.googletagmanager.com/gtag/js?id=G-VT9PEHNWWT"></script>
    <script>
      window.dataLayer = window.dataLayer || [];
      function gtag(){dataLayer.push(arguments);}
      gtag('js', new Date());

      gtag('config', 'G-VT9PEHNWWT');
    </script>
</body>
</html>