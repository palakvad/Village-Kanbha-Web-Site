<%@ Page Title="" Language="C#" MasterPageFile="~/Special/SpecialMasterPage.master"
    AutoEventWireup="true" CodeFile="Members.aspx.cs" Inherits="Special_Members" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <form id="form1" runat="server">
    <ul class="breadcrumb">
        <li><a href="../Default.aspx">Home</a></li>
        <li class="active">Members</li>
    </ul>
    <div class="page-content-wrap">
        <div class="row">
            <div class="col-md-12">
                <!-- START DATATABLE EXPORT -->
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h3 class="panel-title">
                         <span class="fa fa-users">    Website Member List</h3>
                      
                    </div>
                    <div class="panel-body panel-body-table">
                        <div class="table-responsive">
                            <asp:Repeater ID="rptr" runat="server" onitemcommand="rptr_ItemCommand">
                                <HeaderTemplate>
                                    <table class="table datatable table-bordered table-striped">
                                        <thead>
                                            <tr>
                                                <th>
                                                    Name
                                                </th>
                                                <th>
                                                    Mobile
                                                </th>
                                                <th>
                                                    Blood Group
                                                </th>
                                                <th>
                                                    Home (@ Village)
                                                </th>
                                                <th>
                                                  
                                                </th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                </HeaderTemplate>
                                <ItemTemplate>
                                    <tr>
                                        <td>
                                            <%# Eval("Name") %>
                                        </td>
                                        <td>
                                            <%# Eval("Mobile") %>
                                        </td>
                                        <td>
                                            <%# Eval("Blood") %>
                                        </td>
                                        <td>
                                            <%# Eval("Vaas") %>
                                        </td>
                                        <td>
                                            <asp:LinkButton ID="lnkbtnDetails" runat="server" class="btn btn-default btn-rounded btn-sm" CausesValidation="false" CommandArgument='<%# Bind("Id") %>'
                                                CommandName="Details" OnClientClick="javascript:window.scrollTo(150,0);"><span>Details</span></asp:LinkButton>
                                        </td>
                                    </tr>
                                </ItemTemplate>
                                <FooterTemplate>
                                    </tbody> </table>
                                </FooterTemplate>
                            </asp:Repeater>
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
