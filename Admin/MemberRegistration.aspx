<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.master" AutoEventWireup="true" CodeFile="MemberRegistration.aspx.cs" Inherits="Admin_MemberRegistration" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
 <script type="text/javascript">
     $("#form1").validate();
    </script>
    <div class="widget">
        <div class="head">
            <h5 class="iList">
                Add Record</h5>
        </div>
        <div class="rowElem noborder">
            <label style="width: 115px;">
                Full Name:</label>
            <div class="formLeft  searchDrop" style="width: 330px">
                <asp:TextBox ID="txtName" runat="server" CssClass="required" placeholder="Name Which Will be Shown As The Member's Name"
                    Width="100%"></asp:TextBox>
            </div>
        </div>
        <div class="rowElem">
            <label>
                Mobile Nuber:</label>
            <div class="formLeft  searchDrop" style="width: 300px">
                <asp:TextBox ID="txtMobile" runat="server" CssClass="required" TextMode="SingleLine"
                    Width="60%" MaxLength="10"></asp:TextBox>
            </div>
            <label style="padding-left: 10px; width: 115px;">
                Whatsapp Number:</label>
            <div class="formLeft  searchDrop" style="width: 300px">
                <asp:TextBox ID="txtWhatsapp" runat="server" CssClass="text" TextMode="SingleLine" Style="width: 60%;"
                    MaxLength="10" placeholder="Whatsapp Mobile Number"></asp:TextBox>
            </div>
        </div>
        <div class="rowElem">
            <label>
                Address:</label>
            <div class="formLeft  searchDrop" style="width: 660px">
                <asp:TextBox ID="txtAddress" runat="server" placeholder="Recent Address"
                    CssClass="required" TextMode="MultiLine" Style="width: 100%; margin: 0px; height: 62px;"></asp:TextBox>
                <div class="fix">
                </div>
            </div>
        </div>
        <div class="rowElem">
            <label>
                Home At Village:</label>
           <div class="formLeft" style="width: 200px">
                <asp:DropDownList ID="ddlHome" runat="server" Width="194px" CssClass="required">
            
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
            <label style="padding-left: 10px; width: 115px;">
                Blood Group:</label>
            <div class="formLeft" style="width: 200px">
              <asp:DropDownList ID="ddlBlood" runat="server" CssClass="required selector"
                    Width="205px">
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
         <div class="rowElem">
            <label>
                Education:</label>
            <div class="formLeft  searchDrop" style="width: 200px">
                <asp:TextBox ID="txtEducation" runat="server" CssClass="required" TextMode="SingleLine"
                  Width="60%"></asp:TextBox>
            </div>
            <label style="padding-left: 10px; width: 115px;">
                Occupation:</label>
           <div class="formLeft" style="width: 200px">
               <asp:DropDownList ID="ddlOccupation" runat="server" CssClass="required selector"
                    Width="205px">
                   
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
        <div class="rowElem">
            <label>
                Password:</label>
            <div class="formLeft  searchDrop" style="width: 200px">
                <asp:TextBox ID="txtPassword" runat="server" CssClass="required" TextMode="Password"
                    Width="80%" ></asp:TextBox>
            </div>
         
        </div>
        <div class="rowElem">
            <label>
                Upload Photo :<br />
            </label>
            <div class="formLeft">
                <asp:FileUpload ID="fupImage" runat="server" CssClass="fileInput" />
                &nbsp;<asp:Image ID="imgImage" runat="server" CssClass="img100" Width="150px" Height="150px" />
                <asp:Label ID="lblPhoto2" runat="server" Text="" CssClass="txtError" Visible="true"></asp:Label>
                <div class="fix">
                </div>
            </div>
        </div>
        <div class="submitForm " style="width: 100%">
            <div style="float: right">
                <asp:Button ID="btnSubmit" runat="server" Text="Submit" CssClass="redBtn" onclick="btnSubmit_Click" 
                    /></div>
            <div style="float: right; padding-top: 5px; padding-right: 10px;">
                <asp:Label ID="lblId" runat="server" Visible="false"></asp:Label>
                <asp:Label ID="lblDate" runat="server" Visible="false"></asp:Label>
                <asp:Label ID="lblMsg" runat="server" Text="" CssClass="txtError"></asp:Label></div>
        </div>
        <div class="fix">
        </div>
    </div>
    <div style="width: 100%; text-align: center; padding-top: 10px;">
        <asp:Label ID="lblDeleteMsg" runat="server" Text="" CssClass="txtError"></asp:Label>
    </div>

    <div class="table">
        <div class="head">
            <h5 class="iFrames">
                All Record
            </h5>
        </div>
        <asp:Repeater ID="rptr" runat="server" onitemcommand="rptr_ItemCommand" >
            <HeaderTemplate>
                <table cellpadding="0" cellspacing="0" border="0" id="Column1" class="display">
                    <thead>
                        <tr>
                            <th align="left">
                                Name
                            </th>
                            <th align="left">
                                Mobile # 
                            </th>
                             <th align="left">
                                LoginId
                            </th>
                              <th align="left">
                                Password
                            </th>                           
                            <th>
                                Action
                            </th>
                        </tr>
                    </thead>
                    <tbody>
            </HeaderTemplate>
            <ItemTemplate>
                <tr class="gradeA">
                    <td>
                        <asp:Label ID="lblSupplierCode" runat="server" Text='<%#Eval("Name")%>'></asp:Label>
                    </td>
                    <td>
                        <asp:Label ID="lblSupplierName" runat="server" Text='<%#Eval("Mobile")%>'></asp:Label>
                    </td>
                 
                    <td>
                        <asp:Label ID="Label1" runat="server" Text='<%#Eval("LoginId")%>'></asp:Label>
                    </td>
                     <td>
                        <asp:Label ID="Label2" runat="server" Text='<%#Eval("Password")%>'></asp:Label>
                    </td>
                    <td class="center">
                        <asp:LinkButton ID="lnkbtnEdit" runat="server" CausesValidation="false" CommandArgument='<%# Bind("Id") %>'
                            CommandName="Edit" Text="Edit" OnClientClick="javascript:window.scrollTo(150,0);"></asp:LinkButton>
                        |
                        <asp:LinkButton ID="lnkbtnDelete" runat="server" CausesValidation="false" CommandArgument='<%# Bind("Id") %>'
                            CommandName="Delete" OnClientClick="javascript:return window.confirm('Are You Sure You Want To Delete?')"
                            Text="Delete"></asp:LinkButton>
                    </td>
                </tr>
            </ItemTemplate>
            <FooterTemplate>
                </tbody> </table>
            </FooterTemplate>
        </asp:Repeater>
    </div>
</asp:Content>

