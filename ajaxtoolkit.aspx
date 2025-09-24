<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ajaxtoolkit.aspx.cs" Inherits="ajaxtoolkit" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>  
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>UOL Employment Portal</title>
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
    <script type="text/javascript">  
    function uploadcomplete()  
    {  
        alert("successfully uploaded!");  
    }  
</script> 
    <script type="text/javascript">  
    function uploadcompleteAll()  
    {  
        alert("successfully uploaded All Files!");
        document.getElementById("lblimagetitle").innerText = "File Upload Successfully!";
    }  
</script>  
    <script type="text/javascript">  
    function uploaderror()  
    {  
        alert("sonme error occured while uploading file!");  
    }  
</script>  
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
        
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <ajaxToolkit:AjaxFileUpload ID="AjaxFileUpload1" OnUploadComplete="AjaxFileUpload1_UploadComplete" OnUploadCompleteAll="AjaxFileUpload1_UploadCompleteAll" MaximumNumberOfFiles="1" Mode="Auto" runat="server" AutoStartUpload="True" AllowedFileTypes="jpg,png" MaxFileSize="1000" Width="450px" BorderStyle="None" EnableTheming="False" OnClientUploadCompleteAll="uploadcompleteAll" />
        <asp:Label ID="lblimagetitle" runat="server"></asp:Label>
        <asp:Label ID="lblimagename" runat="server"></asp:Label>
        <asp:AsyncFileUpload ID="AsyncFileUpload1" runat="server" />
    </div>
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
