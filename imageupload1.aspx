<%@ Page Language="C#" AutoEventWireup="true" CodeFile="imageupload1.aspx.cs" Inherits="imageupload1" %>

<!DOCTYPE html>

<html>

<head>

<meta name="viewport" content="width=device-width" />

<title>Index</title>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

<meta name="viewport" content="width=device-width, initial-scale=1">

</head>

<body>

<form asp-action="Upload_File" method="post" enctype="multipart/form-data">

    <div style="min-height:1000px">

        <section class="forms">

            <div class="container-fluid">

                <div class="row">

                    <div class="col-lg-12">

                        <div class="card">

                            <div class="card-close">

                                <div class="dropdown">

                                    <button type="button" id="closeCard1" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" class="dropdown-toggle"><i class="fa fa-ellipsis-v"></i></button>

                                    <div aria-labelledby="closeCard1" class="dropdown-menu dropdown-menu-right has-shadow"><a href="#" class="dropdown-item remove"> <i class="fa fa-times"></i>Close</a><a href="#" class="dropdown-item edit"> <i class="fa fa-gear"></i>Edit</a></div>

                                </div>

                            </div>

                            <div class="card-header d-flex align-items-center">

                                <h3 class="h4">File Upload</h3>

                            </div>

                            <div class="card-body">

                                <p>Upload your any type file here.</p>

                                <div class="form-group">

                                    <input id="files" type="file" name="files" class="form-control-file">

                                </div>

                                <div class="form-group">

                                    <input type="button" value="Upload" onclick="UploadFile()" class="btn btn-primary">

                                </div>

                                <div id="divloader" style="display:none">

                                    <img src="~/img/photos/64x64.gif" />

                                </div>

                                <br />

                            </div>

                        </div>

                    </div>

                </div>

            </div>

        </section>

    </div>

</form>

</body>

<script>

function UploadFile() {

    var fileUpload = $("#files").get(0);

    var files = fileUpload.files;

    var data = new FormData();

    data.append(files[0].name, files[0]);

    $.ajax({

        type: "POST",

        url: "/Upload_Jquery/Upload_File",

        contentType: false,

        processData: false,

        data: data,

        async: false,

        beforeSend: function () {

            $("#divloader").show()

        },

        success: function (message) {

            alert(message);

        },

        error: function () {

            alert("Error!");

        },

        complete: function () {

            $("#divloader").hide()

        }

    });

}

</script>

</html>
