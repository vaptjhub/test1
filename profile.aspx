<%@ Page Language="C#" AutoEventWireup="true" CodeFile="profile.aspx.cs" Inherits="profile" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml" class="boxed">
<head runat="server">
    <!-- Basic -->
		<meta charset="UTF-8"/>
		<title>Profile</title>
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

		<!-- Theme CSS -->
		<link rel="stylesheet" href="assets/stylesheets/theme.css" />

		<!-- Theme Custom CSS -->
		<link rel="stylesheet" href="assets/stylesheets/theme-custom.css"/>

		<!-- Head Libs -->
		<script src="assets/vendor/modernizr/modernizr.js"></script>	
    <style type="text/css">
        .mycheckbox td
        {
           width:300px;
        }

        .mycheckbox td label
        {
            padding-left:10px;
            line-height:30px;
            color:#000;
        }
       
       
        [type="checkbox"]{
          width:15px;
          height:15px;
          border:1px dashed #000;
        }

</style>	
</head>
<body>
    <form id="form1" runat="server">
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
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
				<!-- start: sidebar -->
				
				<!-- end: sidebar -->

				<section role="main" class="content-body">
					<header class="page-header">
						<h2>Profile</h2>
					
						<div class="right-wrapper pull-right">
							<ol class="breadcrumbs">
								<li>
									<a href="home" class="button">
                                       <button type="button" class="mb-xs mt-xs mr-xs btn btn-sm btn-default">Go to Home Page</button>
									</a>
								</li>
							</ol>
					
							<a class="sidebar-right-toggle"></a>
						</div>
					</header>

					<!-- start: page -->

					<div class="row">
						<div class="col-md-8 col-lg-12">
                            <%=displaymessage %>
                            <p></p>
							<div class="tabs">
								<ul class="nav nav-tabs tabs-primary">
                                    <li class="active">
										<a href="#personal" data-toggle="tab">Personal Information</a>
									</li>
									<li>
										<a href="#qualification" data-toggle="tab">Qualification</a>
									</li>
									<li>
										<a href="#professional" data-toggle="tab">Professional</a>
									</li>
                                    <li>
										<a href="#research" data-toggle="tab">Research & Publication</a>
									</li>
                                    <li>
										<a href="#employment" data-toggle="tab">Employment</a>
									</li>
                                    <li>
										<a href="#skills" data-toggle="tab">Skills & Specilizations</a>
									</li>
                                    <li>
										<a href="#email" data-toggle="tab">Email Alerts</a>
									</li>
								</ul>
								<div class="tab-content">
                                    <div id="personal" class="tab-pane active">
                                        <div class="row">
                                             <div class="col-md-8 col-lg-12">
                                                <div class="form-group">
								                    <div class="col-sm-3">
                                                        <asp:Label ID ="lblemail" runat="server" Visible="false"></asp:Label>
                                                        <label>Full Name (capital letters) *</label>
                                                        <asp:TextBox ID="txtfullname" CssClass="form-control" runat="server" text-uppercase required></asp:TextBox>
								                    </div>
								                    <div class="col-sm-3">
                                                        <label>Date of Birth *</label>
                                                        <div class="input-group">
								                        <span class="input-group-addon">
									                        <i class="fa fa-calendar"></i>
									                    </span>
                                                        <asp:TextBox ID="txtdob" data-plugin-datepicker CssClass="form-control input-sm" runat="server" required></asp:TextBox>
								                    </div>
								                    </div>
                                                    <div class="col-sm-2">
                                                        <label>Gender</label>
                                                        <asp:DropDownList ID="cbogender"  CssClass="form-control" runat="server" Width="100px" required>
                                                            <asp:ListItem></asp:ListItem>
                                                            <asp:ListItem>Male</asp:ListItem>
                                                            <asp:ListItem>Female</asp:ListItem>
                                                        </asp:DropDownList>
								                    </div>
                                                    <div class="col-sm-1-5">
                                                        <label>Marital Status</label>
                                                        <asp:DropDownList ID="cbomaritalstatus"  CssClass="form-control" runat="server" required>
                                                            <asp:ListItem></asp:ListItem>
                                                            <asp:ListItem>Un-Married</asp:ListItem>
                                                            <asp:ListItem>Married</asp:ListItem>
                                                        </asp:DropDownList>
								                    </div>
						                        </div>

                                                <div class="form-group">
    							                    <div class="col-sm-4">
                                                        <label>Father / Husband Name *</label>
                                                        <asp:TextBox ID="txtfathername" CssClass="form-control input-sm" runat="server" required></asp:TextBox>
								                    </div>
														
								                    <div class="col-sm-4">
                                                        <label>CNIC/Passport Number *</label>
                                                        <asp:TextBox ID="txtcnic" CssClass="form-control input-sm" runat="server" required></asp:TextBox>
								                    </div>
                                                    <div class="col-sm-4">
                                                        <label>Contact (Mobile)*</label>
                                                        <asp:TextBox ID="txtcontactno" CssClass="form-control input-sm" runat="server" required></asp:TextBox>
								                    </div>
							                    </div>

                                                <div class="form-group">
								                    <div class="col-sm-4">
                                                        <label>Address (for Correspondance) *</label>
                                                        <asp:TextBox ID="txtaddress" CssClass="form-control input-sm" runat="server" required></asp:TextBox>
								                    </div>
                                                    <div class="col-sm-4">
                                                        <label>Nationality *</label>
                                                        <asp:TextBox ID="txtnationality" CssClass="form-control input-sm" runat="server" required></asp:TextBox>
								                    </div>    
								                    <asp:UpdatePanel ID="UpdatePanel3" runat="server">
                                                        <ContentTemplate>
                                                                <div class="col-sm-4" id="changecity" runat="server">
                                                                    <label>City of Residence *</label>
                                                                <asp:TextBox ID="txtcityofresidence" runat="server" CssClass="form-control input-sm" ValidationGroup="changecity" ReadOnly></asp:TextBox>
                                                                <asp:LinkButton ID="LinkButton1" runat="server" Font-Size="9pt" OnClick="LinkButton1_Click" ValidationGroup="changecity">Change</asp:LinkButton>
                                                                </div>
                                                                <div class="col-sm-4" id="insertcity" runat="server">
                                                                    <label>City of Residence *</label>
                                                                    <asp:DropDownList ID="cbocityofresidence" CssClass="form-control input-sm" runat="server" AutoPostBack="true"  OnSelectedIndexChanged="cbocityofresidence_SelectedIndexChanged" required></asp:DropDownList>
												                    <asp:TextBox ID="txtothers" CssClass="form-control input-sm" runat="server" required></asp:TextBox>
                                                                </div>
                                                        </ContentTemplate>
								                    </asp:UpdatePanel>
                                                                   
							                    </div>

                                                <div class="form-group">
                                                    <label class="col-sm-2 control-label">Current Salary (PKR)*</label>
								                    <div class="col-sm-2">
                                                        <asp:TextBox ID="txtcurrentsalary" TextMode="Number" CssClass="form-control input-sm" runat="server"></asp:TextBox>
								                    </div>
								                    <label class="col-sm-2 control-label">Expected Salary (PKR) *</label>
								                    <div class="col-sm-2">
                                                        <asp:TextBox ID="txtexpectedsalary" TextMode="Number" CssClass="form-control input-sm" runat="server"></asp:TextBox>
								                    </div>
                                                    <label class="col-sm-2 control-label">Notice Period (days)</label>
								                    <div class="col-sm-2">
                                                        <asp:DropDownList ID="cbonoticperiod" CssClass="form-control input-sm" runat="server" required>
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

                                                <div class="form-group">
                                                    <div class="col-md-3">
                                                        <label>Picture</label>
                                                        <asp:FileUpload ID="fupImage" runat="server"  />
                                                        <asp:Button runat="server" OnClick="btnPreview_Click"  ID="btnPhotoPreview" CausesValidation="false" Text="Upload" CssClass="mb-xs mt-xs mr-xs btn btn-sm btn-success"/> 
                                                        <br />
                                                        .jpg,.png, size maximum 1 MB<br />
                                                        <asp:Label ID="lblimageerror" runat="server" Font-Size="9pt" ForeColor="Red"></asp:Label>
                                                    </div>
                                                                
                                                    <div class="col-md-3">
                                                        <asp:Label ID="lblimagetitle1" runat="server" Visible="false"></asp:Label><br />
                                                        <asp:HyperLink ID="HyperLink1" runat="server" Target="_blank">Click to view image</asp:HyperLink><br />
                                                        <asp:Image ID="ImagePreview1" runat="server" />
                                                    </div>

                                                               
                                                    <div class="col-md-3">
                                                        <label>Upload CV</label>
                                                        <asp:FileUpload ID="fileuploadcv" runat="server"  />
                                                        <asp:Button runat="server" OnClick="btncv_Click" ID="btncv" CausesValidation="false" Text="Upload" CssClass="mb-xs mt-xs mr-xs btn btn-sm btn-success"/> <br />
                                                        .pdf,.doc,.docx, size maximum 1 MB <br />
                                                        <asp:Label ID="lblcverror" runat="server" Font-Size="9pt" ForeColor="Red"></asp:Label>
                                                    </div>
                                                                    
                                                    <div class="col-md-3">
                                                    <asp:Label ID="lblcv" runat="server" Visible="false"></asp:Label><br />
                                                    <asp:HyperLink ID="HyperLink2" runat="server" Target="_blank">Click to view CV</asp:HyperLink><br />
                                                    <asp:Image ID="ImagePreview2" runat="server" Width="50px" />
                                                    </div>
                                                                
                                                    </div>

                                                <footer class="panel-footer">
                                                        <asp:Button ID="cmdpersonal" runat="server" ValidationGroup="profile"  Text="Save" CssClass="btn btn-success"  OnClick="cmdpersonal_Click" />
                                               </footer>
							
						                    </div>
					                    </div>
                                    </div>
                                    <div id="qualification" class="tab-pane">
                                        <div class="row">
                                            <div class="col-md-8 col-lg-12">
                                            <h4>Academic Qualification</h4>
                                            <p>(Commerce with reverse chronological order)</p>
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
                                                            
                                                            <asp:TemplateField ItemStyle-Width="100px" HeaderText="University/Institute/Board">
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
                                                            <asp:TemplateField ItemStyle-Width="100px" HeaderText="Ciy">
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
                                                                    <asp:DropDownList ID="cboacademicfrom" runat="server" Width="80px" ValidationGroup="AcademicEdit" CssClass="form-control input-sm" SelectedValue='<%# Bind("qperiodfrom") %>'>
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
                                                                    <asp:DropDownList ID="cboacademicfrom" runat="server" CssClass="form-control input-sm" ValidationGroup="AcademicInsert" Width="80px">
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
                                                                    <asp:DropDownList ID="cboacademicto" runat="server" CssClass="form-control input-sm" Width="80px" ValidationGroup="AcademicEdit" SelectedValue='<%# Bind("qperiodto") %>'>
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
                                                                    <asp:DropDownList ID="cboacademicto" runat="server" CssClass="form-control input-sm" Width="80px" ValidationGroup="AcademicInsert">
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
                                                            <asp:TemplateField ItemStyle-Width="100px" HeaderText="%/Grade/Division">
                                                                <ItemTemplate>
                                                                    <asp:Label ID="lblmarks" runat="server" Text='<%# Bind("qmarks")%>'></asp:Label>
                                                                </ItemTemplate>
                                                                <EditItemTemplate>
                                                                    <asp:TextBox ID="txtmarks" runat="server" CssClass="form-control input-sm" Text='<%# Bind("qmarks")%>' ValidationGroup="AcademicEdit"></asp:TextBox>
                                                                    <asp:RequiredFieldValidator ID="reqtxtmarks" ControlToValidate="txtmarks" ValidationGroup="AcademicEdit" runat="server" ErrorMessage="This field is required." Font-Size=".9em" ForeColor="#C10000"></asp:RequiredFieldValidator>
                                                                </EditItemTemplate>
                                                                <FooterTemplate>
                                                                    <asp:TextBox ID="txtmarks" runat="server" CssClass="form-control input-sm" ValidationGroup="AcademicInsert"></asp:TextBox>
                                                                    <asp:RequiredFieldValidator ID="reqtxtmarks" ControlToValidate="txtmarks" ValidationGroup="AcademicInsert" runat="server" ErrorMessage="This field is required." Font-Size=".9em" ForeColor="#C10000"></asp:RequiredFieldValidator>
                                                                </FooterTemplate>
                                                            </asp:TemplateField>
                                                            <asp:CommandField ItemStyle-Width="50px" ShowEditButton="True" ValidationGroup="AcademicEdit" />
                                                            <asp:TemplateField ItemStyle-Width="50px">
                                                                <ItemTemplate>
                                                                    <asp:LinkButton ID="lnkRemove" runat="server" CommandArgument='<%# Bind("qid")%>'  Text="Delete"  ValidationGroup="AcademicEdit" OnClientClick="return confirm('Are you sure you want to delete this row?')" OnClick="AcademicDelete"></asp:LinkButton>
                                                                </ItemTemplate>
                                                                <FooterTemplate>
                                                                    <asp:Button ID="btnAdd" runat="server" Text="Save" ValidationGroup="AcademicInsert" Width="50px" CssClass="btn btn-info btn-sm" OnClick="AcademicAdd" />
                                                                </FooterTemplate>
                                                            </asp:TemplateField>
                                                        </Columns>
                                                    </asp:GridView>
                                                </ContentTemplate>
                                            </asp:UpdatePanel>
                                                <footer class="panel-footer">
                                                        
                                               </footer>
                                            </div>
                                        </div>
                                        
                                    </div>
                                    <div id="professional" class="tab-pane">
                                        <div class="row">
                                            <div class="col-md-8 col-lg-12">
                                                <h4>Professional Qualification</h4>
                                                <p>(Certifications, Trainings etc)</p>
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
                                                                            <asp:TextBox ID="txtinstitution" runat="server" Text='<%# Bind("pinstitution")%>' CssClass="form-control input-sm" ValidationGroup="ProfessionalEdit"></asp:TextBox>
                                                                            <asp:RequiredFieldValidator ID="reqinstitution" ControlToValidate="txtinstitution" ValidationGroup="ProfessionalEdit" runat="server" ErrorMessage="This field is required." Font-Size=".9em" ForeColor="#C10000"></asp:RequiredFieldValidator>
                                                                        </EditItemTemplate>
                                                                        <FooterTemplate>
                                                                            <asp:TextBox ID="txtinstitution" CssClass="form-control input-sm" runat="server" ValidationGroup="ProfessionalInsert"></asp:TextBox>
                                                                            <asp:RequiredFieldValidator ID="reqinstitution" ControlToValidate="txtinstitution" ValidationGroup="ProfessionalInsert" runat="server" ErrorMessage="This field is required." Font-Size=".9em" ForeColor="#C10000"></asp:RequiredFieldValidator>
                                                                        </FooterTemplate>
                                                                    </asp:TemplateField>
                                                                    <asp:TemplateField ItemStyle-Width="170px" HeaderText="Ciy">
                                                                        <ItemTemplate>
                                                                            <asp:Label ID="lblpcity" runat="server" Text='<%# Bind("pcity")%>'></asp:Label>
                                                                        </ItemTemplate>
                                                                        <EditItemTemplate>
                                                                            <asp:TextBox ID="txtpcity" runat="server" Text='<%# Bind("pcity")%>' CssClass="form-control input-sm" ValidationGroup="ProfessionalEdit"></asp:TextBox>
                                                                            <asp:RequiredFieldValidator ID="reqpcity" ControlToValidate="txtpcity" ValidationGroup="ProfessionalEdit" runat="server" ErrorMessage="This field is required." Font-Size=".9em" ForeColor="#C10000"></asp:RequiredFieldValidator>
                                                                        </EditItemTemplate>
                                                                        <FooterTemplate>
                                                                            <asp:TextBox ID="txtpcity" CssClass="form-control input-sm" runat="server" Text='<%# Bind("pcity")%>' ValidationGroup="ProfessionalInsert"></asp:TextBox>
                                                                            <asp:RequiredFieldValidator ID="reqpcity" ControlToValidate="txtpcity" ValidationGroup="ProfessionalInsert" runat="server" ErrorMessage="This field is required." Font-Size=".9em" ForeColor="#C10000"></asp:RequiredFieldValidator>
                                                                        </FooterTemplate>
                                                                    </asp:TemplateField>
                                                                    <asp:TemplateField ItemStyle-Width="160px" HeaderText="Country">
                                                                        <ItemTemplate>
                                                                            <asp:Label ID="lblpcountry" runat="server" Text='<%# Bind("pcountry")%>'></asp:Label>
                                                                        </ItemTemplate>
                                                                        <EditItemTemplate>
                                                                            <asp:TextBox ID="txtpcountry" runat="server" Text='<%# Bind("pcountry")%>' CssClass="form-control input-sm" ValidationGroup="ProfessionalEdit"></asp:TextBox>
                                                                            <asp:RequiredFieldValidator ID="reqpcountry" ControlToValidate="txtpcountry" ValidationGroup="ProfessionalEdit" runat="server" ErrorMessage="This field is required." Font-Size=".9em" ForeColor="#C10000"></asp:RequiredFieldValidator>
                                                                        </EditItemTemplate>
                                                                        <FooterTemplate>
                                                                            <asp:TextBox ID="txtpcountry" runat="server" CssClass="form-control input-sm" ValidationGroup="ProfessionalInsert"></asp:TextBox>
                                                                            <asp:RequiredFieldValidator ID="reqpcountry" ControlToValidate="txtpcountry" ValidationGroup="ProfessionalInsert" runat="server" ErrorMessage="This field is required." Font-Size=".9em" ForeColor="#C10000"></asp:RequiredFieldValidator>
                                                                        </FooterTemplate>
                                                                    </asp:TemplateField>
                                                                    <asp:TemplateField ItemStyle-Width="60px" HeaderText="From">
                                                                        <ItemTemplate>
                                                                            <asp:Label ID="lblpfrom" runat="server" Text='<%# Bind("pperiodfrom")%>'></asp:Label>
                                                                        </ItemTemplate>
                                                                        <EditItemTemplate>
                                                                            <asp:DropDownList ID="cbopfrom" runat="server" CssClass="form-control input-sm" Width="80px" ValidationGroup="ProfessionalEdit" SelectedValue='<%# Bind("pperiodto") %>'>
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
                                                                            <asp:DropDownList ID="cbopfrom" runat="server" CssClass="form-control input-sm" Width="80px" ValidationGroup="ProfessionalInsert">
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
                                                                            <asp:DropDownList ID="cbopto" runat="server" CssClass="form-control input-sm" Width="80px" ValidationGroup="ProfessionalEdit" SelectedValue='<%# Bind("pperiodto") %>'>
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
                                                                            <asp:DropDownList ID="cbopto" runat="server" CssClass="form-control input-sm" Width="80px" ValidationGroup="ProfessionalInsert">
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
                                                                            <asp:Button ID="btnAdd" runat="server" Text="Save" ValidationGroup="ProfessionalInsert" Width="50px" CssClass="btn btn-info btn-sm" OnClick="ProfessionalAdd" />
                                                                        </FooterTemplate>
                                                                    </asp:TemplateField>
                                                                </Columns>
                                                             </asp:GridView>
                                                        </ContentTemplate>
                                                    </asp:UpdatePanel>
                                                <footer class="panel-footer">
                                                       
                                               </footer>
                                            </div>
                                        </div>
                                    
								</div>
                                    <div id="employment" class="tab-pane">
                                        <div class="row">
                                            <asp:UpdatePanel ID="UpdatePanel4" runat="server">
                                                <ContentTemplate>
                                                    <div class="col-md-8 col-lg-12">
                                                 <div class="form-group">
														<label class="col-sm-2 control-label">Experience Overview (max 500 characters)</label>
														<div class="col-sm-6">
															<%--<asp:TextBox ID="txtexperienceoverview" runat="server" CssClass="form-control input-sm" TextMode="MultiLine" data-plugin-maxlength maxlength="300" Height="100px" required></asp:TextBox>--%>
                                                            <textarea class="form-control" id="txtexperienceoverview" runat="server" rows="5" data-plugin-maxlength maxlength="500" ValidationGroup="experience"></textarea>
                                                            <asp:RequiredFieldValidator ID="reqex" ControlToValidate="txtexperienceoverview" ValidationGroup="experience" runat="server" ErrorMessage="This field is required." Font-Size=".9em" ForeColor="#C10000"></asp:RequiredFieldValidator>
														</div>
                                                     <div class="col-sm-4">
                                                            <label>Total Experience (Y-M)</label>
                                                            <asp:DropDownList ID="cbototalexperienceyear" runat="server"></asp:DropDownList>
                                                            <asp:DropDownList ID="cbototalexperiencemonth" runat="server"></asp:DropDownList>
                                                        <br /><br />
                                                            <label style="width:135px;">Relevant Experience</label>
                                                            <asp:DropDownList ID="cborelevantexperienceyear" runat="server"></asp:DropDownList>
                                                            <asp:DropDownList ID="cborelevantexperiencemonth" runat="server"></asp:DropDownList>
                                                     </div>

													</div>
                                                 <footer class="panel-footer">
                                                     <label class="col-sm-2 control-label"></label>
                                                        <asp:Button ID="cmdexperience" runat="server" ValidationGroup="experience" Text="Save" CssClass="btn btn-success" OnClick="cmdexperience_Click" />
                                                     <asp:Label ID="lblemlploymenterr" runat="server" Font-Size="9pt" ForeColor="Red"></asp:Label>
							                    </footer>
                                                    <hr />
                                                        <div class="form-group">
                                                            <asp:Label ID="lblemp" runat="server" Visible="false"></asp:Label>
                                                        
														    <div class="col-sm-2">
                                                                <label>Organization</label>
															    <asp:TextBox ID="txtorganization" ValidationGroup="addemployment" runat="server" CssClass="form-control input-sm"></asp:TextBox>
                                                                <asp:RequiredFieldValidator ID="reqorganization" ControlToValidate="txtorganization" ValidationGroup="addemployment" runat="server" ErrorMessage="This field is required." Font-Size=".9em" ForeColor="#C10000"></asp:RequiredFieldValidator>
														    </div>
                                                        
														    <div class="col-sm-2">
                                                                <label>Position Held</label>
															    <asp:TextBox ID="txtpositionheld" runat="server" ValidationGroup="addemployment" CssClass="form-control input-sm"></asp:TextBox>
                                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ControlToValidate="txtpositionheld" ValidationGroup="addemployment" runat="server" ErrorMessage="This field is required." Font-Size=".9em" ForeColor="#C10000"></asp:RequiredFieldValidator>
														    </div>
                                                        
														    <div class="col-sm-2">
                                                                <label>Reference Person</label>
															    <asp:TextBox ID="txtreferenceperson" runat="server" ValidationGroup="addemployment" CssClass="form-control input-sm"></asp:TextBox>
														    </div>
                                                                
														    <div class="col-sm-2">
                                                                <label>Person Contact</label>
															    <asp:TextBox ID="txtpersoncontact" runat="server" ValidationGroup="addemployment" CssClass="form-control input-sm"></asp:TextBox>
														    </div>
                                                            
														    <div class="col-sm-2">
                                                                <label>Salary (PKR) *</label>
															    <asp:TextBox ID="txtsalary" runat="server" TextMode="Number" ValidationGroup="addemployment" CssClass="form-control input-sm"></asp:TextBox>
                                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" ControlToValidate="txtsalary" runat="server" ErrorMessage="This field is required." Font-Size=".9em" ForeColor="#C10000"></asp:RequiredFieldValidator>
														    </div>

                                                            <div class="col-sm-2">
                                                                <label></label><br />
                                                                <asp:Button ID="cmdemploymentadd" runat="server" Text="Add" ValidationGroup="addemployment" CssClass="btn btn-success" OnClick="cmdemploymentadd_Click" />
                                                                <%--<asp:Button ID="cmdemployementcancel" runat="server" Text="Cancel" ValidationGroup="employementcancel" CssClass="btn btn-success" OnClick="cmdemploymentcancil_Click" />--%>
                                                                </div>
                                                        </div>
                                                        
                                                        <div class="form-group">
														
														    <div class="col-sm-4">
                                                                <label>Reason for Leaving (in max 100 characters)</label>
															    <asp:TextBox ID="txtreasonforleaving" runat="server" ValidationGroup="addemployment" CssClass="form-control input-sm" data-plugin-maxlength MaxLength="100"></asp:TextBox>
                                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" ControlToValidate="txtreasonforleaving" runat="server" ErrorMessage="This field is required." Font-Size=".9em" ForeColor="#C10000"></asp:RequiredFieldValidator>
														    </div>
                                                                
                                                            <div class="col-sm-4">
                                                                <label>Key Responsibilities (in max 100 characters)</label>
                                                                <asp:TextBox ID="txtkeyresponsibility" runat="server" ValidationGroup="addemployment" CssClass="form-control input-sm" data-plugin-maxlength MaxLength="100"></asp:TextBox>
                                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" ControlToValidate="txtkeyresponsibility" runat="server" ErrorMessage="This field is required." Font-Size=".9em" ForeColor="#C10000"></asp:RequiredFieldValidator>
                                                            </div>
                                                                
														    <div class="col-sm-2">
                                                                <label>Duration From *</label>
                                                                <div class="input-group">
														            <span class="input-group-addon">
															            <i class="fa fa-calendar"></i>
														            </span>
														            <%--<input type="text" data-plugin-datepicker class="form-control">--%>
                                                                    <asp:TextBox ID="txtfrom" runat="server" data-plugin-datepicker CssClass="form-control input-sm" ValidationGroup="addemployment"></asp:TextBox>
                                                                    
													            </div>
                                                                <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator6" ControlToValidate="txtfrom" runat="server" ValidationGroup="addemployment" ErrorMessage="This field is required." Font-Size=".9em" ForeColor="#C10000"></asp:RequiredFieldValidator>--%>
														    </div>
                                                                
														    <div class="col-sm-2">
                                                                <label>Duration To *</label>
                                                                <div class="input-group">
														            <span class="input-group-addon">
															            <i class="fa fa-calendar"></i>
														            </span>
														    <%--<input type="text" data-plugin-datepicker class="form-control">--%>
                                                                    <asp:TextBox ID="txtto" runat="server" data-plugin-datepicker CssClass="form-control input-sm" ValidationGroup="addemployment"></asp:TextBox>
                                                                    
													            </div>
                                                                <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator7" ControlToValidate="txtto" runat="server" ValidationGroup="addemployment" ErrorMessage="This field is required." Font-Size=".9em" ForeColor="#C10000"></asp:RequiredFieldValidator>--%>
														    </div>

													</div>

                                                        <asp:Repeater ID="rpemployee" onitemcommand="rpemployee_ItemCommand" runat="server">
                                                        <HeaderTemplate>
                                                        <table class="table table-bordered table-striped mb-none" id="datatable-default">
                                                        <thead>
                                                        <th>S.No</th>
                                                        <th>Organization</th>
                                                        <th>Position Held</th>
                                                        <th>Reference</th>
                                                        <th>Contact</th>
                                                        <th>Reason for Leaving</th>
                                                        <th>Key Responsibilities</th>
                                                            <th>From</th>
                                                            <th>To</th>
                                                            <th>Salary</th>
                                                            <th>Action</th>
                                                        </thead>
                                                        <tbody>
                                                        </HeaderTemplate>
                                                        <ItemTemplate>
                                                        <tr>
                                                        <td><% srno = srno + 1; %><% =srno %></td>
                                                        <td><%# Eval("emporganization")%></td>
                                                        <td><%# Eval("emppositionheld")%> </td>
                                                        <td><%# Eval("empreferenceperson")%></td>
                                                        <td><%# Eval("emprerenecepersoncontactno")%></td>
                                                        <td><%# Eval("empreasonforleaving")%></td>
                                                        <td><%# Eval("empkeyresponsibilities")%></td>
                                                        <td><%# Eval("empdurationfrom", "{0: dd/MM/yyyy}")%></td>
                                                        <td><%# Eval("empdurationto", "{0: dd/MM/yyyy}")%></td>
                                                        <td><%# Eval("empsalary")%></td>
                                                        <td>
                                                            <asp:imagebutton id="imgBtnEdit"  commandname="Edit" ValidationGroup="repeater" commandargument='<%#Eval("empid") %>' runat="server" imageurl="images/icon-edit.png"></asp:imagebutton>
                                                            <asp:imagebutton tooltip="Delete a record." ValidationGroup="repeater" onclientclick="javascript:return confirm('Are you sure to delete record?')" id="imgBtnDelete" commandname="Delete" commandargument='<%#Eval("empid") %>' runat="server" imageurl="images/icon-delete.png"></asp:imagebutton>
                                                        </td>
                                                        </tr>
                                                        </ItemTemplate>
                                                        <FooterTemplate>
                                                        </tbody>
                                                        </table>
                                                        </FooterTemplate>
                                                        </asp:Repeater>
                                             </div>
                                                </ContentTemplate>
                                            </asp:UpdatePanel>
                                             
                                        </div>
                                    </div>
                                    <div id="research" class="tab-pane">
                                        <asp:UpdatePanel ID="UpdatePanel6" runat="server">
                                            <ContentTemplate>
                                                <div class="row">
                                            <div class="form-group">
												<label class="col-sm-3 control-label">Total No. of Publications in HEC Recognized Journals</label>
												<div class="col-sm-3">
                                                <asp:TextBox ID="txttotalpub" runat="server" CssClass="form-control" ValidationGroup="research" TextMode="Number" required></asp:TextBox>
                                                                
												</div>
                                                <label class="col-sm-2 control-label">Publications in Last 5 Years</label>
												<div class="col-sm-3">
                                                <asp:TextBox ID="txttotalpubinfiveyears" runat="server" CssClass="form-control" ValidationGroup="research" TextMode="Number" required></asp:TextBox>
                                                                
												</div>
											</div>
                                            <div class="form-group">
												<label class="col-sm-3 control-label">No. of research publications where you are principal author</label>
												<div class="col-sm-3">
                                                <asp:TextBox ID="txttotalprincipalauthor" runat="server" CssClass="form-control" ValidationGroup="research" TextMode="Number" required></asp:TextBox>
                                                                
												</div>
                                                <label class="col-sm-2 control-label">Total Impact Factor</label>
												<div class="col-sm-3">
                                                <asp:TextBox ID="txttotalimpactfactor" runat="server" CssClass="form-control" ValidationGroup="research" TextMode="Number" required></asp:TextBox>
                                                                
												</div>
											</div>
                                                        
                                            <div class="form-group">
												<label class="col-sm-3 control-label">Citations</label>
												<div class="col-sm-3">
                                                <asp:TextBox ID="txttotalcitations" runat="server" CssClass="form-control" ValidationGroup="research" TextMode="Number" required></asp:TextBox>
                                                                
												</div>
                                                <label class="col-sm-2 control-label">Number of conferences</label>
												<div class="col-sm-3">
                                                <asp:TextBox ID="txttotalconferences" runat="server" CssClass="form-control" ValidationGroup="research" TextMode="Number" required></asp:TextBox>
                                                                
												</div>
											</div>
                                                        
                                            <div class="form-group">
												<label class="col-sm-3 control-label">Number of Books (if any)</label>
												<div class="col-sm-3">
                                                <asp:TextBox ID="txttotalbooks" runat="server" CssClass="form-control" ValidationGroup="research" TextMode="Number"></asp:TextBox>
												</div>
                                                <label class="col-sm-2 control-label">PhD Approved Supervisor (Yes/No)</label>
												<div class="col-sm-3">
                                                    <asp:DropDownList ID="cbophdapproved" runat="server" ValidationGroup="research">
                                                        <asp:ListItem></asp:ListItem>
                                                        <asp:ListItem>NO</asp:ListItem>
                                                        <asp:ListItem>YES</asp:ListItem>
                                                    </asp:DropDownList>
												</div>
											</div>
                                                        
                                            <div class="form-group">
												<label class="col-sm-3 control-label">PCD Registration No (For PhD Candidates)</label>
												<div class="col-sm-3">
                                                    <asp:TextBox ID="txtpcdregistrationno" runat="server" ValidationGroup="research" CssClass="form-control"></asp:TextBox>
												</div>
											</div>

                                        <div class="form-group">
												<label class="col-sm-3 control-label">Remarks</label>
												<div class="col-sm-3">
                                                    <%--<textarea class="form-control" id="txtresearchremarks" runat="server" rows="5" data-plugin-maxlength maxlength="300" required></textarea>--%>
                                                    <asp:TextBox ID="txtresearchremarks" runat="server" MaxLength="300" TextMode="MultiLine" Height="100" Width="300" ValidationGroup="research"></asp:TextBox>
												</div> 
											</div>

                                                <footer class="panel-footer">
                                                     <label class="col-sm-3 control-label"></label>
                                                    <asp:Button ID="cmdresearch" runat="server" Text="Save" ValidationGroup="research" CssClass="btn btn-success" OnClick="cmdResearch_Click" />
                                                    
                                                    <asp:Label ID="lblresearch" runat="server" Font-Size="9pt" ForeColor="Red"></asp:Label>
							                    </footer>

                                        </div>
                                            </ContentTemplate>
                                        </asp:UpdatePanel>
                                        
                                    </div>
                                    <div id="skills" class="tab-pane">
                                         <div class="row">
                                             <div class="col-md-8 col-lg-12">
                                                 <div class="form-group">
														<label class="col-sm-3 control-label">Key Acheivements and Skills</label>
														<div class="col-sm-8">
                                                                <%# Eval("empsalary")%>
                                                            <textarea class="form-control" id="txtsill" runat="server" ValidationGroup="skills" rows="5" data-plugin-maxlength maxlength="300"></textarea>
														</div>
													</div>
                                                 <div class="form-group">
														<label class="col-sm-3 control-label">Other Specializations</label>
														<div class="col-sm-8">
                                                                <%--<asp:TextBox ID="txtsill" runat="server" CssClass="form-control input-sm" TextMode="MultiLine" MaxLength="300" Height="120px" required></asp:TextBox>--%>
                                                            <textarea class="form-control" id="txtspecilization" ValidationGroup="skills" runat="server" rows="5" data-plugin-maxlength maxlength="300"></textarea>
														</div>
													</div>
                                                 <hr />
											     <asp:UpdatePanel ID="UpdatePanel5" runat="server">
                                                                        <ContentTemplate>
                                                                            <div class="form-group">
														                        <label class="col-sm-6 control-label" for="w2-email">Do you have any blood relation or close relative(s) working in The University of Lahore ?</label>
														                        <div class="col-sm-2">
                                                                                            <asp:DropDownList ID="cbouniversity" CssClass="form-control input-sm" runat="server" ValidationGroup="skills" AutoPostBack="true" OnSelectedIndexChanged="cbouniversity_OnSelectedIndexChanged" required>
                                                                                                <asp:ListItem>NO</asp:ListItem>
                                                                                                <asp:ListItem>YES</asp:ListItem>
                                                                                            </asp:DropDownList>
                                                                                    <asp:RequiredFieldValidator ID="req1" runat="server" ControlToValidate="cbouniversity" ErrorMessage="This field is required." Font-Size=".9em" ForeColor="#C10000"></asp:RequiredFieldValidator>
														                        </div>
													                        </div>
                                                                            <div class="form-group" id="lbluniversityrelation" runat="server">
                                                                                    <label class="col-sm-1 control-label">Name</label>
														                            <div class="col-sm-2">
															                            <asp:TextBox ID="txtname" runat="server" CssClass="form-control input-sm" required></asp:TextBox>
                                                                                        <asp:RequiredFieldValidator ID="reqtxtname" runat="server" ControlToValidate="txtname" ErrorMessage="This field is required." Font-Size=".9em" ForeColor="#C10000"></asp:RequiredFieldValidator>
														                            </div>
                                                                                    <label class="col-sm-1 control-label">Position</label>
														                            <div class="col-sm-2">
															                            <asp:TextBox ID="txtposition" runat="server" CssClass="form-control input-sm" required></asp:TextBox>
                                                                                        <asp:RequiredFieldValidator ID="reqtxtposition" runat="server" ControlToValidate="txtposition" ErrorMessage="This field is required." Font-Size=".9em" ForeColor="#C10000"></asp:RequiredFieldValidator>
														                            </div>
                                                                                    <label class="col-sm-1 control-label">Department</label>
														                            <div class="col-sm-2">
															                            <asp:TextBox ID="txtdepartment" runat="server" CssClass="form-control input-sm" required></asp:TextBox>
                                                                                        <asp:RequiredFieldValidator ID="reqtxtdepartment" runat="server" ControlToValidate="txtdepartment" ErrorMessage="This field is required." Font-Size=".9em" ForeColor="#C10000"></asp:RequiredFieldValidator>
														                            </div>
                                                                                    </div>
                                                                            <footer class="panel-footer">
                                                     <label class="col-sm-3 control-label"></label>
                                                    <asp:Button ID="cmdskills" runat="server" ValidationGroup="skills" Text="Save" CssClass="btn btn-success" OnClick="cmdskills_Click" />
                                                     <asp:Label ID="lblskillserr" runat="server" Font-Size="9pt" ForeColor="Red"></asp:Label>
							                    </footer>
                                                                        </ContentTemplate>
                                                                    </asp:UpdatePanel>
                                                  
                                             </div>
                                         </div>
                                     </div>
                                    
                                    <div id="email" class="tab-pane">
                                        <asp:UpdatePanel ID="UpdatePanel7" runat="server">
                                        <ContentTemplate>
                                            <div class="row">
                                            <div class="col-md-8 col-lg-12">
                                                <h4>
                                                   Please Select your desired job alert categories.
                                                </h4>
                                                <p>
                                                    Once a new job related to your selected category is posted, you will receive an alert to your registered email.
                                                </p>
                                                <br /><br />
                                                    <asp:CheckBoxList ID="chkemailalerts" ValidationGroup="emailalerts" CssClass="mycheckbox" runat="server" RepeatLayout="Table" RepeatDirection="Horizontal" RepeatColumns="4"></asp:CheckBoxList>
                                            </div>
                                            
                                        </div>
                                        <footer class="panel-footer">
                                                    <asp:Button ID="cmdEmailAlerts" runat="server" ValidationGroup="emailalerts" Text="Save" CssClass="btn btn-success" OnClick="cmdEmailAlerts_Click" />
                                                     <asp:Label ID="lblemailalerts" runat="server" Font-Size="9pt" ForeColor="Red" Font-Bold="true"></asp:Label>
							                    </footer>
                                        </ContentTemplate>
                                    </asp:UpdatePanel>
                                    </div>
							</div>
						</div>
                        
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
    </form>

    <!-- Vendor -->
		<script src="assets/vendor/jquery/jquery.js"></script>		
        <script src="assets/vendor/jquery-browser-mobile/jquery.browser.mobile.js"></script>		
        <script src="assets/vendor/jquery-cookie/jquery-cookie.js"></script>		
        <script src="assets/vendor/bootstrap/js/bootstrap.js"></script>		
        <script src="assets/vendor/nanoscroller/nanoscroller.js"></script>		
        <script src="assets/vendor/bootstrap-datepicker/js/bootstrap-datepicker.js"></script>		
        <script src="assets/vendor/magnific-popup/jquery.magnific-popup.js"></script>		
        <script src="assets/vendor/jquery-placeholder/jquery-placeholder.js"></script>
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
		<!-- Specific Page Vendor -->		
        <script src="assets/vendor/autosize/autosize.js"></script>
		
		<!-- Theme Base, Components and Settings -->
		<script src="assets/javascripts/theme.js"></script>
		
		<!-- Theme Custom -->
		<script src="assets/javascripts/theme.custom.js"></script>
		
		<!-- Theme Initialization Files -->
		<script src="assets/javascripts/theme.init.js"></script>
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
