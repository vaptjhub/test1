<%@ Page Language="C#" AutoEventWireup="true" CodeFile="imageupload.aspx.cs" Inherits="imageupload" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate>
                <asp:FileUpload ID="postedFile" runat="server" />
                <%--<asp:FileUpload ID="FileUpload1" runat="server" />--%>
                <asp:Button ID="btnUpload" runat="server" Text="Button" OnClick="btnUpload_Click" />
            </ContentTemplate>
        </asp:UpdatePanel>
    <%--<input type="file" name="postedFile" />--%>
        
    <%--<input type="button" id="btnUpload" value="Upload" />--%>
        
    <progress id="fileProgress" style="display: none"></progress>
    <hr />
    <%--<span id="lblMessage" style="color: orangered"></span>--%>
    <%--<span id="lblfilename" style="color: Green"></span>--%>
        <asp:Label ID="lblfilename1" runat="server"></asp:Label>
    <script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
    <script type="text/javascript">
        $("body").on("click", "#btnUpload", function () {
            $.ajax({
                url: 'Handler.ashx',
                type: 'POST',
                data: new FormData($('form')[0]),
                cache: false,
                contentType: false,
                processData: false,
                success: function (file) {
                    $("#fileProgress").hide();
                    //$("#lblfilename1").text(file.name);
                    $document.getElementById("lblfilename1") = file.name;
                    //$("#lblMessage").html("<b>" + file.name + "</b> has been uploaded.");
                },
                xhr: function () {
                    var fileXhr = $.ajaxSettings.xhr();
                    if (fileXhr.upload) {
                        $("progress").show();
                        fileXhr.upload.addEventListener("progress", function (e) {
                            if (e.lengthComputable) {
                                $("#fileProgress").attr({
                                    value: e.loaded,
                                    max: e.total
                                });
                            }
                        }, false);
                    }
                    return fileXhr;
                }
            });
        });
    </script>

    </form>
</body>
</html>
