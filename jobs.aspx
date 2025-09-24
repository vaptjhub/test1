<%@ Page Language="C#" AutoEventWireup="true" CodeFile="jobs.aspx.cs" Inherits="jobs" %>

<!DOCTYPE html>
<html class="boxed" data-style-switcher-options="{'layoutStyle': 'boxed'}" xmlns="http://www.w3.org/1999/xhtml">
<%--<html class="fulled" xmlns="http://www.w3.org/1999/xhtml">--%>
<head runat="server">
     <!-- Basic -->
		<meta charset="UTF-8"/>

		<title>Job</title>
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
        <link rel="stylesheet" href="assets/vendor/jquery-ui/jquery-ui.css" />		
        <link rel="stylesheet" href="assets/vendor/jquery-ui/jquery-ui.theme.css" />		
        <link rel="stylesheet" href="assets/vendor/select2/css/select2.css" />		
        <link rel="stylesheet" href="assets/vendor/select2-bootstrap-theme/select2-bootstrap.min.css" />		
        <link rel="stylesheet" href="assets/vendor/bootstrap-multiselect/bootstrap-multiselect.css" />		
        <link rel="stylesheet" href="assets/vendor/bootstrap-tagsinput/bootstrap-tagsinput.css" />		
        <link rel="stylesheet" href="assets/vendor/bootstrap-colorpicker/css/bootstrap-colorpicker.css" />		
        <link rel="stylesheet" href="assets/vendor/bootstrap-timepicker/css/bootstrap-timepicker.css" />		
        <link rel="stylesheet" href="assets/vendor/dropzone/basic.css" />		
        <link rel="stylesheet" href="assets/vendor/dropzone/dropzone.css" />		
        <link rel="stylesheet" href="assets/vendor/bootstrap-markdown/css/bootstrap-markdown.min.css" />		
        <link rel="stylesheet" href="assets/vendor/summernote/summernote.css" />		
        <link rel="stylesheet" href="assets/vendor/codemirror/lib/codemirror.css" />		
        <link rel="stylesheet" href="assets/vendor/codemirror/theme/monokai.css" />

		<!-- Theme CSS -->
		<link rel="stylesheet" href="assets/stylesheets/theme.css" />

		<!-- Theme Custom CSS -->
		<link rel="stylesheet" href="assets/stylesheets/theme-custom.css"/>

		<!-- Head Libs -->
		<script src="assets/vendor/modernizr/modernizr.js"></script>
