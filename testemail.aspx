<%@ Page Language="C#" AutoEventWireup="true" CodeFile="testemail.aspx.cs" Inherits="testemail" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <%=displaymessage %>
        <asp:TextBox ID="txtemail" runat="server" CssClass="form-control input-lg"  TextMode="Email"></asp:TextBox>
        <asp:TextBox ID="txtpassword" runat="server" CssClass="form-control input-lg"></asp:TextBox>
        <asp:Button ID="cmdsubmit" runat="server" Text="Get Password" CssClass="btn btn-info" OnClick="cmdsubmit_Click" />
    
    </div>
    </form>
</body>
</html>
