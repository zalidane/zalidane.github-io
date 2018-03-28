<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Portfolio.aspx.cs" Inherits="Portfolio" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>My Portfolio</title>
    <script type="text/javascript" src="Scripts/jquery-3.0.0.min.js"></script>
    <script type="text/javascript" src="Scripts/bootstrap.min.js"></script>
    <link rel="stylesheet" href="Content/bootstrap.min.css" type="text/css"/>
    <script type="text/javascript">
        $(function () {
            $('.pop').on('click', function () {
                $('.enlargeImageModalSource').attr('src', $(this).find('img').attr('src'));
                $('#enlargeImageModal').modal('show');
            });
        });

        $('.modal-wide').on("show.bs.modal", function () {
            var height = $(window).height() - 200;
            $(this).find(".modal-body").css("max-heght", height);
        });
    </script>
    <style>
        .modal.modal-wide .modal-dialog{
            width: 90%;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <div class="jumbotron">
                <div><h1>Antonio Delgado</h1></div>
                <div>Full-Stack developer. Passionate about usability and user interface design.</div>
            </div>
            <div class="row">
                <div class="col-md-4 pop">
                    <img alt="Project 1" src="Images/MyWork.png" style="width: 50%; height:auto;" />
                </div>
                <div class="col-md-4 pop">
                    <img alt="Project 2" src="Images/CAPMockup.png" style="width: 50%; height:auto;" />
                </div>
                <div class="col-md-4 pop">
                    <img alt="Project 3" src="Images/CAP.png" style="width: 50%; height:auto;" />
                </div>
            </div>
            <div class="modal modal-wide fade" id="enlargeImageModal" tabindex="-1" role="dialog" aria-labelledby="enlargeImageModal" aria-hidden="true">
                <div class="modal-dialog modal-open">
                    <div class="modal-content">
                        <div class="modal-body">
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                            <img src="" class="enlargeImageModalSource" style="width:100%; height:auto;" />
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
