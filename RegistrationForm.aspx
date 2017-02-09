<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true"
    CodeFile="RegistrationForm.aspx.cs" Inherits="RegistrationForm" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder3" runat="Server">
    <form id="form1" runat="server">
   
    <!-- page content wrapper -->
    <div class="page-content-wrap bg-light">
        <!-- page content holder -->
        <div class="page-content-holder no-padding">
            <!-- page title -->
            <div class="page-title">
                <h1>
                    Registration Form</h1>
                <!-- breadcrumbs -->
                <ul class="breadcrumb">
                    <li><a href="Default.aspx">Home</a></li>
                    <li class="active">Registration Form</li>
                </ul>
                <!-- ./breadcrumbs -->
            </div>
            <!-- ./page title -->
        </div>
        <!-- ./page content holder -->
    </div>
    <!-- ./page content wrapper -->
    <!-- page content wrapper -->
    <!-- ./page content wrapper -->
    <!-- page content wrapper -->
    <div class="page-content-wrap">
       <div class="col-md-5 this-animate" data-animate="fadeInLeft">
                    <asp:Panel ID="PnlLogin" runat="server" Visible="false">
                        <div class="row">
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label>
                                        LogIn Id: <span class="text-hightlight"></span>
                                    </label>
                                    <asp:TextBox ID="txtLoginId" class="form-control" runat="server" TextMode="SingleLine"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label>
                                        Password:<span class="text-hightlight"></span></label>
                                    <asp:TextBox ID="txtLoginPassword" class="form-control" runat="server" TextMode="Password"></asp:TextBox>
                                </div>
                            </div>
                            <asp:Label ID="lblLoginMsg" class="text-hightlight" runat="server"></asp:Label>
                            <asp:Button ID="btnLogin" class="btn btn-primary btn-lg pull-right" runat="server" CausesValidation="false"
                                Text="Submit" OnClick="btnLogin_Click" />
                        </div>
                    </asp:Panel>
                </div>
        <!-- page content holder -->
        <div class="page-content-holder" style="padding-top: 10px;">
             
            <div class="row">
                <div class="col-md-7 this-animate" data-animate="fadeInLeft">
                    <%--<div class="text-column">
                        <h4>
                            આપની વિગત અહીં ભરો..</h4>
                        <div class="text-column-info">
                            આપની વિગતવાર માહિતી લોકો સુધી પોહ્ચાડવા માટે અહીં માગવામાં આવેલ માહિતી ભરો.
                        </div>
                    </div>--%>
                    <div class="row">
                        <asp:Panel ID="PnlRegister" runat="server">
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label>
                                        Name (નામ) <span class="text-hightlight"></span>
                                    </label>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage=" *"
                                        class="text-hightlight" ControlToValidate="txtName"></asp:RequiredFieldValidator>
                                    <asp:TextBox ID="txtName" class="form-control" runat="server" TextMode="SingleLine"></asp:TextBox>
                                </div>
                            </div>
                              <div class="col-md-6">
                                <div class="form-group">
                                    <label>
                                        Password <span class="text-hightlight"></span>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="*"
                                            class="text-hightlight" ControlToValidate="txtPassword"></asp:RequiredFieldValidator>
                                    </label>
                                    <asp:TextBox ID="txtPassword" class="form-control" runat="server" TextMode="Password"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label>
                                        Mobile No. (મોબાઈલ નંબર) <span class="text-hightlight"></span>
                                    </label>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*"
                                        class="text-hightlight" ControlToValidate="txtMobile"></asp:RequiredFieldValidator>
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" class="text-hightlight"
                                        ControlToValidate="txtMobile" ErrorMessage="*10 Digit Number" ValidationExpression="^[0-9]{10}$"></asp:RegularExpressionValidator>
                                    <asp:TextBox ID="txtMobile" class="form-control" runat="server" TextMode="SingleLine"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label>
                                        Whatsapp No. (વ્હોહ્ટ્સ-એપ નંબર)<span class="text-hightlight"></span></label>
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" class="text-hightlight"
                                        ControlToValidate="txtWhatsapp" ErrorMessage=" *10 Digit Number" ValidationExpression="^[0-9]{10}$"></asp:RegularExpressionValidator>
                                    <asp:TextBox ID="txtWhatsapp" class="form-control" runat="server" TextMode="SingleLine"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label>
                                        Home At Village (ગામમાં ઘર) <span class="text-hightlight"></span>
                                    </label>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="*"
                                        class="text-hightlight" ControlToValidate="ddlHome" InitialValue="0"></asp:RequiredFieldValidator>
                                    <asp:DropDownList ID="ddlHome" class="form-control" runat="server">
                                        <asp:ListItem Value="0">- સિલેક્ટ કરવા માટે અહીં ક્લિક કરો -</asp:ListItem>
                                        <asp:ListItem Value="1">પટેલ વાસ</asp:ListItem>
                                        <asp:ListItem Value="2">ઠાકોર વાસ</asp:ListItem>
                                        <asp:ListItem Value="3">સુથાર વાસ</asp:ListItem>
                                        <asp:ListItem Value="4">ઝંડા ચોક</asp:ListItem>
                                        <asp:ListItem Value="5">હરીજન વાસ</asp:ListItem>
                                        <asp:ListItem Value="6">ભોઈ વાસ/મઢી</asp:ListItem>
                                        <asp:ListItem Value="7">રબારી વાસ</asp:ListItem>
                                        <asp:ListItem Value="8">પ્રજાપતી વાસ</asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label>
                                        Blood Group (લોહીનો પ્રકાર)<span class="text-hightlight"></span></label>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="*"
                                        class="text-hightlight" ControlToValidate="ddlBlood" InitialValue="0"></asp:RequiredFieldValidator>
                                    <asp:DropDownList ID="ddlBlood" class="form-control" runat="server">
                                        <asp:ListItem Value="0">- સિલેક્ટ કરવા માટે અહીં ક્લિક કરો -</asp:ListItem>
                                        <asp:ListItem Value="1">A+</asp:ListItem>
                                        <asp:ListItem Value="2">A-</asp:ListItem>
                                        <asp:ListItem Value="3">B+</asp:ListItem>
                                        <asp:ListItem Value="4">B-</asp:ListItem>
                                        <asp:ListItem Value="5">AB+</asp:ListItem>
                                        <asp:ListItem Value="6">AB-</asp:ListItem>
                                        <asp:ListItem Value="7">O+</asp:ListItem>
                                        <asp:ListItem Value="8">O-</asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label>
                                        Education (અભ્યાસ) <span class="text-hightlight"></span>

                                    </label>
                                    <asp:TextBox ID="txtEducation" class="form-control" runat="server"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label>
                                        Occupation <span class="text-hightlight"></span>
                                         <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="*"
                                        class="text-hightlight" ControlToValidate="ddlOccupation"></asp:RequiredFieldValidator>
                                    </label>
                                    <asp:DropDownList ID="ddlOccupation" class="form-control" runat="server">
                                        <asp:ListItem Value="0">- Select From Here -</asp:ListItem>
                                        <asp:ListItem Value="7">Farmer</asp:ListItem>
                                        <asp:ListItem Value="1">Business</asp:ListItem>
                                        <asp:ListItem Value="2">Job</asp:ListItem>
                                        <asp:ListItem Value="3">Study</asp:ListItem>
                                        <asp:ListItem Value="4">Study + Business</asp:ListItem>
                                        <asp:ListItem Value="5">Study + Job</asp:ListItem>
                                        <asp:ListItem Value="6">Job Seeker</asp:ListItem>
                                        <asp:ListItem Value="8">House Wife</asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                            </div>
                            <div class="col-md-12">
                                <div class="form-group">
                                    <label>
                                        Address (સરનામું) <span class="text-hightlight"></span>
                                    </label>
                                    <asp:TextBox ID="txtAddress" class="form-control" runat="server" TextMode="MultiLine"></asp:TextBox>
                                </div>
                            </div>
                         
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label>
                                        Upload Your Image <span class="text-hightlight"></span>
                                    </label>
                                  
                                    <asp:FileUpload ID="fupImage" class="fileinput" runat="server"></asp:FileUpload><br />
                                    <asp:Image ID="imgImage" runat="server" CssClass="img100" Width="100px" Height="100px" Visible="false"  />
                                </div>
                            </div>
                           <div class="col-md-6">
                          
                           </div>
                          
                            <div class="col-md-12">
                                <asp:Label ID="lblMsg" class="text-hightlight" runat="server"></asp:Label>
                                 <asp:Label ID="lblId" Visible="false" runat="server"></asp:Label>
                                <asp:Button ID="btnSubmit" class="btn btn-primary btn-lg pull-left" runat="server"
                                    Text="Submit" OnClick="btnSubmit_Click" />
                                <asp:Button ID="btnEdit" class="btn btn-primary btn-lg pull-right" runat="server"
                                    Text="Edit Your Details" OnClick="btnEdit_Click" CausesValidation="false" />
                              
                                <asp:Label ID="lblDate" runat="server" Visible="false"></asp:Label>
                            </div>
                        </asp:Panel>
                    </div>
                </div>
         
            </div>
        </div>
        
    </div>
    <!-- ./page content holder -->
    <!-- ./page content wrapper -->
    </form>
</asp:Content>
