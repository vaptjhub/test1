<%@ Page Language="C#" AutoEventWireup="true" CodeFile="testimage.aspx.cs" Inherits="testimage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
        <asp:UpdateProgress ID="UpdateProgress1" runat="server"></asp:UpdateProgress>
        <asp:UpdatePanel ID="UpdatePanel1" runat="server" UpdateMode="Conditional">
            <%--<Triggers>
                <asp:PostBackTrigger ControlID="btnPhotoPreview" />
            </Triggers>--%>
            <ContentTemplate>
                <div class="form-group">
                                                                <label class="col-md-2 control-label">Picture</label>
                                                                <div class="col-md-3"><asp:FileUpload ID="fupImage" runat="server"  /></div>
                                                                <div class="col-md-3">
                                                                    <asp:Button runat="server" OnClick="btnPreview_Click"  ID="btnPhotoPreview" CausesValidation="false" Text="Upload" CssClass="btn btn-success"/> 
                                                                    <br />
                                                                    .jpg,.png, size maximum 1 MB
                                                                </div>
                                                                <div class="col-md-2">
                                                                <asp:Label ID="lblimagetitle1" runat="server"></asp:Label>
                                                                    <asp:HyperLink ID="HyperLink1" runat="server" Target="_blank">Click to view image</asp:HyperLink>

                                                                </div>
                                                                    <div class="col-md-2">
                                                                        <asp:Image ID="ImagePreview1" runat="server" />
                                                                     </div>
                                                              </div>
                <asp:Label ID="lblimageerror" runat="server"></asp:Label>

            </ContentTemplate>
        </asp:UpdatePanel>
     
                                                            
    </div>
    </form>
</body>
</html>
