<%@ Page Title="" Language="C#" MasterPageFile="~/Special/SpecialMasterPage.master"
    AutoEventWireup="true" CodeFile="MembersDetails.aspx.cs" Inherits="Special_MembersDetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <form id="form1" runat="server">
    <ul class="breadcrumb">
        <li><a href="../Default.aspx">Home</a></li>
        <li><a href="Members.aspx">Members</a></li>
        <li class="active">Member Detail</li>
    </ul>
    <div class="page-content-wrap">
        <div class="row">
         
            <asp:Repeater ID="rptr" runat="server">
                <ItemTemplate>
                    <div class="col-md-3">
                        <div class="panel panel-default">
                            <div class="panel-body profile">
                                <div class="profile-image">
                                    <img src='<%# "../" + Eval("Photo") %>' alt="" />
                                </div>
                                <div class="profile-data">
                                    <div class="profile-data-name">
                                        <%# Eval("Name") %></div>
                                    <div class="profile-data-title" style="color: #FFF;">
                                        <%# Eval("Mobile") %></div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-9">
                        <div class="timeline timeline-right">
                            <div class="timeline-item timeline-main">
                                <div class="timeline-date">
                                    <a href="Members.aspx">Back To Members</a></div>
                            </div>
                            <div class="timeline-item timeline-item-right">
                                <div class="timeline-item-icon">
                                    <span class="fa"></span>
                                </div>
                                <div class="timeline-item-content">
                                    <div class="timeline-heading" style="padding-bottom: 10px;">
                                        <img src='<%# "../" + Eval("Photo") %>' />
                                        <a href="#">
                                            <%# Eval("Name") %></a> added on
                                        <%# Eval("Date") %>
                                    </div>
                                    <div class="timeline-body comments">
                                        <div class="comment-item">
                                            <p class="comment-head">
                                                <a>Whatsapp Number:</a>
                                            </p>
                                            <p>
                                                <%# Eval("Whatsapp") %></p>
                                        </div>
                                        <div class="comment-item">
                                            <p class="comment-head">
                                                <a href="#">Blood Group:</a>
                                            </p>
                                            <p>
                                                <%# Eval("Blood") %></p>
                                        </div>
                                        <div class="comment-item">
                                            <p class="comment-head">
                                                <a>Address:</a>
                                            </p>
                                            <p>
                                                <%# Eval("Address") %></p>
                                        </div>
                                        <div class="comment-item">
                                            <p class="comment-head">
                                                <a href="#">Home At Village:</a>
                                            </p>
                                            <p>
                                                <%# Eval("Vaas")%></p>
                                        </div>
                                         <div class="comment-item">
                                            <p class="comment-head">
                                                <a href="#">Education:</a>
                                            </p>
                                            <p>
                                                <%# Eval("Education")%></p>
                                        </div>
                                        <div class="comment-item">
                                            <p class="comment-head">
                                                <a href="#">Occupation:</a>
                                            </p>
                                            <p>
                                                <%# Eval("Occupation")%></p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </ItemTemplate>
            </asp:Repeater>
        </div>
    </div>
    </form>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">
</asp:Content>
