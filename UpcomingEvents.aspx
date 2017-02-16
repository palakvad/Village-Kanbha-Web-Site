<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true"
    CodeFile="UpcomingEvents.aspx.cs" Inherits="UpcomingEvents" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder3" runat="Server">
    <!-- page content wrapper -->
    <div class="page-content-wrap bg-light">
        <!-- page content holder -->
        <div class="page-content-holder no-padding">
            <!-- page title -->
            <div class="page-title">
                <h1>
                    Upcoming Events</h1>
                <!-- breadcrumbs -->
                <ul class="breadcrumb">
                    <li><a href="Default.aspx">Home</a></li>
                    <li class="active">Upcoming Events</li>
                </ul>
                <!-- ./breadcrumbs -->
            </div>
            <!-- ./page title -->
        </div>
        <!-- ./page content holder -->
    </div>
    <!-- ./page content wrapper -->
    <!-- page content wrapper -->
    <div class="page-content-wrap">
        <!-- page content holder -->
        <div class="page-content-holder padding-v-30">
            <div class="row">
                <div class="col-md-3">
                    <asp:Repeater ID="rptrevent" runat="server">
                        <ItemTemplate>
                            <div class="pricing-block" style="height: 370px;">
                                <div class="pb-block">
                                    <h3>
                                       <%#  Eval("Title") %></h3>
                                    <div class="pb-price">
                                        <asp:Image ID="Image1" runat="server" ImageUrl= <%# "~/"+ Eval("Image") %> Height="140px" Width="223px" />
                                    </div>
                                    <div class="pb-block">
                                        <strong>તારીખ:</strong>  <%#  Eval("Date") %><br />
                                        <strong>વાર:</strong>  <%#  Eval("Day") %><br />
                                        <p>
                                            <strong>વિગત:&nbsp;</strong>  <%#  Eval("Details") %></p>
                                    </div
                                </div>
                                <%--  <div class="pb-block">
                                 <p>Devashish</p>
                                 </div>--%>
                            </div>
                        </ItemTemplate>
                    </asp:Repeater>
                </div>
            </div>
        </div>
    </div>
    <!-- ./page content holder -->
    <!-- ./page content wrapper -->
</asp:Content>
