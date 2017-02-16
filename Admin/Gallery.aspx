<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.master" AutoEventWireup="true"
    CodeFile="Gallery.aspx.cs" Inherits="Admin_Gallery" %>

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
                Group Name:</label>
           <div class="formLeft" style="width: 200px">
                <asp:DropDownList ID="ddlgroup" runat="server" Width="194px" CssClass="required">
                 <asp:ListItem Value="0">- Select -</asp:ListItem>
                    <asp:ListItem Value="1">General</asp:ListItem>
                    <asp:ListItem Value="2">Navratri</asp:ListItem>
                    <asp:ListItem Value="3">Medo</asp:ListItem>
                    <asp:ListItem Value="4">Ganesh Utsav</asp:ListItem>
                    <asp:ListItem Value="5">Volleyball Tournament</asp:ListItem>
                    <asp:ListItem Value="6">Panchayat</asp:ListItem>
                </asp:DropDownList>
            </div>
        </div>
        <div class="rowElem">
            <label>
                Short Description:</label>
            <div class="formLeft  searchDrop" style="width: 660px">
                <asp:TextBox ID="txtdescription" runat="server" placeholder="Short Description In 1-2 lines"
                    CssClass="required" TextMode="MultiLine" Style="width: 100%; margin: 0px; height: 62px;"></asp:TextBox>
                <div class="fix">
                </div>
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
                <asp:Button ID="btnSubmit" runat="server" Text="Submit" CssClass="redBtn" OnClick="btnSubmit_Click" /></div>
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
        <asp:Repeater ID="rptrgallery" runat="server" OnItemCommand="rptr1_ItemCommand">
            <HeaderTemplate>
                <table cellpadding="0" cellspacing="0" border="0" id="Column1" class="display">
                    <thead>
                        <tr>
                            <th align="left">
                                #
                            </th>
                            <th align="left">
                                Group
                            </th>
                            <th align="left">
                                Image
                            </th>
                            <th>
                                Description
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
                        <asp:Label ID="Label1" runat="server" Text='<%#Eval("Id")%>'></asp:Label>
                    </td>
                    <td>
                        <asp:Label ID="lblSupplierCode" runat="server" Text='<%#Eval("GroupId")%>'></asp:Label>
                    </td>
                    <td>
                        <asp:Image ID="imgImage" runat="server" ImageAlign="Middle" ImageUrl='<%# "~/" + Eval("Image")%>'
                            Height="150px" Width="300px" />
                    </td>
                    <td>
                        <asp:Label ID="lblSupplierName" runat="server" Text='<%#Eval("Description")%>'></asp:Label>
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