</head>
<body class="backgroundimge">

    <section class="body">
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
						<h2>Applying for :  <%=jobtitle %></h2>
					
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
                    <%=displaymessage %>
					<!-- start: page -->
						<div class="row">
							<div class="col-lg-12">
								<section class="panel form-wizard" id="w2">
                                    <form id="form1" runat="server" class="form-horizontal">
                                    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
									<div class="tabs">
										<ul class="nav nav-tabs nav-justify">
											<li class="active">
												<a href="#w2-personal" data-toggle="tab" class="text-center">
													<span class="badge hidden-xs">1</span>
													Personal Information
												</a>
											</li>
											<li>
												<a href="#w2-qualification" data-toggle="tab" class="text-center">
													<span class="badge hidden-xs">2</span>
													Qualification
												</a>
											</li>
                                            <li>
												<a href="#w2-employee" data-toggle="tab" class="text-center">
													<span class="badge hidden-xs">3</span>
													Employment Record
												</a>
											</li>
                                            <li id="liresearch" runat="server">
												<a href="#w2research" data-toggle="tab" class="text-center">
													<span class="badge hidden-xs">4</span>
													Research & Publication
												</a>
											</li>
                                            <li>
												<a href="#w2-skill" data-toggle="tab" class="text-center">
													<span class="badge hidden-xs"><%=four %></span>
													Skills & Other Specializations
												</a>
											</li>
                                            
											<li>
												<a href="#w2-confirm" data-toggle="tab" class="text-center">
													<span class="badge hidden-xs"><%=five %></span>
													Confirm
												</a>
											</li>
                                            
										</ul>

                                                <div class="tab-content">
												<div id="w2-personal" class="tab-pane active">
													<div class="form-group">
														<div class="col-sm-1-5">
                                                            <label>Full Name (capital letters) *</label>
                                                            <asp:TextBox ID="txtfullname" CssClass="form-control" runat="server" BackColor="#85CF9F" text-uppercase ReadOnly></asp:TextBox>
														</div>
                                                        <div class="col-sm-3">
                                                            <label>Email *</label>
                                                            <asp:TextBox ID="txtemail" CssClass="form-control" runat="server" BackColor="#85CF9F" ReadOnly></asp:TextBox>
														</div>
														<div class="col-sm-2">
                                                            <label>Date of Birth *</label>
                                                             <asp:TextBox ID="txtdob" CssClass="form-control" runat="server" BackColor="#85CF9F" ReadOnly></asp:TextBox>
														</div>
                                                        
														<div class="col-sm-1">
                                                            <label>Age</label>
                                                             <asp:TextBox ID="txtage" CssClass="form-control" runat="server" BackColor="#85CF9F" ReadOnly></asp:TextBox>
														</div>
                                                        <div class="col-sm-1-5">
                                                            <label>Gender</label>
                                                            <asp:DropDownList ID="cbogender" CssClass="form-control" runat="server" Width="100px" BackColor="#85CF9F" readonly>
                                                                <asp:ListItem></asp:ListItem>
                                                                <asp:ListItem>Male</asp:ListItem>
                                                                <asp:ListItem>Female</asp:ListItem>
                                                            </asp:DropDownList>
														</div>
                                                        <div class="col-sm-1-5">
                                                            <label>Marital Status</label>
                                                            <asp:DropDownList ID="cbomaritalstatus" CssClass="form-control" runat="server" BackColor="#85CF9F" readonly>
                                                                <asp:ListItem></asp:ListItem>
                                                                <asp:ListItem>Un-Married</asp:ListItem>
                                                                <asp:ListItem>Married</asp:ListItem>
                                                            </asp:DropDownList>
														</div>
													</div>
                                                   
                                                    <div class="form-group">
                                                        
														<div class="col-sm-4">
                                                            <%--<asp:DropDownList ID="cbofathername" runat="server" CssClass="form-control sm-md" Width="150px" Font-Size="9pt">
                                                                <asp:ListItem>Father Name</asp:ListItem>
                                                                <asp:ListItem>Husband Name</asp:ListItem>
                                                            </asp:DropDownList>--%>
                                                                <asp:RadioButtonList ID="optionfatherhusband" runat="server" RepeatDirection="Horizontal">
                                                                    <asp:ListItem Selected="True">&nbsp;Father / &nbsp;</asp:ListItem>
                                                                    <asp:ListItem>&nbsp;Husband Name&nbsp;</asp:ListItem>
                                                                </asp:RadioButtonList>
                                                            <asp:TextBox ID="txtfathername" CssClass="form-control input-sm" runat="server" ValidationGroup="profile" required></asp:TextBox>
														</div>
														
														<div class="col-sm-4">
                                                            <label>CNIC/Passport Number *</label>
                                                            <asp:TextBox ID="txtcnic" CssClass="form-control input-sm" runat="server" ValidationGroup="profile" required></asp:TextBox>
														</div>
                                                        <div class="col-sm-4">
                                                            <label>Contact (Mobile)*</label>
                                                            <asp:TextBox ID="txtcontactno" CssClass="form-control input-sm" runat="server" ValidationGroup="profile" required></asp:TextBox>
														</div>
													</div>

                                                    <div class="form-group">
                                                        
														<div class="col-sm-4">
                                                            <label>Address (for Correspondance) *</label>
                                                            <asp:TextBox ID="txtaddress" CssClass="form-control input-sm" runat="server" ValidationGroup="profile" required></asp:TextBox>
														</div>
                                                        <div class="col-sm-4">
                                                            <label>Nationality *</label>
                                                            <asp:TextBox ID="txtnationality" CssClass="form-control input-sm" runat="server" ValidationGroup="profile" required></asp:TextBox>
														</div>
														<asp:UpdatePanel ID="UpdatePanel3" runat="server" UpdateMode="Conditional">
                                                            <ContentTemplate>
                                                                 <div class="col-sm-4" id="changecity" runat="server">
                                                                     <label>City of Residence *</label>
                                                                    <asp:TextBox ID="txtcityofresidence" runat="server" CssClass="form-control input-sm" ValidationGroup="changecity" ReadOnly></asp:TextBox>
                                                                    <asp:LinkButton ID="LinkButton1" runat="server" Font-Size="9pt" OnClick="LinkButton1_Click" ValidationGroup="changecity">Change</asp:LinkButton>
                                                                    </div>
                                                                    <div class="col-sm-4" id="insertcity" runat="server">
                                                                        <label>City of Residence *</label>
                                                                        <asp:DropDownList ID="cbocityofresidence" CssClass="form-control input-sm" runat="server" AutoPostBack="true" OnSelectedIndexChanged="cbocityofresidence_SelectedIndexChanged" required></asp:DropDownList>
														                <asp:TextBox ID="txtothers" CssClass="form-control input-sm" runat="server" required></asp:TextBox>
                                                                    </div>
                                                            </ContentTemplate>
														</asp:UpdatePanel>
                                                                   
													</div>

                                                    <div class="form-group">
                                                        <label class="col-sm-2 control-label">Current Salary (PKR)*</label>
														<div class="col-sm-2">
                                                            <asp:TextBox ID="txtcurrentsalary" TextMode="Number" CssClass="form-control input-lg" runat="server" ValidationGroup="profile" required></asp:TextBox>
														</div>
														<label class="col-sm-2 control-label">Expected Salary (PKR) *</label>
														<div class="col-sm-2">
                                                            <asp:TextBox ID="txtexpectedsalary" TextMode="Number" CssClass="form-control input-lg" runat="server" ValidationGroup="profile" required></asp:TextBox>
														</div>
                                                        <label class="col-sm-2 control-label">Notice Period (days)*</label>
														<div class="col-sm-2">
                                                            <asp:DropDownList ID="cbonoticperiod" CssClass="form-control input-lg" runat="server" ValidationGroup="profile" required>
                                                                <asp:ListItem>0</asp:ListItem>
                                                                <asp:ListItem>1</asp:ListItem>
                                                                <asp:ListItem>2</asp:ListItem>
                                                                <asp:ListItem>3</asp:ListItem>
                                                                <asp:ListItem>4</asp:ListItem>
                                                                <asp:ListItem>5</asp:ListItem>
                                                                <asp:ListItem>6</asp:ListItem>
                                                                <asp:ListItem>7</asp:ListItem>
                                                                <asp:ListItem>8</asp:ListItem>
                                                                <asp:ListItem>9</asp:ListItem>
                                                                <asp:ListItem>10</asp:ListItem>
                                                                <asp:ListItem>11</asp:ListItem>
                                                                <asp:ListItem>12</asp:ListItem>
                                                                <asp:ListItem>13</asp:ListItem>
                                                                <asp:ListItem>14</asp:ListItem>
                                                                <asp:ListItem>15</asp:ListItem>
                                                                <asp:ListItem>16</asp:ListItem>
                                                                <asp:ListItem>17</asp:ListItem>
                                                                <asp:ListItem>18</asp:ListItem>
                                                                <asp:ListItem>19</asp:ListItem>
                                                                <asp:ListItem>20</asp:ListItem>
                                                                <asp:ListItem>21</asp:ListItem>
                                                                <asp:ListItem>22</asp:ListItem>
                                                                <asp:ListItem>23</asp:ListItem>
                                                                <asp:ListItem>24</asp:ListItem>
                                                                <asp:ListItem>25</asp:ListItem>
                                                                <asp:ListItem>26</asp:ListItem>
                                                                <asp:ListItem>27</asp:ListItem>
                                                                <asp:ListItem>28</asp:ListItem>
                                                                <asp:ListItem>29</asp:ListItem>
                                                                <asp:ListItem>30</asp:ListItem>
                                                                <asp:ListItem>31</asp:ListItem>
                                                                <asp:ListItem>32</asp:ListItem>
                                                                <asp:ListItem>33</asp:ListItem>
                                                                <asp:ListItem>34</asp:ListItem>
                                                                <asp:ListItem>35</asp:ListItem>
                                                                <asp:ListItem>36</asp:ListItem>
                                                                <asp:ListItem>37</asp:ListItem>
                                                                <asp:ListItem>38</asp:ListItem>
                                                                <asp:ListItem>39</asp:ListItem>
                                                                <asp:ListItem>40</asp:ListItem>
                                                                <asp:ListItem>41</asp:ListItem>
                                                                <asp:ListItem>42</asp:ListItem>
                                                                <asp:ListItem>43</asp:ListItem>
                                                                <asp:ListItem>44</asp:ListItem>
                                                                <asp:ListItem>45</asp:ListItem>
                                                                <asp:ListItem>46</asp:ListItem>
                                                                <asp:ListItem>47</asp:ListItem>
                                                                <asp:ListItem>48</asp:ListItem>
                                                                <asp:ListItem>49</asp:ListItem>
                                                                <asp:ListItem>50</asp:ListItem>
                                                                <asp:ListItem>51</asp:ListItem>
                                                                <asp:ListItem>52</asp:ListItem>
                                                                <asp:ListItem>53</asp:ListItem>
                                                                <asp:ListItem>54</asp:ListItem>
                                                                <asp:ListItem>55</asp:ListItem>
                                                                <asp:ListItem>56</asp:ListItem>
                                                                <asp:ListItem>57</asp:ListItem>
                                                                <asp:ListItem>58</asp:ListItem>
                                                                <asp:ListItem>59</asp:ListItem>
                                                                <asp:ListItem>60</asp:ListItem>
                                                                <asp:ListItem>61</asp:ListItem>
                                                                <asp:ListItem>62</asp:ListItem>
                                                                <asp:ListItem>63</asp:ListItem>
                                                                <asp:ListItem>64</asp:ListItem>
                                                                <asp:ListItem>65</asp:ListItem>
                                                                <asp:ListItem>66</asp:ListItem>
                                                                <asp:ListItem>67</asp:ListItem>
                                                                <asp:ListItem>68</asp:ListItem>
                                                                <asp:ListItem>69</asp:ListItem>
                                                                <asp:ListItem>70</asp:ListItem>
                                                                <asp:ListItem>71</asp:ListItem>
                                                                <asp:ListItem>72</asp:ListItem>
                                                                <asp:ListItem>73</asp:ListItem>
                                                                <asp:ListItem>74</asp:ListItem>
                                                                <asp:ListItem>75</asp:ListItem>
                                                                <asp:ListItem>76</asp:ListItem>
                                                                <asp:ListItem>77</asp:ListItem>
                                                                <asp:ListItem>78</asp:ListItem>
                                                                <asp:ListItem>79</asp:ListItem>
                                                                <asp:ListItem>80</asp:ListItem>
                                                                <asp:ListItem>81</asp:ListItem>
                                                                <asp:ListItem>82</asp:ListItem>
                                                                <asp:ListItem>83</asp:ListItem>
                                                                <asp:ListItem>84</asp:ListItem>
                                                                <asp:ListItem>85</asp:ListItem>
                                                                <asp:ListItem>86</asp:ListItem>
                                                                <asp:ListItem>87</asp:ListItem>
                                                                <asp:ListItem>88</asp:ListItem>
                                                                <asp:ListItem>89</asp:ListItem>
                                                                <asp:ListItem>90</asp:ListItem>
                                                            </asp:DropDownList>
														</div>
													</div>
                                                    <!-- Picture 1  and CV -->
                                                    <hr />

                                                           <div class="form-group">
                                                                
                                                                <div class="col-sm-1-5">
                                                                    <label>Picture</label>
                                                                    <asp:FileUpload ID="fupImage" runat="server"  />
                                                                    <asp:Button runat="server" OnClick="btnPreview_Click"  ID="btnPhotoPreview" CausesValidation="false" Text="Upload" CssClass="mb-xs mt-xs mr-xs btn btn-sm btn-success"/> 
                                                                    <br />
                                                                    .jpg,.png, size maximum 1 MB<br />
                                                                    <asp:Label ID="lblimageerror" runat="server" Font-Size="9pt" ForeColor="Red"></asp:Label>
                                                                </div>
                                                                
                                                                <div class="col-md-1">
                                                                    <asp:Label ID="lblimagetitle1" runat="server" Visible="false"></asp:Label><br />
                                                                    <asp:HyperLink ID="HyperLink1" runat="server" Target="_blank">View Picture</asp:HyperLink><br />
                                                                    
                                                                </div>
                                                               <div class="col-md-2">
                                                                   <asp:Image ID="ImagePreview1" runat="server" />
                                                               </div>
                                                               
                                                               <div class="col-md-3">
                                                                   <label>Upload CV</label>
                                                                   <asp:FileUpload ID="fileuploadcv" runat="server"  />
                                                                   <asp:Button runat="server" OnClick="btncv_Click" ID="btncv" CausesValidation="false" Text="Upload" CssClass="mb-xs mt-xs mr-xs btn btn-sm btn-success"/> <br />
                                                                    Only .pdf format, size maximum 1 MB <br />
                                                                   <asp:Label ID="lblcverror" runat="server" Font-Size="9pt" ForeColor="Red"></asp:Label>
                                                               </div>
                                                                    
                                                                <div class="col-md-1">
                                                                <asp:Label ID="lblcv" runat="server" Visible="false"></asp:Label><br />
                                                                <br />
                                                                
                                                                </div>
                                                               <div class="col-md-1">
                                                                   <asp:Image ID="ImagePreview2" runat="server" Width="50px" />
                                                                   <br />
                                                                   <br />
                                                                   <asp:HyperLink ID="HyperLink2" runat="server" Target="_blank">View CV</asp:HyperLink>
                                                               </div>
                                                                
                                                              </div>
												</div>
												<div id="w2-qualification" class="tab-pane">
                                                            <div class="col-sm-11">
                                                                <h4>Academic Qualification</h4>
                                                                <p>(Commence with reverse chronological order i.e. latest on the top)</p>
                                                            </div>
                                                            <div class="col-sm-1">
                                                                
                                                            </div>
                                                    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                                                        <ContentTemplate>
                                                            <asp:GridView ID="gvacademic" runat="server" AutoGenerateColumns="False" AllowSorting="True" ShowFooter="True" OnRowEditing="gvacademic_RowEditing" OnRowUpdating="gvacademic_RowUpdating" OnRowCancelingEdit="gvacademic_RowCancelingEdit" ShowHeaderWhenEmpty="True" EmptyDataText="No Records Found" CssClass="table table-striped table-bordered table-hover table-condensed" Width="100%">
                                                                <Columns>
                                                                    <asp:TemplateField ItemStyle-Width="30px" HeaderText="Reporting ID" Visible="False">
                                                                        <ItemTemplate>
                                                                            <asp:Label ID="lblqid" runat="server" Text='<%# Bind("qid")%>'></asp:Label>
                                                                        </ItemTemplate>
                                                                        <FooterTemplate>
                                                                            <asp:TextBox ID="txtqid" Width="40px" MaxLength="5" runat="server"></asp:TextBox>
                                                                        </FooterTemplate>
                                                                    </asp:TemplateField>

                                                                    <asp:TemplateField ItemStyle-Width="100px" HeaderText="Type">
                                                                        <ItemTemplate>
                                                                            <asp:Label ID="lblacademictype" runat="server" Text='<%# Bind("qtype")%>'></asp:Label>
                                                                        </ItemTemplate>
                                                                        <EditItemTemplate>
                                                                            <asp:DropDownList ID="cboacademictype" runat="server" CssClass="form-control input-sm" SelectedValue='<%# Bind("qtype") %>'>
                                                                                <asp:ListItem></asp:ListItem>
                                                                                <asp:ListItem>PhD</asp:ListItem>
                                                                                <asp:ListItem>M.Phil/MS</asp:ListItem>
                                                                                <asp:ListItem>Masters</asp:ListItem>
                                                                                <asp:ListItem>Bachelor-16 Year</asp:ListItem>
                                                                                <asp:ListItem>Bachelor-14 Year</asp:ListItem>
                                                                                <asp:ListItem>Diploma</asp:ListItem>
                                                                                <asp:ListItem>Certificate</asp:ListItem>
                                                                                <asp:ListItem>Intermediate</asp:ListItem>
                                                                                <asp:ListItem>Matric or Equivalent</asp:ListItem>
                                                                            </asp:DropDownList>
                                                                            <asp:RequiredFieldValidator ID="reqacademictype" ControlToValidate="cboacademictype" ValidationGroup="AcademicEdit" runat="server" ErrorMessage="This field is required." Font-Size=".9em" ForeColor="#C10000"></asp:RequiredFieldValidator>
                                                                        </EditItemTemplate>
                                                                        <FooterTemplate>
                                                                            <asp:DropDownList ID="cboacademictype" runat="server" CssClass="form-control input-sm">
                                                                                <asp:ListItem></asp:ListItem>
                                                                                <asp:ListItem>PhD</asp:ListItem>
                                                                                <asp:ListItem>M.Phil/MS</asp:ListItem>
                                                                                <asp:ListItem>Masters</asp:ListItem>
                                                                                <asp:ListItem>Bachelor-16 Year</asp:ListItem>
                                                                                <asp:ListItem>Bachelor-14 Year</asp:ListItem>
                                                                                <asp:ListItem>Diploma</asp:ListItem>
                                                                                <asp:ListItem>Certificate</asp:ListItem>
                                                                                <asp:ListItem>Intermediate</asp:ListItem>
                                                                                <asp:ListItem>Matric or Equivalent</asp:ListItem>
                                                                            </asp:DropDownList>
                                                                            <asp:RequiredFieldValidator ID="reqacademictype" ControlToValidate="cboacademictype" ValidationGroup="AcademicInsert" runat="server" ErrorMessage="This field is required." Font-Size=".9em" ForeColor="#C10000"></asp:RequiredFieldValidator>
                                                                        </FooterTemplate>
                                                                    </asp:TemplateField>
                                                                    <asp:TemplateField ItemStyle-Width="100px" HeaderText="Title/Program">
                                                                        <ItemTemplate>
                                                                            <asp:Label ID="lblprogramtitle" runat="server" Text='<%# Bind("qtitle")%>'></asp:Label>
                                                                        </ItemTemplate>
                                                                        <EditItemTemplate>
                                                                            <asp:TextBox ID="txtprogramtitle" Text='<%# Bind("qtitle")%>' CssClass="form-control input-sm" runat="server"></asp:TextBox>
                                                                            <asp:RequiredFieldValidator ID="reqprofiletitle" ControlToValidate="txtprogramtitle" ValidationGroup="AcademicEdit" runat="server" ErrorMessage="This field is required." Font-Size=".9em" ForeColor="#C10000"></asp:RequiredFieldValidator>
                                                                        </EditItemTemplate>
                                                                        <FooterTemplate>
                                                                            <asp:TextBox ID="txtprogramtitle" CssClass="form-control input-sm" runat="server"></asp:TextBox>
                                                                            <asp:RequiredFieldValidator ID="reqprofiletitle" ControlToValidate="txtprogramtitle" ValidationGroup="AcademicInsert" runat="server" ErrorMessage="This field is required." Font-Size=".9em" ForeColor="#C10000"></asp:RequiredFieldValidator>
                                                                        </FooterTemplate>
                                                                    </asp:TemplateField>
                                                                    <asp:TemplateField ItemStyle-Width="100px" HeaderText="Specialization">
                                                                        <ItemTemplate>
                                                                            <asp:Label ID="lblspecialization" runat="server" Text='<%# Bind("qspecialization")%>'></asp:Label>
                                                                        </ItemTemplate>
                                                                        <EditItemTemplate>
                                                                            <asp:TextBox ID="txtspecialization" Text='<%# Bind("qspecialization")%>' CssClass="form-control input-sm" runat="server"></asp:TextBox>
                                                                            <asp:RequiredFieldValidator ID="reqspecialization" ControlToValidate="txtspecialization" ValidationGroup="AcademicEdit" runat="server" ErrorMessage="This field is required." Font-Size=".9em" ForeColor="#C10000"></asp:RequiredFieldValidator>
                                                                        </EditItemTemplate>
                                                                        <FooterTemplate>
                                                                            <asp:TextBox ID="txtspecialization" CssClass="form-control input-sm" runat="server"></asp:TextBox>
                                                                            <asp:RequiredFieldValidator ID="reqspecialization" ControlToValidate="txtspecialization" ValidationGroup="AcademicInsert" runat="server" ErrorMessage="This field is required." Font-Size=".9em" ForeColor="#C10000"></asp:RequiredFieldValidator>
                                                                        </FooterTemplate>
                                                                    </asp:TemplateField>
                                                                    <asp:TemplateField ItemStyle-Width="100px" HeaderText="University / Institute">
                                                                        <ItemTemplate>
                                                                            <asp:Label ID="lbluniversity" runat="server" Text='<%# Bind("quniversity")%>'></asp:Label>
                                                                        </ItemTemplate>
                                                                        <EditItemTemplate>
                                                                            <asp:TextBox ID="txtuniversity" runat="server" Text='<%# Bind("quniversity")%>' CssClass="form-control input-sm"></asp:TextBox>
                                                                            <asp:RequiredFieldValidator ID="reqtxtuniversity" ControlToValidate="txtuniversity" ValidationGroup="AcademicEdit" runat="server" ErrorMessage="This field is required." Font-Size=".9em" ForeColor="#C10000"></asp:RequiredFieldValidator>
                                                                        </EditItemTemplate>
                                                                        <FooterTemplate>
                                                                            <asp:TextBox ID="txtuniversity" CssClass="form-control input-sm" runat="server"></asp:TextBox>
                                                                            <asp:RequiredFieldValidator ID="reqtxtuniversity" ControlToValidate="txtuniversity" ValidationGroup="AcademicInsert" runat="server" ErrorMessage="This field is required." Font-Size=".9em" ForeColor="#C10000"></asp:RequiredFieldValidator>
                                                                        </FooterTemplate>
                                                                    </asp:TemplateField>
                                                                    <asp:TemplateField ItemStyle-Width="100px" HeaderText="City">
                                                                        <ItemTemplate>
                                                                            <asp:Label ID="lblacademiccity" runat="server" Text='<%# Bind("qcity")%>'></asp:Label>
                                                                        </ItemTemplate>
                                                                        <EditItemTemplate>
                                                                            <asp:TextBox ID="txtacademiccity" runat="server" Text='<%# Bind("qcity")%>' CssClass="form-control input-sm"></asp:TextBox>
                                                                            <asp:RequiredFieldValidator ID="reqtxtacademiccity" ControlToValidate="txtacademiccity" ValidationGroup="AcademicEdit" runat="server" ErrorMessage="This field is required." Font-Size=".9em" ForeColor="#C10000"></asp:RequiredFieldValidator>
                                                                        </EditItemTemplate>
                                                                        <FooterTemplate>
                                                                            <asp:TextBox ID="txtacademiccity" CssClass="form-control input-sm" runat="server" Text='<%# Bind("academiccity")%>'></asp:TextBox>
                                                                            <asp:RequiredFieldValidator ID="reqtxtacademiccity" ControlToValidate="txtacademiccity" ValidationGroup="AcademicInsert" runat="server" ErrorMessage="This field is required." Font-Size=".9em" ForeColor="#C10000"></asp:RequiredFieldValidator>
                                                                        </FooterTemplate>
                                                                    </asp:TemplateField>
                                                                    <asp:TemplateField ItemStyle-Width="100px" HeaderText="Country">
                                                                        <ItemTemplate>
                                                                            <asp:Label ID="lblacademiccountry" runat="server" Text='<%# Bind("qcountry")%>'></asp:Label>
                                                                        </ItemTemplate>
                                                                        <EditItemTemplate>
                                                                            <asp:TextBox ID="txtacademiccountry" runat="server" Text='<%# Bind("qcountry")%>' CssClass="form-control input-sm"></asp:TextBox>
                                                                            <asp:RequiredFieldValidator ID="reqtxtacademiccountry" ControlToValidate="txtacademiccountry" ValidationGroup="AcademicEdit" runat="server" ErrorMessage="This field is required." Font-Size=".9em" ForeColor="#C10000"></asp:RequiredFieldValidator>
                                                                        </EditItemTemplate>
                                                                        <FooterTemplate>
                                                                            <asp:TextBox ID="txtacademiccountry" runat="server" CssClass="form-control input-sm"></asp:TextBox>
                                                                            <asp:RequiredFieldValidator ID="reqtxtacademiccountry" ControlToValidate="txtacademiccountry" ValidationGroup="AcademicInsert" runat="server" ErrorMessage="This field is required." Font-Size=".9em" ForeColor="#C10000"></asp:RequiredFieldValidator>
                                                                        </FooterTemplate>
                                                                    </asp:TemplateField>
                                                                    <asp:TemplateField ItemStyle-Width="100px" HeaderText="From">
                                                                        <ItemTemplate>
                                                                            <asp:Label ID="lblyearfrom" runat="server" Text='<%# Bind("qperiodfrom")%>'></asp:Label>
                                                                        </ItemTemplate>
                                                                        <EditItemTemplate>
                                                                            <asp:DropDownList ID="cboacademicfrom" runat="server" Width="80px" CssClass="form-control input-sm" SelectedValue='<%# Bind("qperiodto") %>'>
                                                                                <asp:ListItem></asp:ListItem>
																				<asp:ListItem>2024</asp:ListItem>
                                                                                <asp:ListItem>2023</asp:ListItem>
                                                                                <asp:ListItem>2022</asp:ListItem>
                                                                                <asp:ListItem>2021</asp:ListItem>
                                                                                <asp:ListItem>2020</asp:ListItem>
                                                                                <asp:ListItem>2019</asp:ListItem>
                                                                                <asp:ListItem>2018</asp:ListItem>
                                                                                <asp:ListItem>2017</asp:ListItem>
                                                                                <asp:ListItem>2016</asp:ListItem>
                                                                                <asp:ListItem>2015</asp:ListItem>
                                                                                <asp:ListItem>2014</asp:ListItem>
                                                                                <asp:ListItem>2013</asp:ListItem>
                                                                                <asp:ListItem>2012</asp:ListItem>
                                                                                <asp:ListItem>2011</asp:ListItem>
                                                                                <asp:ListItem>2010</asp:ListItem>
                                                                                <asp:ListItem>2009</asp:ListItem>
                                                                                <asp:ListItem>2008</asp:ListItem>
                                                                                <asp:ListItem>2007</asp:ListItem>
                                                                                <asp:ListItem>2006</asp:ListItem>
                                                                                <asp:ListItem>2005</asp:ListItem>
                                                                                <asp:ListItem>2004</asp:ListItem>
                                                                                <asp:ListItem>2003</asp:ListItem>
                                                                                <asp:ListItem>2002</asp:ListItem>
                                                                                <asp:ListItem>2001</asp:ListItem>
                                                                                <asp:ListItem>2000</asp:ListItem>
                                                                                <asp:ListItem>1999</asp:ListItem>
                                                                                <asp:ListItem>1998</asp:ListItem>
                                                                                <asp:ListItem>1997</asp:ListItem>
                                                                                <asp:ListItem>1996</asp:ListItem>
                                                                                <asp:ListItem>1995</asp:ListItem>
                                                                                <asp:ListItem>1994</asp:ListItem>
                                                                                <asp:ListItem>1993</asp:ListItem>
                                                                                <asp:ListItem>1992</asp:ListItem>
                                                                                <asp:ListItem>1991</asp:ListItem>
                                                                                <asp:ListItem>1990</asp:ListItem>
                                                                                <asp:ListItem>1989</asp:ListItem>
                                                                                <asp:ListItem>1988</asp:ListItem>
                                                                                <asp:ListItem>1987</asp:ListItem>
                                                                                <asp:ListItem>1986</asp:ListItem>
                                                                                <asp:ListItem>1985</asp:ListItem>
                                                                                <asp:ListItem>1984</asp:ListItem>
                                                                                <asp:ListItem>1983</asp:ListItem>
                                                                                <asp:ListItem>1982</asp:ListItem>
                                                                                <asp:ListItem>1981</asp:ListItem>
                                                                                <asp:ListItem>1980</asp:ListItem>
                                                                                <asp:ListItem>1979</asp:ListItem>
                                                                                <asp:ListItem>1978</asp:ListItem>
                                                                                <asp:ListItem>1977</asp:ListItem>
                                                                                <asp:ListItem>1976</asp:ListItem>
                                                                                <asp:ListItem>1975</asp:ListItem>
                                                                                <asp:ListItem>1974</asp:ListItem>
                                                                                <asp:ListItem>1973</asp:ListItem>
                                                                                <asp:ListItem>1972</asp:ListItem>
                                                                                <asp:ListItem>1971</asp:ListItem>
                                                                                <asp:ListItem>1970</asp:ListItem>
                                                                                </asp:DropDownList>
                                                                            <asp:RequiredFieldValidator ID="reqcboacademicfrom" ControlToValidate="cboacademicfrom" ValidationGroup="AcademicEdit" runat="server" ErrorMessage="This field is required." Font-Size=".9em" ForeColor="#C10000"></asp:RequiredFieldValidator>
                                                                        </EditItemTemplate>
                                                                        <FooterTemplate>
                                                                            <asp:DropDownList ID="cboacademicfrom" runat="server" CssClass="form-control input-sm" Width="80px">
                                                                                <asp:ListItem></asp:ListItem>
																				<asp:ListItem>2024</asp:ListItem>
                                                                                <asp:ListItem>2023</asp:ListItem>
                                                                                <asp:ListItem>2022</asp:ListItem>
                                                                                <asp:ListItem>2021</asp:ListItem>
                                                                                <asp:ListItem>2020</asp:ListItem>
                                                                                <asp:ListItem>2019</asp:ListItem>
                                                                                <asp:ListItem>2018</asp:ListItem>
                                                                                <asp:ListItem>2017</asp:ListItem>
                                                                                <asp:ListItem>2016</asp:ListItem>
                                                                                <asp:ListItem>2015</asp:ListItem>
                                                                                <asp:ListItem>2014</asp:ListItem>
                                                                                <asp:ListItem>2013</asp:ListItem>
                                                                                <asp:ListItem>2012</asp:ListItem>
                                                                                <asp:ListItem>2011</asp:ListItem>
                                                                                <asp:ListItem>2010</asp:ListItem>
                                                                                <asp:ListItem>2009</asp:ListItem>
                                                                                <asp:ListItem>2008</asp:ListItem>
                                                                                <asp:ListItem>2007</asp:ListItem>
                                                                                <asp:ListItem>2006</asp:ListItem>
                                                                                <asp:ListItem>2005</asp:ListItem>
                                                                                <asp:ListItem>2004</asp:ListItem>
                                                                                <asp:ListItem>2003</asp:ListItem>
                                                                                <asp:ListItem>2002</asp:ListItem>
                                                                                <asp:ListItem>2001</asp:ListItem>
                                                                                <asp:ListItem>2000</asp:ListItem>
                                                                                <asp:ListItem>1999</asp:ListItem>
                                                                                <asp:ListItem>1998</asp:ListItem>
                                                                                <asp:ListItem>1997</asp:ListItem>
                                                                                <asp:ListItem>1996</asp:ListItem>
                                                                                <asp:ListItem>1995</asp:ListItem>
                                                                                <asp:ListItem>1994</asp:ListItem>
                                                                                <asp:ListItem>1993</asp:ListItem>
                                                                                <asp:ListItem>1992</asp:ListItem>
                                                                                <asp:ListItem>1991</asp:ListItem>
                                                                                <asp:ListItem>1990</asp:ListItem>
                                                                                <asp:ListItem>1989</asp:ListItem>
                                                                                <asp:ListItem>1988</asp:ListItem>
                                                                                <asp:ListItem>1987</asp:ListItem>
                                                                                <asp:ListItem>1986</asp:ListItem>
                                                                                <asp:ListItem>1985</asp:ListItem>
                                                                                <asp:ListItem>1984</asp:ListItem>
                                                                                <asp:ListItem>1983</asp:ListItem>
                                                                                <asp:ListItem>1982</asp:ListItem>
                                                                                <asp:ListItem>1981</asp:ListItem>
                                                                                <asp:ListItem>1980</asp:ListItem>
                                                                                <asp:ListItem>1979</asp:ListItem>
                                                                                <asp:ListItem>1978</asp:ListItem>
                                                                                <asp:ListItem>1977</asp:ListItem>
                                                                                <asp:ListItem>1976</asp:ListItem>
                                                                                <asp:ListItem>1975</asp:ListItem>
                                                                                <asp:ListItem>1974</asp:ListItem>
                                                                                <asp:ListItem>1973</asp:ListItem>
                                                                                <asp:ListItem>1972</asp:ListItem>
                                                                                <asp:ListItem>1971</asp:ListItem>
                                                                                <asp:ListItem>1970</asp:ListItem>
                                                                                </asp:DropDownList>
                                                                            <asp:RequiredFieldValidator ID="reqcboacademicfrom" ControlToValidate="cboacademicfrom" ValidationGroup="AcademicInsert" runat="server" ErrorMessage="This field is required." Font-Size=".9em" ForeColor="#C10000"></asp:RequiredFieldValidator>
                                                                        </FooterTemplate>
                                                                    </asp:TemplateField>
                                                                    <asp:TemplateField ItemStyle-Width="100px" HeaderText="To">
                                                                        <ItemTemplate>
                                                                            <asp:Label ID="lblyearto" runat="server" Text='<%# Bind("qperiodto")%>'></asp:Label>
                                                                        </ItemTemplate>
                                                                        <EditItemTemplate>
                                                                            <asp:DropDownList ID="cboacademicto" runat="server" CssClass="form-control input-sm" Width="80px" SelectedValue='<%# Bind("qperiodto") %>'>
                                                                                <asp:ListItem></asp:ListItem>
																				<asp:ListItem>2024</asp:ListItem>
                                                                                <asp:ListItem>2023</asp:ListItem>
                                                                                <asp:ListItem>2022</asp:ListItem>
                                                                                <asp:ListItem>2021</asp:ListItem>
                                                                                <asp:ListItem>2020</asp:ListItem>
                                                                                <asp:ListItem>2019</asp:ListItem>
                                                                                <asp:ListItem>2018</asp:ListItem>
                                                                                <asp:ListItem>2017</asp:ListItem>
                                                                                <asp:ListItem>2016</asp:ListItem>
                                                                                <asp:ListItem>2015</asp:ListItem>
                                                                                <asp:ListItem>2014</asp:ListItem>
                                                                                <asp:ListItem>2013</asp:ListItem>
                                                                                <asp:ListItem>2012</asp:ListItem>
                                                                                <asp:ListItem>2011</asp:ListItem>
                                                                                <asp:ListItem>2010</asp:ListItem>
                                                                                <asp:ListItem>2009</asp:ListItem>
                                                                                <asp:ListItem>2008</asp:ListItem>
                                                                                <asp:ListItem>2007</asp:ListItem>
                                                                                <asp:ListItem>2006</asp:ListItem>
                                                                                <asp:ListItem>2005</asp:ListItem>
                                                                                <asp:ListItem>2004</asp:ListItem>
                                                                                <asp:ListItem>2003</asp:ListItem>
                                                                                <asp:ListItem>2002</asp:ListItem>
                                                                                <asp:ListItem>2001</asp:ListItem>
                                                                                <asp:ListItem>2000</asp:ListItem>
                                                                                <asp:ListItem>1999</asp:ListItem>
                                                                                <asp:ListItem>1998</asp:ListItem>
                                                                                <asp:ListItem>1997</asp:ListItem>
                                                                                <asp:ListItem>1996</asp:ListItem>
                                                                                <asp:ListItem>1995</asp:ListItem>
                                                                                <asp:ListItem>1994</asp:ListItem>
                                                                                <asp:ListItem>1993</asp:ListItem>
                                                                                <asp:ListItem>1992</asp:ListItem>
                                                                                <asp:ListItem>1991</asp:ListItem>
                                                                                <asp:ListItem>1990</asp:ListItem>
                                                                                <asp:ListItem>1989</asp:ListItem>
                                                                                <asp:ListItem>1988</asp:ListItem>
                                                                                <asp:ListItem>1987</asp:ListItem>
                                                                                <asp:ListItem>1986</asp:ListItem>
                                                                                <asp:ListItem>1985</asp:ListItem>
                                                                                <asp:ListItem>1984</asp:ListItem>
                                                                                <asp:ListItem>1983</asp:ListItem>
                                                                                <asp:ListItem>1982</asp:ListItem>
                                                                                <asp:ListItem>1981</asp:ListItem>
                                                                                <asp:ListItem>1980</asp:ListItem>
                                                                                <asp:ListItem>1979</asp:ListItem>
                                                                                <asp:ListItem>1978</asp:ListItem>
                                                                                <asp:ListItem>1977</asp:ListItem>
                                                                                <asp:ListItem>1976</asp:ListItem>
                                                                                <asp:ListItem>1975</asp:ListItem>
                                                                                <asp:ListItem>1974</asp:ListItem>
                                                                                <asp:ListItem>1973</asp:ListItem>
                                                                                <asp:ListItem>1972</asp:ListItem>
                                                                                <asp:ListItem>1971</asp:ListItem>
                                                                                <asp:ListItem>1970</asp:ListItem>
                                                                            </asp:DropDownList>
                                                                            <asp:RequiredFieldValidator ID="reqcboacademicto" ControlToValidate="cboacademicto" ValidationGroup="AcademicEdit" runat="server" ErrorMessage="This field is required." Font-Size=".9em" ForeColor="#C10000"></asp:RequiredFieldValidator>
                                                                        </EditItemTemplate>
                                                                        <FooterTemplate>
                                                                            <asp:DropDownList ID="cboacademicto" runat="server" CssClass="form-control input-sm" Width="80px">
                                                                                <asp:ListItem></asp:ListItem>
																				<asp:ListItem>2024</asp:ListItem>
                                                                                <asp:ListItem>2023</asp:ListItem>
                                                                                <asp:ListItem>2022</asp:ListItem>
                                                                                <asp:ListItem>2021</asp:ListItem>
                                                                                <asp:ListItem>2020</asp:ListItem>
                                                                                <asp:ListItem>2019</asp:ListItem>
                                                                                <asp:ListItem>2018</asp:ListItem>
                                                                                <asp:ListItem>2017</asp:ListItem>
                                                                                <asp:ListItem>2016</asp:ListItem>
                                                                                <asp:ListItem>2015</asp:ListItem>
                                                                                <asp:ListItem>2014</asp:ListItem>
                                                                                <asp:ListItem>2013</asp:ListItem>
                                                                                <asp:ListItem>2012</asp:ListItem>
                                                                                <asp:ListItem>2011</asp:ListItem>
                                                                                <asp:ListItem>2010</asp:ListItem>
                                                                                <asp:ListItem>2009</asp:ListItem>
                                                                                <asp:ListItem>2008</asp:ListItem>
                                                                                <asp:ListItem>2007</asp:ListItem>
                                                                                <asp:ListItem>2006</asp:ListItem>
                                                                                <asp:ListItem>2005</asp:ListItem>
                                                                                <asp:ListItem>2004</asp:ListItem>
                                                                                <asp:ListItem>2003</asp:ListItem>
                                                                                <asp:ListItem>2002</asp:ListItem>
                                                                                <asp:ListItem>2001</asp:ListItem>
                                                                                <asp:ListItem>2000</asp:ListItem>
                                                                                <asp:ListItem>1999</asp:ListItem>
                                                                                <asp:ListItem>1998</asp:ListItem>
                                                                                <asp:ListItem>1997</asp:ListItem>
                                                                                <asp:ListItem>1996</asp:ListItem>
                                                                                <asp:ListItem>1995</asp:ListItem>
                                                                                <asp:ListItem>1994</asp:ListItem>
                                                                                <asp:ListItem>1993</asp:ListItem>
                                                                                <asp:ListItem>1992</asp:ListItem>
                                                                                <asp:ListItem>1991</asp:ListItem>
                                                                                <asp:ListItem>1990</asp:ListItem>
                                                                                <asp:ListItem>1989</asp:ListItem>
                                                                                <asp:ListItem>1988</asp:ListItem>
                                                                                <asp:ListItem>1987</asp:ListItem>
                                                                                <asp:ListItem>1986</asp:ListItem>
                                                                                <asp:ListItem>1985</asp:ListItem>
                                                                                <asp:ListItem>1984</asp:ListItem>
                                                                                <asp:ListItem>1983</asp:ListItem>
                                                                                <asp:ListItem>1982</asp:ListItem>
                                                                                <asp:ListItem>1981</asp:ListItem>
                                                                                <asp:ListItem>1980</asp:ListItem>
                                                                                <asp:ListItem>1979</asp:ListItem>
                                                                                <asp:ListItem>1978</asp:ListItem>
                                                                                <asp:ListItem>1977</asp:ListItem>
                                                                                <asp:ListItem>1976</asp:ListItem>
                                                                                <asp:ListItem>1975</asp:ListItem>
                                                                                <asp:ListItem>1974</asp:ListItem>
                                                                                <asp:ListItem>1973</asp:ListItem>
                                                                                <asp:ListItem>1972</asp:ListItem>
                                                                                <asp:ListItem>1971</asp:ListItem>
                                                                                <asp:ListItem>1970</asp:ListItem>
                                                                            </asp:DropDownList>
                                                                            <asp:RequiredFieldValidator ID="reqcboacademicto" ControlToValidate="cboacademicto" ValidationGroup="AcademicInsert" runat="server" ErrorMessage="This field is required." Font-Size=".9em" ForeColor="#C10000"></asp:RequiredFieldValidator>
                                                                        </FooterTemplate>
                                                                    </asp:TemplateField>
                                                                    <asp:TemplateField ItemStyle-Width="100px" HeaderText="GPA/%/Grade">
                                                                        <ItemTemplate>
                                                                            <asp:Label ID="lblmarks" runat="server" Text='<%# Bind("qmarks")%>'></asp:Label>
                                                                        </ItemTemplate>
                                                                        <EditItemTemplate>
                                                                            <asp:TextBox ID="txtmarks" runat="server" CssClass="form-control input-sm" Text='<%# Bind("qmarks")%>'></asp:TextBox>
                                                                            <asp:RequiredFieldValidator ID="reqtxtmarks" ControlToValidate="txtmarks" ValidationGroup="AcademicEdit" runat="server" ErrorMessage="This field is required." Font-Size=".9em" ForeColor="#C10000"></asp:RequiredFieldValidator>
                                                                        </EditItemTemplate>
                                                                        <FooterTemplate>
                                                                            <asp:TextBox ID="txtmarks" runat="server" CssClass="form-control input-sm"></asp:TextBox>
                                                                            <asp:RequiredFieldValidator ID="reqtxtmarks" ControlToValidate="txtmarks" ValidationGroup="AcademicInsert" runat="server" ErrorMessage="This field is required." Font-Size=".9em" ForeColor="#C10000"></asp:RequiredFieldValidator>
                                                                        </FooterTemplate>
                                                                    </asp:TemplateField>
                                                                    <asp:CommandField ItemStyle-Width="50px" ShowEditButton="True" ValidationGroup="AcademicEdit" />
                                                                    <asp:TemplateField ItemStyle-Width="50px">
                                                                        <ItemTemplate>
                                                                            <asp:LinkButton ID="lnkRemove" runat="server" CommandArgument='<%# Bind("qid")%>'  Text="Delete"  ValidationGroup="AcademicEdit" OnClientClick="return confirm('Are you sure you want to delete this row?')" OnClick="AcademicDelete"></asp:LinkButton>
                                                                        </ItemTemplate>
                                                                        <FooterTemplate>
                                                                            <asp:Button ID="btnAdd" runat="server" Text="Add" ValidationGroup="AcademicInsert" Width="50px" CssClass="btn btn-info btn-sm" OnClick="AcademicAdd" />
                                                                        </FooterTemplate>
                                                                    </asp:TemplateField>
                                                                </Columns>
                                                            </asp:GridView>
                                                        </ContentTemplate>
                                                    </asp:UpdatePanel>
                                                            
                                                    <hr />
                                                    <div class="col-sm-10">
                                                        <h4>Professional Qualification</h4>
                                                        <p>(Certifications, Trainings etc)</p>
                                                                
                                                        </div>
                                                    <asp:UpdatePanel ID="UpdatePanel2" runat="server">
                                                        <ContentTemplate>
                                                            <asp:GridView ID="gvprofessional" runat="server" AutoGenerateColumns="False" AllowSorting="True" ShowFooter="True" OnRowEditing="gvprofessional_RowEditing" OnRowUpdating="gvprofessional_RowUpdating" OnRowCancelingEdit="gvprofessional_RowCancelingEdit" ShowHeaderWhenEmpty="True" EmptyDataText="No Records Found" CssClass="table table-striped table-bordered table-hover table-condensed" Width="100%">
                                                                <Columns>
                                                                    <asp:TemplateField ItemStyle-Width="30px" HeaderText="ID" Visible="False">
                                                                        <ItemTemplate>
                                                                            <asp:Label ID="lblpid" runat="server" Text='<%# Bind("pid")%>'></asp:Label>
                                                                        </ItemTemplate>
                                                                        <FooterTemplate>
                                                                            <asp:TextBox ID="txtpid" Width="40px" MaxLength="5" runat="server"></asp:TextBox>
                                                                        </FooterTemplate>
                                                                    </asp:TemplateField>
                                                                    <asp:TemplateField ItemStyle-Width="200px" HeaderText="Title/Program">
                                                                        <ItemTemplate>
                                                                            <asp:Label ID="lblprogramtitle" runat="server" Text='<%# Bind("ptitle")%>'></asp:Label>

                                                                        </ItemTemplate>
                                                                        <EditItemTemplate>
                                                                            <asp:TextBox ID="txtprogramtitle" Text='<%# Bind("ptitle")%>' CssClass="form-control input-sm" runat="server"></asp:TextBox>
                                                                            <asp:RequiredFieldValidator ID="reqprogramtitle" ControlToValidate="txtprogramtitle" ValidationGroup="ProfessionalEdit" runat="server" ErrorMessage="This field is required." Font-Size=".9em" ForeColor="#C10000"></asp:RequiredFieldValidator>
                                                                        </EditItemTemplate>
                                                                        <FooterTemplate>
                                                                            <asp:TextBox ID="txtprogramtitle" CssClass="form-control input-sm" runat="server"></asp:TextBox>
                                                                            <asp:RequiredFieldValidator ID="reqprogramtitle" ControlToValidate="txtprogramtitle" ValidationGroup="ProfessionalInsert" runat="server" ErrorMessage="This field is required." Font-Size=".9em" ForeColor="#C10000"></asp:RequiredFieldValidator>
                                                                        </FooterTemplate>
                                                                    </asp:TemplateField>
                                                                    <asp:TemplateField ItemStyle-Width="200px" HeaderText="Institution">
                                                                        <ItemTemplate>
                                                                            <asp:Label ID="lblinstitution" runat="server" Text='<%# Bind("pinstitution")%>'></asp:Label>
                                                                        </ItemTemplate>
                                                                        <EditItemTemplate>
                                                                            <asp:TextBox ID="txtinstitution" runat="server" Text='<%# Bind("pinstitution")%>' CssClass="form-control input-sm"></asp:TextBox>
                                                                            <asp:RequiredFieldValidator ID="reqinstitution" ControlToValidate="txtinstitution" ValidationGroup="ProfessionalEdit" runat="server" ErrorMessage="This field is required." Font-Size=".9em" ForeColor="#C10000"></asp:RequiredFieldValidator>
                                                                        </EditItemTemplate>
                                                                        <FooterTemplate>
                                                                            <asp:TextBox ID="txtinstitution" CssClass="form-control input-sm" runat="server"></asp:TextBox>
                                                                            <asp:RequiredFieldValidator ID="reqinstitution" ControlToValidate="txtinstitution" ValidationGroup="ProfessionalInsert" runat="server" ErrorMessage="This field is required." Font-Size=".9em" ForeColor="#C10000"></asp:RequiredFieldValidator>
                                                                        </FooterTemplate>
                                                                    </asp:TemplateField>
                                                                    <asp:TemplateField ItemStyle-Width="170px" HeaderText="City">
                                                                        <ItemTemplate>
                                                                            <asp:Label ID="lblpcity" runat="server" Text='<%# Bind("pcity")%>'></asp:Label>
                                                                        </ItemTemplate>
                                                                        <EditItemTemplate>
                                                                            <asp:TextBox ID="txtpcity" runat="server" Text='<%# Bind("pcity")%>' CssClass="form-control input-sm"></asp:TextBox>
                                                                            <%--<asp:RequiredFieldValidator ID="reqpcity" ControlToValidate="txtpcity" ValidationGroup="ProfessionalEdit" runat="server" ErrorMessage="This field is required." Font-Size=".9em" ForeColor="#C10000"></asp:RequiredFieldValidator>--%>
                                                                        </EditItemTemplate>
                                                                        <FooterTemplate>
                                                                            <asp:TextBox ID="txtpcity" CssClass="form-control input-sm" runat="server" Text='<%# Bind("pcity")%>'></asp:TextBox>
                                                                            <%--<asp:RequiredFieldValidator ID="reqpcity" ControlToValidate="txtpcity" ValidationGroup="ProfessionalInsert" runat="server" ErrorMessage="This field is required." Font-Size=".9em" ForeColor="#C10000"></asp:RequiredFieldValidator>--%>
                                                                        </FooterTemplate>
                                                                    </asp:TemplateField>
                                                                    <asp:TemplateField ItemStyle-Width="160px" HeaderText="Country">
                                                                        <ItemTemplate>
                                                                            <asp:Label ID="lblpcountry" runat="server" Text='<%# Bind("pcountry")%>'></asp:Label>
                                                                        </ItemTemplate>
                                                                        <EditItemTemplate>
                                                                            <asp:TextBox ID="txtpcountry" runat="server" Text='<%# Bind("pcountry")%>' CssClass="form-control input-sm"></asp:TextBox>
                                                                            <asp:RequiredFieldValidator ID="reqpcountry" ControlToValidate="txtpcountry" ValidationGroup="ProfessionalEdit" runat="server" ErrorMessage="This field is required." Font-Size=".9em" ForeColor="#C10000"></asp:RequiredFieldValidator>
                                                                        </EditItemTemplate>
                                                                        <FooterTemplate>
                                                                            <asp:TextBox ID="txtpcountry" runat="server" CssClass="form-control input-sm"></asp:TextBox>
                                                                            <asp:RequiredFieldValidator ID="reqpcountry" ControlToValidate="txtpcountry" ValidationGroup="ProfessionalInsert" runat="server" ErrorMessage="This field is required." Font-Size=".9em" ForeColor="#C10000"></asp:RequiredFieldValidator>
                                                                        </FooterTemplate>
                                                                    </asp:TemplateField>
                                                                    <asp:TemplateField ItemStyle-Width="60px" HeaderText="From">
                                                                        <ItemTemplate>
                                                                            <asp:Label ID="lblpfrom" runat="server" Text='<%# Bind("pperiodfrom")%>'></asp:Label>
                                                                        </ItemTemplate>
                                                                        <EditItemTemplate>
                                                                            <asp:DropDownList ID="cbopfrom" runat="server" CssClass="form-control input-sm" Width="80px" SelectedValue='<%# Bind("pperiodto") %>'>
                                                                                <asp:ListItem></asp:ListItem>
																				<asp:ListItem>2024</asp:ListItem>
                                                                                <asp:ListItem>2023</asp:ListItem>
                                                                                <asp:ListItem>2022</asp:ListItem>
                                                                                <asp:ListItem>2021</asp:ListItem>
                                                                                <asp:ListItem>2020</asp:ListItem>
                                                                                <asp:ListItem>2019</asp:ListItem>
                                                                                <asp:ListItem>2018</asp:ListItem>
                                                                                <asp:ListItem>2017</asp:ListItem>
                                                                                <asp:ListItem>2016</asp:ListItem>
                                                                                <asp:ListItem>2015</asp:ListItem>
                                                                                <asp:ListItem>2014</asp:ListItem>
                                                                                <asp:ListItem>2013</asp:ListItem>
                                                                                <asp:ListItem>2012</asp:ListItem>
                                                                                <asp:ListItem>2011</asp:ListItem>
                                                                                <asp:ListItem>2010</asp:ListItem>
                                                                                <asp:ListItem>2009</asp:ListItem>
                                                                                <asp:ListItem>2008</asp:ListItem>
                                                                                <asp:ListItem>2007</asp:ListItem>
                                                                                <asp:ListItem>2006</asp:ListItem>
                                                                                <asp:ListItem>2005</asp:ListItem>
                                                                                <asp:ListItem>2004</asp:ListItem>
                                                                                <asp:ListItem>2003</asp:ListItem>
                                                                                <asp:ListItem>2002</asp:ListItem>
                                                                                <asp:ListItem>2001</asp:ListItem>
                                                                                <asp:ListItem>2000</asp:ListItem>
                                                                                <asp:ListItem>1999</asp:ListItem>
                                                                                <asp:ListItem>1998</asp:ListItem>
                                                                                <asp:ListItem>1997</asp:ListItem>
                                                                                <asp:ListItem>1996</asp:ListItem>
                                                                                <asp:ListItem>1995</asp:ListItem>
                                                                                <asp:ListItem>1994</asp:ListItem>
                                                                                <asp:ListItem>1993</asp:ListItem>
                                                                                <asp:ListItem>1992</asp:ListItem>
                                                                                <asp:ListItem>1991</asp:ListItem>
                                                                                <asp:ListItem>1990</asp:ListItem>
                                                                                <asp:ListItem>1989</asp:ListItem>
                                                                                <asp:ListItem>1988</asp:ListItem>
                                                                                <asp:ListItem>1987</asp:ListItem>
                                                                                <asp:ListItem>1986</asp:ListItem>
                                                                                <asp:ListItem>1985</asp:ListItem>
                                                                                <asp:ListItem>1984</asp:ListItem>
                                                                                <asp:ListItem>1983</asp:ListItem>
                                                                                <asp:ListItem>1982</asp:ListItem>
                                                                                <asp:ListItem>1981</asp:ListItem>
                                                                                <asp:ListItem>1980</asp:ListItem>
                                                                                <asp:ListItem>1979</asp:ListItem>
                                                                                <asp:ListItem>1978</asp:ListItem>
                                                                                <asp:ListItem>1977</asp:ListItem>
                                                                                <asp:ListItem>1976</asp:ListItem>
                                                                                <asp:ListItem>1975</asp:ListItem>
                                                                                <asp:ListItem>1974</asp:ListItem>
                                                                                <asp:ListItem>1973</asp:ListItem>
                                                                                <asp:ListItem>1972</asp:ListItem>
                                                                                <asp:ListItem>1971</asp:ListItem>
                                                                                <asp:ListItem>1970</asp:ListItem>
                                                                                </asp:DropDownList>
                                                                            <asp:RequiredFieldValidator ID="reqpfrom" ControlToValidate="cbopfrom" ValidationGroup="ProfessionalEdit" runat="server" ErrorMessage="This field is required." Font-Size=".9em" ForeColor="#C10000"></asp:RequiredFieldValidator>
                                                                        </EditItemTemplate>
                                                                        <FooterTemplate>
                                                                            <asp:DropDownList ID="cbopfrom" runat="server" CssClass="form-control input-sm" Width="80px">
                                                                                <asp:ListItem></asp:ListItem>
																				<asp:ListItem>2024</asp:ListItem>
                                                                                <asp:ListItem>2023</asp:ListItem>
                                                                                <asp:ListItem>2022</asp:ListItem>
                                                                                <asp:ListItem>2021</asp:ListItem>
                                                                                <asp:ListItem>2020</asp:ListItem>
                                                                                <asp:ListItem>2019</asp:ListItem>
                                                                                <asp:ListItem>2018</asp:ListItem>
                                                                                <asp:ListItem>2017</asp:ListItem>
                                                                                <asp:ListItem>2016</asp:ListItem>
                                                                                <asp:ListItem>2015</asp:ListItem>
                                                                                <asp:ListItem>2014</asp:ListItem>
                                                                                <asp:ListItem>2013</asp:ListItem>
                                                                                <asp:ListItem>2012</asp:ListItem>
                                                                                <asp:ListItem>2011</asp:ListItem>
                                                                                <asp:ListItem>2010</asp:ListItem>
                                                                                <asp:ListItem>2009</asp:ListItem>
                                                                                <asp:ListItem>2008</asp:ListItem>
                                                                                <asp:ListItem>2007</asp:ListItem>
                                                                                <asp:ListItem>2006</asp:ListItem>
                                                                                <asp:ListItem>2005</asp:ListItem>
                                                                                <asp:ListItem>2004</asp:ListItem>
                                                                                <asp:ListItem>2003</asp:ListItem>
                                                                                <asp:ListItem>2002</asp:ListItem>
                                                                                <asp:ListItem>2001</asp:ListItem>
                                                                                <asp:ListItem>2000</asp:ListItem>
                                                                                <asp:ListItem>1999</asp:ListItem>
                                                                                <asp:ListItem>1998</asp:ListItem>
                                                                                <asp:ListItem>1997</asp:ListItem>
                                                                                <asp:ListItem>1996</asp:ListItem>
                                                                                <asp:ListItem>1995</asp:ListItem>
                                                                                <asp:ListItem>1994</asp:ListItem>
                                                                                <asp:ListItem>1993</asp:ListItem>
                                                                                <asp:ListItem>1992</asp:ListItem>
                                                                                <asp:ListItem>1991</asp:ListItem>
                                                                                <asp:ListItem>1990</asp:ListItem>
                                                                                <asp:ListItem>1989</asp:ListItem>
                                                                                <asp:ListItem>1988</asp:ListItem>
                                                                                <asp:ListItem>1987</asp:ListItem>
                                                                                <asp:ListItem>1986</asp:ListItem>
                                                                                <asp:ListItem>1985</asp:ListItem>
                                                                                <asp:ListItem>1984</asp:ListItem>
                                                                                <asp:ListItem>1983</asp:ListItem>
                                                                                <asp:ListItem>1982</asp:ListItem>
                                                                                <asp:ListItem>1981</asp:ListItem>
                                                                                <asp:ListItem>1980</asp:ListItem>
                                                                                <asp:ListItem>1979</asp:ListItem>
                                                                                <asp:ListItem>1978</asp:ListItem>
                                                                                <asp:ListItem>1977</asp:ListItem>
                                                                                <asp:ListItem>1976</asp:ListItem>
                                                                                <asp:ListItem>1975</asp:ListItem>
                                                                                <asp:ListItem>1974</asp:ListItem>
                                                                                <asp:ListItem>1973</asp:ListItem>
                                                                                <asp:ListItem>1972</asp:ListItem>
                                                                                <asp:ListItem>1971</asp:ListItem>
                                                                                <asp:ListItem>1970</asp:ListItem>
                                                                                </asp:DropDownList>
                                                                            <asp:RequiredFieldValidator ID="reqpfrom" ControlToValidate="cbopfrom" ValidationGroup="ProfessionalInsert" runat="server" ErrorMessage="This field is required." Font-Size=".9em" ForeColor="#C10000"></asp:RequiredFieldValidator>
                                                                        </FooterTemplate>
                                                                    </asp:TemplateField>
                                                                    <asp:TemplateField ItemStyle-Width="60px" HeaderText="To">
                                                                        <ItemTemplate>
                                                                            <asp:Label ID="lblpto" runat="server" Text='<%# Bind("pperiodto")%>'></asp:Label>
                                                                        </ItemTemplate>
                                                                        <EditItemTemplate>
                                                                            <asp:DropDownList ID="cbopto" runat="server" CssClass="form-control input-sm" Width="80px" SelectedValue='<%# Bind("pperiodto") %>'>
                                                                                <asp:ListItem></asp:ListItem>
																				<asp:ListItem>2024</asp:ListItem>
                                                                                <asp:ListItem>2023</asp:ListItem>
                                                                                <asp:ListItem>2022</asp:ListItem>
                                                                                <asp:ListItem>2021</asp:ListItem>
                                                                                <asp:ListItem>2020</asp:ListItem>
                                                                                <asp:ListItem>2019</asp:ListItem>
                                                                                <asp:ListItem>2018</asp:ListItem>
                                                                                <asp:ListItem>2017</asp:ListItem>
                                                                                <asp:ListItem>2016</asp:ListItem>
                                                                                <asp:ListItem>2015</asp:ListItem>
                                                                                <asp:ListItem>2014</asp:ListItem>
                                                                                <asp:ListItem>2013</asp:ListItem>
                                                                                <asp:ListItem>2012</asp:ListItem>
                                                                                <asp:ListItem>2011</asp:ListItem>
                                                                                <asp:ListItem>2010</asp:ListItem>
                                                                                <asp:ListItem>2009</asp:ListItem>
                                                                                <asp:ListItem>2008</asp:ListItem>
                                                                                <asp:ListItem>2007</asp:ListItem>
                                                                                <asp:ListItem>2006</asp:ListItem>
                                                                                <asp:ListItem>2005</asp:ListItem>
                                                                                <asp:ListItem>2004</asp:ListItem>
                                                                                <asp:ListItem>2003</asp:ListItem>
                                                                                <asp:ListItem>2002</asp:ListItem>
                                                                                <asp:ListItem>2001</asp:ListItem>
                                                                                <asp:ListItem>2000</asp:ListItem>
                                                                                <asp:ListItem>1999</asp:ListItem>
                                                                                <asp:ListItem>1998</asp:ListItem>
                                                                                <asp:ListItem>1997</asp:ListItem>
                                                                                <asp:ListItem>1996</asp:ListItem>
                                                                                <asp:ListItem>1995</asp:ListItem>
                                                                                <asp:ListItem>1994</asp:ListItem>
                                                                                <asp:ListItem>1993</asp:ListItem>
                                                                                <asp:ListItem>1992</asp:ListItem>
                                                                                <asp:ListItem>1991</asp:ListItem>
                                                                                <asp:ListItem>1990</asp:ListItem>
                                                                                <asp:ListItem>1989</asp:ListItem>
                                                                                <asp:ListItem>1988</asp:ListItem>
                                                                                <asp:ListItem>1987</asp:ListItem>
                                                                                <asp:ListItem>1986</asp:ListItem>
                                                                                <asp:ListItem>1985</asp:ListItem>
                                                                                <asp:ListItem>1984</asp:ListItem>
                                                                                <asp:ListItem>1983</asp:ListItem>
                                                                                <asp:ListItem>1982</asp:ListItem>
                                                                                <asp:ListItem>1981</asp:ListItem>
                                                                                <asp:ListItem>1980</asp:ListItem>
                                                                                <asp:ListItem>1979</asp:ListItem>
                                                                                <asp:ListItem>1978</asp:ListItem>
                                                                                <asp:ListItem>1977</asp:ListItem>
                                                                                <asp:ListItem>1976</asp:ListItem>
                                                                                <asp:ListItem>1975</asp:ListItem>
                                                                                <asp:ListItem>1974</asp:ListItem>
                                                                                <asp:ListItem>1973</asp:ListItem>
                                                                                <asp:ListItem>1972</asp:ListItem>
                                                                                <asp:ListItem>1971</asp:ListItem>
                                                                                <asp:ListItem>1970</asp:ListItem>
                                                                            </asp:DropDownList>
                                                                            <asp:RequiredFieldValidator ID="reqpto" ControlToValidate="cbopto" ValidationGroup="ProfessionalEdit" runat="server" ErrorMessage="This field is required." Font-Size=".9em" ForeColor="#C10000"></asp:RequiredFieldValidator>
                                                                        </EditItemTemplate>
                                                                        <FooterTemplate>
                                                                            <asp:DropDownList ID="cbopto" runat="server" CssClass="form-control input-sm" Width="80px">
                                                                                <asp:ListItem></asp:ListItem>
																				<asp:ListItem>2024</asp:ListItem>
                                                                                <asp:ListItem>2023</asp:ListItem>
                                                                                <asp:ListItem>2022</asp:ListItem>
                                                                                <asp:ListItem>2021</asp:ListItem>
                                                                                <asp:ListItem>2020</asp:ListItem>
                                                                                <asp:ListItem>2019</asp:ListItem>
                                                                                <asp:ListItem>2018</asp:ListItem>
                                                                                <asp:ListItem>2017</asp:ListItem>
                                                                                <asp:ListItem>2016</asp:ListItem>
                                                                                <asp:ListItem>2015</asp:ListItem>
                                                                                <asp:ListItem>2014</asp:ListItem>
                                                                                <asp:ListItem>2013</asp:ListItem>
                                                                                <asp:ListItem>2012</asp:ListItem>
                                                                                <asp:ListItem>2011</asp:ListItem>
                                                                                <asp:ListItem>2010</asp:ListItem>
                                                                                <asp:ListItem>2009</asp:ListItem>
                                                                                <asp:ListItem>2008</asp:ListItem>
                                                                                <asp:ListItem>2007</asp:ListItem>
                                                                                <asp:ListItem>2006</asp:ListItem>
                                                                                <asp:ListItem>2005</asp:ListItem>
                                                                                <asp:ListItem>2004</asp:ListItem>
                                                                                <asp:ListItem>2003</asp:ListItem>
                                                                                <asp:ListItem>2002</asp:ListItem>
                                                                                <asp:ListItem>2001</asp:ListItem>
                                                                                <asp:ListItem>2000</asp:ListItem>
                                                                                <asp:ListItem>1999</asp:ListItem>
                                                                                <asp:ListItem>1998</asp:ListItem>
                                                                                <asp:ListItem>1997</asp:ListItem>
                                                                                <asp:ListItem>1996</asp:ListItem>
                                                                                <asp:ListItem>1995</asp:ListItem>
                                                                                <asp:ListItem>1994</asp:ListItem>
                                                                                <asp:ListItem>1993</asp:ListItem>
                                                                                <asp:ListItem>1992</asp:ListItem>
                                                                                <asp:ListItem>1991</asp:ListItem>
                                                                                <asp:ListItem>1990</asp:ListItem>
                                                                                <asp:ListItem>1989</asp:ListItem>
                                                                                <asp:ListItem>1988</asp:ListItem>
                                                                                <asp:ListItem>1987</asp:ListItem>
                                                                                <asp:ListItem>1986</asp:ListItem>
                                                                                <asp:ListItem>1985</asp:ListItem>
                                                                                <asp:ListItem>1984</asp:ListItem>
                                                                                <asp:ListItem>1983</asp:ListItem>
                                                                                <asp:ListItem>1982</asp:ListItem>
                                                                                <asp:ListItem>1981</asp:ListItem>
                                                                                <asp:ListItem>1980</asp:ListItem>
                                                                                <asp:ListItem>1979</asp:ListItem>
                                                                                <asp:ListItem>1978</asp:ListItem>
                                                                                <asp:ListItem>1977</asp:ListItem>
                                                                                <asp:ListItem>1976</asp:ListItem>
                                                                                <asp:ListItem>1975</asp:ListItem>
                                                                                <asp:ListItem>1974</asp:ListItem>
                                                                                <asp:ListItem>1973</asp:ListItem>
                                                                                <asp:ListItem>1972</asp:ListItem>
                                                                                <asp:ListItem>1971</asp:ListItem>
                                                                                <asp:ListItem>1970</asp:ListItem>
                                                                            </asp:DropDownList>
                                                                            <asp:RequiredFieldValidator ID="reqpto" ControlToValidate="cbopto" ValidationGroup="ProfessionalInsert" runat="server" ErrorMessage="This field is required." Font-Size=".9em" ForeColor="#C10000"></asp:RequiredFieldValidator>
                                                                        </FooterTemplate>
                                                                    </asp:TemplateField>
                                                                    
                                                                    <asp:CommandField ItemStyle-Width="50px" ShowEditButton="True" ValidationGroup="ProfessionalEdit" />
                                                                    <asp:TemplateField ItemStyle-Width="50px">
                                                                        <ItemTemplate>
                                                                            <asp:LinkButton ID="lnkRemove" runat="server" CommandArgument='<%# Bind("pid")%>' ValidationGroup="ProfessionalEdit" OnClientClick="return confirm('Are you sure you want to delete this row?')" Text="Delete" OnClick="ProfessionalDelete"></asp:LinkButton>
                                                                        </ItemTemplate>
                                                                        <FooterTemplate>
                                                                            <asp:Button ID="btnAdd" runat="server" Text="Add" ValidationGroup="ProfessionalInsert" Width="50px" CssClass="btn btn-info btn-sm" OnClick="ProfessionalAdd" />
                                                                        </FooterTemplate>
                                                                    </asp:TemplateField>
                                                                </Columns>
                                                             </asp:GridView>
                                                        </ContentTemplate>
                                                    </asp:UpdatePanel>
                                                    
												
												</div>
                                                <div id="w2-employee" class="tab-pane">
													<div class="form-group">
														<label class="col-sm-2 control-label">Experience Overview (max 500 characters)</label>
														<div class="col-sm-6">
															<%--<asp:TextBox ID="txtexperienceoverview" runat="server" CssClass="form-control input-sm" TextMode="MultiLine" data-plugin-maxlength maxlength="300" Height="100px" required></asp:TextBox>--%>
                                                            <textarea class="form-control" id="txtexperienceoverview" runat="server" rows="5" data-plugin-maxlength maxlength="500" required></textarea>
														</div>
                                                        
														<div class="col-sm-3">
                                                        <asp:UpdatePanel ID="UpdatePanel6" runat="server">
                                                            <ContentTemplate>
                                                                <label>Total Experience (Y-M)</label><br />
                                                            <asp:DropDownList ID="cbototalexperienceyear" runat="server">
                                                                <asp:ListItem>0</asp:ListItem>
                                                                <asp:ListItem>1</asp:ListItem>
                                                                <asp:ListItem>2</asp:ListItem>
                                                                <asp:ListItem>3</asp:ListItem>
                                                                <asp:ListItem>4</asp:ListItem>
                                                                <asp:ListItem>5</asp:ListItem>
                                                                <asp:ListItem>6</asp:ListItem>
                                                                <asp:ListItem>7</asp:ListItem>
                                                                <asp:ListItem>8</asp:ListItem>
                                                                <asp:ListItem>9</asp:ListItem>
                                                                <asp:ListItem>10</asp:ListItem>
                                                                <asp:ListItem>11</asp:ListItem>
                                                                <asp:ListItem>12</asp:ListItem>
                                                                <asp:ListItem>13</asp:ListItem>
                                                                <asp:ListItem>14</asp:ListItem>
                                                                <asp:ListItem>15</asp:ListItem>
                                                                <asp:ListItem>16</asp:ListItem>
                                                                <asp:ListItem>17</asp:ListItem>
                                                                <asp:ListItem>18</asp:ListItem>
                                                                <asp:ListItem>19</asp:ListItem>
                                                                <asp:ListItem>20</asp:ListItem>
                                                                <asp:ListItem>21</asp:ListItem>
                                                                <asp:ListItem>22</asp:ListItem>
                                                                <asp:ListItem>23</asp:ListItem>
                                                                <asp:ListItem>24</asp:ListItem>
                                                                <asp:ListItem>25</asp:ListItem>
                                                                <asp:ListItem>26</asp:ListItem>
                                                                <asp:ListItem>27</asp:ListItem>
                                                                <asp:ListItem>28</asp:ListItem>
                                                                <asp:ListItem>29</asp:ListItem>
                                                                <asp:ListItem>30</asp:ListItem>
                                                                <asp:ListItem>31</asp:ListItem>
                                                                <asp:ListItem>32</asp:ListItem>
                                                                <asp:ListItem>33</asp:ListItem>
                                                                <asp:ListItem>34</asp:ListItem>
                                                                <asp:ListItem>35</asp:ListItem>
                                                                <asp:ListItem>36</asp:ListItem>
                                                                <asp:ListItem>37</asp:ListItem>
                                                                <asp:ListItem>38</asp:ListItem>
                                                                <asp:ListItem>39</asp:ListItem>
                                                                <asp:ListItem>40</asp:ListItem>
                                                                <asp:ListItem>41</asp:ListItem>
                                                                <asp:ListItem>42</asp:ListItem>
                                                                <asp:ListItem>43</asp:ListItem>
                                                                <asp:ListItem>44</asp:ListItem>
                                                                <asp:ListItem>45</asp:ListItem>
                                                                <asp:ListItem>46</asp:ListItem>
                                                                <asp:ListItem>47</asp:ListItem>
                                                                <asp:ListItem>48</asp:ListItem>
                                                                <asp:ListItem>49</asp:ListItem>
                                                                <asp:ListItem>50</asp:ListItem>
                                                            </asp:DropDownList>
                                                            <asp:DropDownList ID="cbototalexperiencemonth" runat="server">
                                                                <asp:ListItem>0</asp:ListItem>
                                                                <asp:ListItem>1</asp:ListItem>
                                                                <asp:ListItem>2</asp:ListItem>
                                                                <asp:ListItem>3</asp:ListItem>
                                                                <asp:ListItem>4</asp:ListItem>
                                                                <asp:ListItem>5</asp:ListItem>
                                                                <asp:ListItem>6</asp:ListItem>
                                                                <asp:ListItem>7</asp:ListItem>
                                                                <asp:ListItem>8</asp:ListItem>
                                                                <asp:ListItem>9</asp:ListItem>
                                                                <asp:ListItem>10</asp:ListItem>
                                                                <asp:ListItem>11</asp:ListItem>
                                                                <asp:ListItem>12</asp:ListItem>
                                                            </asp:DropDownList>
                                                            <br />
                                                            <asp:CheckBox ID="chkrelevant" runat="server" Text="Relevant Experience Same!" Checked="true" AutoPostBack="true" OnCheckedChanged="chkrelevant_OnCheckedChanged"/>
                                                            <br />
                                                                <asp:Label ID="lblrelevantexperience" runat="server">Relevant Experience (Y-M)</asp:Label><br />
                                                            <asp:DropDownList ID="cborelevantexperienceyear" runat="server">
                                                                <asp:ListItem>0</asp:ListItem>
                                                                <asp:ListItem>1</asp:ListItem>
                                                                <asp:ListItem>2</asp:ListItem>
                                                                <asp:ListItem>3</asp:ListItem>
                                                                <asp:ListItem>4</asp:ListItem>
                                                                <asp:ListItem>5</asp:ListItem>
                                                                <asp:ListItem>6</asp:ListItem>
                                                                <asp:ListItem>7</asp:ListItem>
                                                                <asp:ListItem>8</asp:ListItem>
                                                                <asp:ListItem>9</asp:ListItem>
                                                                <asp:ListItem>10</asp:ListItem>
                                                                <asp:ListItem>11</asp:ListItem>
                                                                <asp:ListItem>12</asp:ListItem>
                                                                <asp:ListItem>13</asp:ListItem>
                                                                <asp:ListItem>14</asp:ListItem>
                                                                <asp:ListItem>15</asp:ListItem>
                                                                <asp:ListItem>16</asp:ListItem>
                                                                <asp:ListItem>17</asp:ListItem>
                                                                <asp:ListItem>18</asp:ListItem>
                                                                <asp:ListItem>19</asp:ListItem>
                                                                <asp:ListItem>20</asp:ListItem>
                                                                <asp:ListItem>21</asp:ListItem>
                                                                <asp:ListItem>22</asp:ListItem>
                                                                <asp:ListItem>23</asp:ListItem>
                                                                <asp:ListItem>24</asp:ListItem>
                                                                <asp:ListItem>25</asp:ListItem>
                                                                <asp:ListItem>26</asp:ListItem>
                                                                <asp:ListItem>27</asp:ListItem>
                                                                <asp:ListItem>28</asp:ListItem>
                                                                <asp:ListItem>29</asp:ListItem>
                                                                <asp:ListItem>30</asp:ListItem>
                                                                <asp:ListItem>31</asp:ListItem>
                                                                <asp:ListItem>32</asp:ListItem>
                                                                <asp:ListItem>33</asp:ListItem>
                                                                <asp:ListItem>34</asp:ListItem>
                                                                <asp:ListItem>35</asp:ListItem>
                                                                <asp:ListItem>36</asp:ListItem>
                                                                <asp:ListItem>37</asp:ListItem>
                                                                <asp:ListItem>38</asp:ListItem>
                                                                <asp:ListItem>39</asp:ListItem>
                                                                <asp:ListItem>40</asp:ListItem>
                                                                <asp:ListItem>41</asp:ListItem>
                                                                <asp:ListItem>42</asp:ListItem>
                                                                <asp:ListItem>43</asp:ListItem>
                                                                <asp:ListItem>44</asp:ListItem>
                                                                <asp:ListItem>45</asp:ListItem>
                                                                <asp:ListItem>46</asp:ListItem>
                                                                <asp:ListItem>47</asp:ListItem>
                                                                <asp:ListItem>48</asp:ListItem>
                                                                <asp:ListItem>49</asp:ListItem>
                                                                <asp:ListItem>50</asp:ListItem>
                                                            </asp:DropDownList>
                                                            <asp:DropDownList ID="cborelevantexperiencemonth" runat="server">
                                                                <asp:ListItem>0</asp:ListItem>
                                                                <asp:ListItem>1</asp:ListItem>
                                                                <asp:ListItem>2</asp:ListItem>
                                                                <asp:ListItem>3</asp:ListItem>
                                                                <asp:ListItem>4</asp:ListItem>
                                                                <asp:ListItem>5</asp:ListItem>
                                                                <asp:ListItem>6</asp:ListItem>
                                                                <asp:ListItem>7</asp:ListItem>
                                                                <asp:ListItem>8</asp:ListItem>
                                                                <asp:ListItem>9</asp:ListItem>
                                                                <asp:ListItem>10</asp:ListItem>
                                                                <asp:ListItem>11</asp:ListItem>
                                                                <asp:ListItem>12</asp:ListItem>
                                                            </asp:DropDownList>
                                                            </ContentTemplate>
                                                        </asp:UpdatePanel>
                                                            
														</div>

													</div>
                                                    <hr />
                                                    <asp:UpdatePanel ID="UpdatePanel4" runat="server">
                                                        <ContentTemplate>
                                                            <div class="form-group">
                                                            <asp:Label ID="lblemp" runat="server" Visible="false"></asp:Label>
                                                        
														    <div class="col-sm-2">
                                                                <label>Organization</label>
															    <asp:TextBox ID="txtorganization" runat="server" CssClass="form-control input-sm"></asp:TextBox>
                                                                <asp:RequiredFieldValidator ID="reqorganization" ControlToValidate="txtorganization" ValidationGroup="addemployment" runat="server" ErrorMessage="This field is required." Font-Size=".9em" ForeColor="#C10000"></asp:RequiredFieldValidator>
														    </div>
                                                        
														    <div class="col-sm-2">
                                                                <label>Position Held</label>
															    <asp:TextBox ID="txtpositionheld" runat="server" CssClass="form-control input-sm"></asp:TextBox>
                                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ControlToValidate="txtpositionheld" ValidationGroup="addemployment" runat="server" ErrorMessage="This field is required." Font-Size=".9em" ForeColor="#C10000"></asp:RequiredFieldValidator>
														    </div>

                                                             <div class="col-sm-2">
                                                                <label>From *</label>
                                                                <div class="input-group">
														            <span class="input-group-addon">
															            <i class="fa fa-calendar"></i>
														            </span>
														            <%--<input type="text" data-plugin-datepicker class="form-control">--%>
                                                                    <asp:TextBox ID="txtfrom" runat="server" data-plugin-datepicker CssClass="form-control input-sm"></asp:TextBox>
                                                                    
													            </div>
                                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" ControlToValidate="txtfrom" ValidationGroup="addemployment" runat="server" ErrorMessage="This field is required." Font-Size=".9em" ForeColor="#C10000"></asp:RequiredFieldValidator>
														    </div>
                                                                
														    <div class="col-sm-2">
                                                                <label>To *</label>
                                                                <div class="input-group">
														            <span class="input-group-addon">
															            <i class="fa fa-calendar"></i>
														            </span>
                                                                    <asp:TextBox ID="txtto" runat="server" data-plugin-datepicker CssClass="form-control input-sm"></asp:TextBox>
                                                                    
													            </div>
                                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" ControlToValidate="txtto" ValidationGroup="addemployment" runat="server" ErrorMessage="This field is required." Font-Size=".9em" ForeColor="#C10000"></asp:RequiredFieldValidator>
														    </div>

                                                            <div class="col-sm-3">
                                                                <label>Reason for Leaving (max 50 characters)</label>
															    <asp:TextBox ID="txtreasonforleaving" runat="server" CssClass="form-control input-sm" data-plugin-maxlength MaxLength="50"></asp:TextBox>
                                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" ControlToValidate="txtreasonforleaving" ValidationGroup="addemployment" runat="server" ErrorMessage="This field is required." Font-Size=".9em" ForeColor="#C10000"></asp:RequiredFieldValidator>
														    </div>
                                                            
                                                        </div>
                                                        
                                                        <div class="form-group">
														<div class="col-sm-2">
                                                                <label>Salary (PKR) *</label>
															    <asp:TextBox ID="txtsalary" runat="server" TextMode="Number" CssClass="form-control input-sm"></asp:TextBox>
                                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" ControlToValidate="txtsalary" ValidationGroup="addemployment" runat="server" ErrorMessage="This field is required." Font-Size=".9em" ForeColor="#C10000"></asp:RequiredFieldValidator>
														    </div>
														    
                                                                
                                                            <div class="col-sm-4">
                                                                <label>Key Responsibilities (max 200 characters)</label>
                                                                <asp:TextBox ID="txtkeyresponsibility" runat="server" CssClass="form-control input-sm" data-plugin-maxlength MaxLength="200"></asp:TextBox>
                                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" ControlToValidate="txtkeyresponsibility" ValidationGroup="addemployment" runat="server" ErrorMessage="This field is required." Font-Size=".9em" ForeColor="#C10000"></asp:RequiredFieldValidator>
                                                            </div>
                                                                
                                                            <div class="col-sm-2">
                                                                <label>Reference Person</label>
															    <asp:TextBox ID="txtreferenceperson" runat="server" CssClass="form-control input-sm"></asp:TextBox>
														    </div>
                                                            
                                                                

														    <div class="col-sm-2">
                                                                <label>Ref: Person Contact</label>
															    <asp:TextBox ID="txtpersoncontact" runat="server" CssClass="form-control input-sm"></asp:TextBox>
														    </div>
														   
                                                            <div class="col-sm-2">
                                                                <label></label><br />
                                                                <asp:Button ID="cmdemploymentadd" runat="server" Text="Add" ValidationGroup="addemployment" CssClass="btn btn-success" OnClick="cmdemploymentadd_Click" />
                                                                <asp:Button ID="cmdemployementcancel" runat="server" Text="Cancel" CssClass="btn btn-success" OnClick="cmdemploymentcancil_Click" />
                                                                </div>

													</div>

                                                        <asp:Repeater ID="rpemployee" onitemcommand="rpemployee_ItemCommand" runat="server">
                                                        <HeaderTemplate>
                                                        <table class="table table-bordered table-striped mb-none" id="datatable-default">
                                                        <thead>
                                                        <th>S.No</th>
                                                        <th>Organization</th>
                                                        <th>Position Held</th>
                                                            <th>From</th>
                                                            <th>To</th>
                                                            
                                                            <th>Reason for Leaving</th>
                                                            <th>Salary</th>
                                                            <th>Key Responsibilities</th>
                                                        <th>Reference</th>
                                                        <th>Contact</th>
                                                            <th>Action</th>
                                                        </thead>
                                                        <tbody>
                                                        </HeaderTemplate>
                                                        <ItemTemplate>
                                                        <tr>
                                                        <td><% srno = srno + 1; %><% =srno %></td>
                                                        <td><%# Eval("emporganization")%></td>
                                                        <td><%# Eval("emppositionheld")%> </td>
                                                        <td><%# Eval("empdurationfrom", "{0: dd/MM/yyyy}")%></td>
                                                        <td><%# Eval("empdurationto", "{0: dd/MM/yyyy}")%></td>
                                                        <td><%# Eval("empreasonforleaving")%></td>
                                                        <td><%# Eval("empsalary")%></td>
                                                        
                                                            <td><%# Eval("empkeyresponsibilities")%></td>
                                                            <td><%# Eval("empreferenceperson")%></td>
                                                        <td><%# Eval("emprerenecepersoncontactno")%></td>
                                                        
                                                        <td>
                                                            <asp:imagebutton id="imgBtnEdit" commandname="Edit" ValidationGroup="repeater" commandargument='<%#Eval("empid") %>' runat="server" imageurl="images/icon-edit.png"></asp:imagebutton>
                                                            <asp:imagebutton tooltip="Delete a record." ValidationGroup="repeater" onclientclick="javascript:return confirm('Are you sure to delete record?')" id="imgBtnDelete" commandname="Delete" commandargument='<%#Eval("empid") %>' runat="server" imageurl="images/icon-delete.png"></asp:imagebutton>
                                                        </td>
                                                        </tr>
                                                        </ItemTemplate>
                                                        <FooterTemplate>
                                                        </tbody>
                                                        </table>
                                                        </FooterTemplate>
                                                        </asp:Repeater>
                                                        </ContentTemplate>
                                                    </asp:UpdatePanel>
                                                        
												</div>
                                                <div id="w2-skill" class="tab-pane">
													<div class="form-group">
														<label class="col-sm-3 control-label">Key Acheivements and Skills.</label>
														<div class="col-sm-6">
                                                                <%--<asp:TextBox ID="txtsill" runat="server" CssClass="form-control input-sm" TextMode="MultiLine" MaxLength="300" Height="120px" required></asp:TextBox>--%>
                                                            <textarea class="form-control" id="txtsill" runat="server" rows="5" data-plugin-maxlength maxlength="300" required></textarea>
														</div>
													</div>
                                                    <div class="form-group">
														<label class="col-sm-3 control-label">Other Specializations</label>
														<div class="col-sm-6">
                                                                <%--<asp:TextBox ID="txtsill" runat="server" CssClass="form-control input-sm" TextMode="MultiLine" MaxLength="300" Height="120px" required></asp:TextBox>--%>
                                                            <textarea class="form-control" id="txtspecializations" runat="server" rows="5" data-plugin-maxlength maxlength="300" required></textarea>
														</div>
													</div>
													
												</div>

                                                    <div id="w2research" class="tab-pane" runat="server">
                                                        <div class="form-group">
														    <label class="col-sm-3 control-label">Total No. of Publications in HEC Recognized Journals</label>
														    <div class="col-sm-3">
                                                            <asp:TextBox ID="txttotalpub" runat="server" CssClass="form-control" TextMode="Number" required></asp:TextBox>
                                                                
														    </div>
                                                            <label class="col-sm-2 control-label">Publications in Last 5 Years</label>
														    <div class="col-sm-3">
                                                            <asp:TextBox ID="txttotalpubinfiveyears" runat="server" CssClass="form-control" TextMode="Number" required></asp:TextBox>
                                                                
														    </div>
													    </div>
                                                        <div class="form-group">
														    <label class="col-sm-3 control-label">No. of research publications where you are principal author</label>
														    <div class="col-sm-3">
                                                            <asp:TextBox ID="txttotalprincipalauthor" runat="server" CssClass="form-control" TextMode="Number" required></asp:TextBox>
                                                                
														    </div>
                                                            <label class="col-sm-2 control-label">Total Impact Factor</label>
														    <div class="col-sm-3">
                                                            <asp:TextBox ID="txttotalimpactfactor" runat="server" CssClass="form-control" TextMode="Number" required></asp:TextBox>
                                                                
														    </div>
													    </div>
                                                        
                                                        <div class="form-group">
														    <label class="col-sm-3 control-label">Citations</label>
														    <div class="col-sm-3">
                                                            <asp:TextBox ID="txttotalcitations" runat="server" CssClass="form-control" TextMode="Number" required></asp:TextBox>
                                                                
														    </div>
                                                            <label class="col-sm-2 control-label">Number of conferences</label>
														    <div class="col-sm-3">
                                                            <asp:TextBox ID="txttotalconferences" runat="server" CssClass="form-control" TextMode="Number" required></asp:TextBox>
                                                                
														    </div>
													    </div>
                                                        
                                                        <div class="form-group">
														    <label class="col-sm-3 control-label">Number of Books (if any)</label>
														    <div class="col-sm-3">
                                                            <asp:TextBox ID="txttotalbooks" runat="server" CssClass="form-control" TextMode="Number"></asp:TextBox>
														    </div>
                                                            <label class="col-sm-2 control-label">PhD Approved Supervisor (Yes/No)</label>
														    <div class="col-sm-3">
                                                                <asp:DropDownList ID="cbophdapproved" runat="server">
                                                                    <asp:ListItem></asp:ListItem>
                                                                    <asp:ListItem>YES</asp:ListItem>
                                                                    <asp:ListItem>NO</asp:ListItem>
                                                                </asp:DropDownList>
														    </div>
													    </div>
                                                        
                                                        <div class="form-group">
														    <label class="col-sm-3 control-label">PCD Registration No (For PhD Candidates)</label>
														    <div class="col-sm-3">
                                                                <asp:TextBox ID="txtpcdregistrationno" runat="server" CssClass="form-control"></asp:TextBox>
														    </div>
													    </div>

                                                        <div class="form-group">
														    <label class="col-sm-3 control-label">Remarks</label>
														    <div class="col-sm-3">
                                                                <textarea class="form-control" id="txtresearchremarks" runat="server" rows="5" data-plugin-maxlength maxlength="300"></textarea>
														    </div>
													    </div>

                                                    </div>

												<div id="w2-confirm" class="tab-pane">
                                                                    <asp:UpdatePanel ID="UpdatePanel5" runat="server">
                                                                        <ContentTemplate>
                                                                            <div class="form-group">
														                        <label class="col-sm-6 control-label" for="w2-email">Do you have any blood relation or close relative(s) working in The University of Lahore ?</label>
														                        <div class="col-sm-2">
                                                                                            <asp:DropDownList ID="cbouniversity" CssClass="form-control input-sm" runat="server" AutoPostBack="true" OnSelectedIndexChanged="cbouniversity_OnSelectedIndexChanged" required>
                                                                                                <asp:ListItem></asp:ListItem>
                                                                                                <asp:ListItem>NO</asp:ListItem>
                                                                                                <asp:ListItem>YES</asp:ListItem>
                                                                                            </asp:DropDownList>
                                                                                    <asp:RequiredFieldValidator ID="req1" runat="server" ControlToValidate="cbouniversity" ErrorMessage="This field is required." Font-Size=".9em" ForeColor="#C10000"></asp:RequiredFieldValidator>
														                        </div>
													                        </div>
                                                                            <div class="form-group" id="lbluniversityrelation" runat="server">
                                                                                    <label class="col-sm-1 control-label">Name</label>
														                            <div class="col-sm-2">
															                            <asp:TextBox ID="txtname" runat="server" CssClass="form-control input-sm"></asp:TextBox>
                                                                                        <asp:RequiredFieldValidator ID="reqtxtname" runat="server" ControlToValidate="txtname" ErrorMessage="This field is required." Font-Size=".9em" ForeColor="#C10000"></asp:RequiredFieldValidator>
														                            </div>
                                                                                    <label class="col-sm-1 control-label">Position</label>
														                            <div class="col-sm-2">
															                            <asp:TextBox ID="txtposition" runat="server" CssClass="form-control input-sm"></asp:TextBox>
                                                                                        <asp:RequiredFieldValidator ID="reqtxtposition" runat="server" ControlToValidate="txtposition" ErrorMessage="This field is required." Font-Size=".9em" ForeColor="#C10000"></asp:RequiredFieldValidator>
														                            </div>
                                                                                    <label class="col-sm-1 control-label">Department</label>
														                            <div class="col-sm-2">
															                            <asp:TextBox ID="txtdepartment" runat="server" CssClass="form-control input-sm"></asp:TextBox>
                                                                                        <asp:RequiredFieldValidator ID="reqtxtdepartment" runat="server" ControlToValidate="txtdepartment" ErrorMessage="This field is required." Font-Size=".9em" ForeColor="#C10000"></asp:RequiredFieldValidator>
														                            </div>
                                                                                    </div>
                                                                        </ContentTemplate>
                                                                    </asp:UpdatePanel>
                                                    
                                                   
                                                   
                                                    <hr />
													<div class="form-group">
														<div class="col-sm-12">
                                                            <p>I hereby confirm that all information provided by me in this application is accurate and complete and to the best of my knowlegde, nothing relevant has been concealed. I understand that if I am hired, this information will become a part of my official employment record. Any statement provided herein which proves to be untrue or misleading, will render the process void.</p>
                                                            <p>Furthermore, if discrepancies are highlighted at a later stage, the University retains the right to withdraw any offer made or dismissal at any time without any notice.</p>
                                                            <p>I authorize the University to contact eduational institutions, previous employers and other sources to verify the accuracy of the information contained in this application. I hereby release the university from any liability as a result of such contacts.</p>
                                                            
														</div>
                                                        
                                                        <div class="col-sm-8">
                                                             <p></p>
                                                        </div>
                                                        <div class="col-sm-8">
                                                            <script type="text/javascript">
                                                            function checkAgreement(source, args)
                                                            {                
                                                                var elem = document.getElementById('<%= chkAgree.ClientID %>');
                                                                if (elem.checked)
                                                                {
                                                                    args.IsValid = true;
                                                                }
                                                                else
                                                                {        
                                                                    args.IsValid = false;
                                                                }
                                                            }
                                                        </script>

                                                        <asp:CheckBox ID="chkAgree" runat="server" Checked="false" />
                                                        <asp:Label AssociatedControlID="chkAgree" runat="server">I have read, understood and by submission of this application, fully agreed with above statements.</asp:Label>
                                                        <asp:Label AssociatedControlID="chkAgree" runat="server"></asp:Label>
                                                        <br />
                                                        <asp:CustomValidator ID="chkAgreeValidator" runat="server" Display="Dynamic" ClientValidationFunction="checkAgreement" Font-Size="9pt" ForeColor="red">You must agree to the terms and conditions.</asp:CustomValidator>
                                                        </div>
													</div>
												</div>
                                                    
											</div>

                                        
									</div>
									<div class="panel-footer">
										<ul class="pager">
											<li class="previous disabled">
												<a><i class="fa fa-angle-left"></i> Previous</a>
											</li>
											<li class="finish hidden pull-right">
                                               <asp:LinkButton ID="lnkfinished" runat="server" OnClientClick="checkAgreement" OnClick="lnkfinished_Click">Finish</asp:LinkButton>
											</li>
											<li class="next">
												<a>Next <i class="fa fa-angle-right"></i></a>
											</li>
										</ul>
									</div>
                                    </form>
								</section>
							</div>
                        </div>
					<!-- end: page -->
                   
				</section>
                
			</div>
        <p class="text-center text-muted mt-md mb-md">&copy; Copyright 2023. All Rights Reserved.
                        <br />
                        <asp:Label ID="lblfeedback" runat="server">For any technical issue & feedback email us at webmaster@uol.edu.pk</asp:Label> 
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
        <%--<script src="assets/vendor/jquery-ui/jquery-ui.js"></script>	--%>	
        <script src="assets/vendor/jqueryui-touch-punch/jqueryui-touch-punch.js"></script>		
        <script src="assets/vendor/select2/js/select2.js"></script>		
        <script src="assets/vendor/bootstrap-multiselect/bootstrap-multiselect.js"></script>		
        <script src="assets/vendor/jquery-maskedinput/jquery.maskedinput.js"></script>		
        <script src="assets/vendor/bootstrap-tagsinput/bootstrap-tagsinput.js"></script>		
        <script src="assets/vendor/bootstrap-colorpicker/js/bootstrap-colorpicker.js"></script>		
        <script src="assets/vendor/bootstrap-timepicker/bootstrap-timepicker.js"></script>		
        <script src="assets/vendor/fuelux/js/spinner.js"></script>		
        <script src="assets/vendor/dropzone/dropzone.js"></script>		
        <script src="assets/vendor/bootstrap-markdown/js/markdown.js"></script>		
        <script src="assets/vendor/bootstrap-markdown/js/to-markdown.js"></script>		
        <script src="assets/vendor/bootstrap-markdown/js/bootstrap-markdown.js"></script>		
        <script src="assets/vendor/codemirror/lib/codemirror.js"></script>		
        <script src="assets/vendor/codemirror/addon/selection/active-line.js"></script>		
        <script src="assets/vendor/codemirror/addon/edit/matchbrackets.js"></script>		
        <script src="assets/vendor/codemirror/mode/javascript/javascript.js"></script>		
        <script src="assets/vendor/codemirror/mode/xml/xml.js"></script>		
        <script src="assets/vendor/codemirror/mode/htmlmixed/htmlmixed.js"></script>		
        <script src="assets/vendor/codemirror/mode/css/css.js"></script>		
        <script src="assets/vendor/summernote/summernote.js"></script>		
        <script src="assets/vendor/bootstrap-maxlength/bootstrap-maxlength.js"></script>		
        <script src="assets/vendor/bootstrap-confirmation/bootstrap-confirmation.js"></script>
		<script type="text/javascript">
        $(function () {
            $('#txtfrom').datepicker({
                format: "dd/mm/yyyy"
            });
            $('#txtto').datepicker({
                format: "dd/mm/yyyy"
            });
        });
    </script>
		<!-- Theme Base, Components and Settings -->
		<script src="assets/javascripts/theme.js"></script>
		
		<!-- Theme Custom -->
		<script src="assets/javascripts/theme.custom.js"></script>
		
		<!-- Theme Initialization Files -->
		<script src="assets/javascripts/theme.init.js"></script>
		<!-- Examples -->
		<script src="assets/javascripts/forms/examples.wizard.js"></script>
    <script type="text/javascript">
    //On Page Load.
    $(function () {
        SetDatePicker();
    });
 
    //On UpdatePanel Refresh.
    var prm = Sys.WebForms.PageRequestManager.getInstance();
    if (prm != null) {
        prm.add_endRequest(function (sender, e) {
            if (sender._postBackSettings.panelsToUpdate != null) {
                SetDatePicker();
            }
        });
    };
    function SetDatePicker() {
        $("[id$=txtfrom]").datepicker({
            format: "dd/mm/yyyy"
        });
        $("[id$=txtto]").datepicker({
            format: "dd/mm/yyyy"
        });
    }
</script>

                                                        
</body>
</html>
