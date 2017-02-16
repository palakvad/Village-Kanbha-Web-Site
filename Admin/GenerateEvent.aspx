<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.master" AutoEventWireup="true"
    CodeFile="GenerateEvent.aspx.cs" Inherits="GenerateEvent" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
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
                Event Name:</label>
            <div class="formLeft  searchDrop" style="width: 330px">
                <asp:TextBox ID="txttitle" runat="server" CssClass="required" placeholder="Name Which Will be Shown As The Title"
                    Width="100%"></asp:TextBox>
            </div>
        </div>
        <div class="rowElem">
            <label>
                Short Description:</label>
            <div class="formLeft  searchDrop" style="width: 660px">
                <asp:TextBox ID="txtdescription" runat="server" placeholder="Short Description In 2-3 lines"
                    CssClass="required" TextMode="MultiLine" Style="width: 100%; margin: 0px; height: 62px;"></asp:TextBox>
                <div class="fix">
                </div>
            </div>
        </div>
        <div class="rowElem">
            <label>
                Date:</label>
            <div class="formLeft  searchDrop" style="width: 200px">
                <asp:TextBox ID="txtdate" runat="server" CssClass="required" TextMode="SingleLine"
                    placeholder="Eg: 24/10/2013" Width="60%" MaxLength="15"></asp:TextBox>
            </div>
            <label style="padding-left: 10px; width: 115px;">
                Day:</label>
            <div class="formLeft  searchDrop" style="width: 400px">
                <asp:TextBox ID="txtday" runat="server" CssClass="text" TextMode="SingleLine" Style="width: 80%;"
                    MaxLength="20" placeholder="Sunday,Monday.."></asp:TextBox>
            </div>
        </div>
        <div class="rowElem">
            <label>
                Upload Photo :<br />
            </label>
            <div class="formLeft">
                <asp:FileUpload ID="fupPhoto" runat="server" CssClass="fileInput" />
                &nbsp;<asp:Image ID="imgPhoto" runat="server" CssClass="img100" Width="150px" Height="150px" />
                <asp:Label ID="lblPhoto2" runat="server" Text="" CssClass="txtError" Visible="true"></asp:Label>
                <div class="fix">
                </div>
            </div>
        </div>
        <div class="submitForm " style="width: 100%">
            <div style="float: right">
                <asp:Button ID="btnSubmit" runat="server" Text="Submit" CssClass="redBtn" 
                    onclick="btnSubmit_Click" /></div>
            <div style="float: right; padding-top: 5px; padding-right: 10px;">
                <asp:Label ID="lblId" runat="server" Visible="false"></asp:Label>
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
        <asp:Repeater ID="rptr1" runat="server" onitemcommand="rptr1_ItemCommand" >
            <HeaderTemplate>
                <table cellpadding="0" cellspacing="0" border="0" id="Column1" class="display">
                    <thead>
                        <tr>
                            <th align="left">
                                Event Title
                            </th>
                            <th align="left">
                                Date 
                            </th>
                             <th align="left">
                                Image
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
                        <asp:Label ID="lblSupplierCode" runat="server" Text='<%#Eval("Title")%>'></asp:Label>
                    </td>
                    <td>
                        <asp:Label ID="lblSupplierName" runat="server" Text='<%#Eval("Date")%>'></asp:Label>
                    </td>
                 
                    <td>
                        <asp:Image ID="imgImage" runat="server" ImageAlign="Middle" ImageUrl='<%# "~/" + Eval("Image")%>' Height="150px" Width="300px" />
                    </td>
                    <td class="center">
                        <asp:LinkButton ID="lnkbtnEdit" runat="server" CausesValidation="false" CommandArgument='<%# Bind("Id") %>'
                            CommandName="EditGroup" Text="Edit" OnClientClick="javascript:window.scrollTo(150,0);"></asp:LinkButton>
                        |
                        <asp:LinkButton ID="lnkbtnDelete" runat="server" CausesValidation="false" CommandArgument='<%# Bind("Id") %>'
                            CommandName="DeleteGroup" OnClientClick="javascript:return window.confirm('Are You Sure You Want To Delete?')"
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
