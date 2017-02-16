<%@ Page Title="" Language="C#" MasterPageFile="~/Special/SpecialMasterPage.master"
    AutoEventWireup="true" CodeFile="PanchayatPreviousSarpanch.aspx.cs" Inherits="Special_PanchayatPreviousSarpanch" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <form id="form1" runat="server">
    <ul class="breadcrumb">
        <li><a href="../Default.aspx">Home</a></li>
        <li><a href="Panchayat.aspx">કણભા ગ્રામ પંચાયત</a></li>
        <li class="active">ભૂતપૂર્વ સરપંચશ્રીઓની યાદી</li>
    </ul>
    <div class="page-content-wrap">
        <div class="row">
            <div class="col-md-12">
                <!-- START DATATABLE EXPORT -->
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h3 class="panel-title">
                            ગામના ભૂતપૂર્વ સરપંચશ્રીઓની યાદી :
                        </h3>
                    </div>
                    <div class="panel-body panel-body-table">
                        <div class="table-responsive">
                            <table class="table datatable table-bordered table-striped">
                                <thead>
                                    <tr>
                                        <th>
                                            #
                                        </th>
                                        <th>
                                            નામ
                                        </th>
                                        <th>
                                            મુદ્દત શરૂ
                                        </th>
                                        <th>
                                            મુદ્દત પૂર્ણ
                                        </th>
                                        <th>
                                            કુલ વર્ષ
                                        </th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td>
                                        </td>
                                        <td>
                                        </td>
                                        <td>
                                        </td>
                                        <td>
                                        </td>
                                        <td>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    </form>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">
    <script type="text/javascript" src="js/plugins/jquery/jquery.min.js"></script>
    <script type="text/javascript" src="js/plugins/jquery/jquery-ui.min.js"></script>
    <!-- END PLUGINS -->
    <!-- START THIS PAGE PLUGINS-->
    <script type='text/javascript' src='js/plugins/icheck/icheck.min.js'></script>
    <script type="text/javascript" src="js/plugins/mcustomscrollbar/jquery.mCustomScrollbar.min.js"></script>
    <script type="text/javascript" src="js/plugins/datatables/jquery.dataTables.min.js"></script>
    <script type="text/javascript" src="js/plugins/tableexport/tableExport.js"></script>
    <script type="text/javascript" src="js/plugins/tableexport/jquery.base64.js"></script>
    <script type="text/javascript" src="js/plugins/tableexport/html2canvas.js"></script>
    <script type="text/javascript" src="js/plugins/tableexport/jspdf/libs/sprintf.js"></script>
    <script type="text/javascript" src="js/plugins/tableexport/jspdf/jspdf.js"></script>
    <script type="text/javascript" src="js/plugins/tableexport/jspdf/libs/base64.js"></script>
    <!-- END THIS PAGE PLUGINS-->
    <!-- START TEMPLATE -->
    <%--  <script type="text/javascript" src="js/settings.js"></script>
    --%>
    <script type="text/javascript" src="js/plugins.js"></script>
</asp:Content>
