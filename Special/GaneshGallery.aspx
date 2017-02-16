<%@ Page Title="" Language="C#" MasterPageFile="~/Special/SpecialMasterPage.master" AutoEventWireup="true" CodeFile="GaneshGallery.aspx.cs" Inherits="Special_GaneshGallery" %>


<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <ul class="breadcrumb push-down-0">
        <li><a href="../Default.aspx">Home</a></li>
        <li class="active">Ganesh Utsav Gallery</li>
    </ul>
    <!-- END BREADCRUMB -->
    <!-- START CONTENT FRAME -->
    <div class="content-frame">
        <!-- START CONTENT FRAME TOP -->
        <div class="content-frame-top">
            <div class="page-title">
                <h2>
                    <span class="fa fa-image"></span>&nbsp;Ganesh Utsav Gallery :-</h2>
            </div>
            <%--  <div class="pull-right">                            
                            <button class="btn btn-primary"><span class="fa fa-upload"></span> Upload</button>
                            <button class="btn btn-default content-frame-right-toggle"><span class="fa fa-bars"></span></button>
                        </div>   --%>
        </div>
        <!-- START CONTENT FRAME RIGHT -->
        <div class="content-frame-right">
            <h4>
                Groups:</h4>
             <div class="list-group border-bottom push-down-20">
                <a href="Gallery.aspx" class="list-group-item">General </a>
                <a href="NavratriGallery.aspx" class="list-group-item ">નવરાત્રી </a>
                <a href="MedoGallery.aspx" class="list-group-item">મેળો </a>
                <a href="GaneshGallery.aspx" class="list-group-item active">ગણેશ ઉત્સવ</a>
                <a href="VolleyballGallery.aspx" class="list-group-item">વોલીબોલ ટુર્નામેન્ટ</a>
            </div>
        </div>
        <!-- END CONTENT FRAME RIGHT -->
        <!-- START CONTENT FRAME BODY -->
        <div class="content-frame-body content-frame-body-left">
          <div class="gallery" id="links">
                <asp:Repeater ID="rptr" runat="server">
                    <ItemTemplate>
                        <a class="gallery-item" href=' <%# "../" + Eval("Image") %>' title='  <%# Eval("Description") %>'
                            data-gallery>
                            <div class="image">
                                <img src='  <%# "../" + Eval("Image") %>' style="height:142px; width:192px;" alt="" />
                            </div>
                            <div class="meta">
                                  <strong><%# Eval("Description") %></strong>
                            </div>
                        </a>
                    </ItemTemplate>
                </asp:Repeater>
            </div>
           <%-- <ul class="pagination pagination-sm pull-right push-down-20 push-up-20">
                <li class="disabled"><a href="#">«</a></li>
                <li class="active"><a href="#">1</a></li>
                <li><a href="#">2</a></li>
                <li><a href="#">3</a></li>
                <li><a href="#">4</a></li>
                <li><a href="#">»</a></li>
            </ul>--%>
        </div>
        <!-- END CONTENT FRAME BODY -->
    </div>
    <!-- END CONTENT FRAME -->
    <!-- END PAGE CONTENT -->
    <!-- END PAGE CONTAINER -->
    <!-- BLUEIMP GALLERY -->
    <div id="blueimp-gallery" class="blueimp-gallery blueimp-gallery-controls">
        <div class="slides">
        </div>
        <h3 class="title">
        </h3>
        <a class="prev">‹</a> <a class="next">›</a> <a class="close">×</a> <a class="play-pause">
        </a>
        <ol class="indicator">
        </ol>
    </div>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">
    <audio id="audio-alert" src="audio/alert.mp3" preload="auto">
    </audio>
    <audio id="audio-fail" src="audio/fail.mp3" preload="auto">
    </audio>
    <!-- END PRELOADS -->
    <!-- START SCRIPTS -->
    <!-- START PLUGINS -->
    <script type="text/javascript" src="js/plugins/jquery/jquery.min.js"></script>
    <script type="text/javascript" src="js/plugins/jquery/jquery-ui.min.js"></script>
    <script type="text/javascript" src="js/plugins/bootstrap/bootstrap.min.js"></script>
    <!-- END PLUGINS -->
    <!-- START THIS PAGE PLUGINS-->
    <script type='text/javascript' src='js/plugins/icheck/icheck.min.js'></script>
    <script type="text/javascript" src="js/plugins/mcustomscrollbar/jquery.mCustomScrollbar.min.js"></script>
    <script type="text/javascript" src="js/plugins/blueimp/jquery.blueimp-gallery.min.js"></script>
    <script type="text/javascript" src="js/plugins/dropzone/dropzone.min.js"></script>
    <script type="text/javascript" src="js/plugins/icheck/icheck.min.js"></script>
    <!-- END THIS PAGE PLUGINS-->
    <!-- START TEMPLATE -->
   
    <!-- END TEMPLATE -->
    <script>
        document.getElementById('links').onclick = function (event) {
            event = event || window.event;
            var target = event.target || event.srcElement;
            var link = target.src ? target.parentNode : target;
            var options = { index: link, event: event, onclosed: function () {
                setTimeout(function () {
                    $("body").css("overflow", "");
                }, 200);
            }
            };
            var links = this.getElementsByTagName('a');
            blueimp.Gallery(links, options);
        };
        </script>
</asp:Content>
