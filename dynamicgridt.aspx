<%@ Page Language="C#" AutoEventWireup="true" CodeFile="dynamicgridt.aspx.cs" Inherits="dynamicgridt" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
     <h1>Dynamic GridView Row Creation</h1>
     <div>
        <asp:Label ID="lblMessage" runat="server" ForeColor="Green" />
        <asp:gridview ID="Gridview1"  runat="server"  ShowFooter="true" AutoGenerateColumns="false" OnRowCreated="Gridview1_RowCreated">
            <Columns>
                <asp:BoundField DataField="RowNumber" HeaderText="Row Number" />
                <asp:TemplateField HeaderText="Header 1">
                    <ItemTemplate>
                        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                    </ItemTemplate>
                    <FooterStyle HorizontalAlign="left" />
                    <FooterTemplate>
                         <asp:Button ID="ButtonAdd" runat="server" Text="Add New Row" onclick="ButtonAdd_Click" />
                    </FooterTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Header 2">
                    <ItemTemplate>
                        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField  HeaderText="Header 3">
                    <ItemTemplate>
                        <asp:DropDownList ID="DropDownList1" runat="server" AppendDataBoundItems="true">
                             <asp:ListItem Value="-1">Select</asp:ListItem>
                        </asp:DropDownList>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Header 4">
                    <ItemTemplate>
                        <asp:DropDownList ID="DropDownList2" runat="server" AppendDataBoundItems="true">
                             <asp:ListItem Value="-1">Select</asp:ListItem>
                        </asp:DropDownList>
                    </ItemTemplate>
                    
                </asp:TemplateField>
                <asp:TemplateField>
                    <ItemTemplate>
                        <asp:LinkButton ID="LinkButton1" runat="server" onclick="LinkButton1_Click">Remove</asp:LinkButton>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
        </asp:gridview> 
    </div>
    <asp:Button ID="BtnSave" runat="server" Text="Save All" OnClick="BtnSave_Click" />
    </div>
    </form>
</body>
</html>
