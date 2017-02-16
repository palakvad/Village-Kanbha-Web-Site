<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.master" AutoEventWireup="true" CodeFile="Suggetions.aspx.cs" Inherits="Admin_Suggetions" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
 <div class="table">
        <div class="head">
            <h5 class="iFrames">
                All Record
            </h5>
        </div>
        <asp:Repeater ID="rptr" runat="server" OnItemCommand="rptr_ItemCommand">
            <HeaderTemplate>
                <table cellpadding="0" cellspacing="0" border="0" id="Column5" class="display">
                    <thead>
                        <tr>
                            <th align="left">
                                #
                            </th>
                            <th align="left">
                                 Date
                            </th>
                            <th align="left">
                                Name
                            </th>
                            <th align="left">
                                Contact
                            </th>
                            <th align="left">
                                Message
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
                        <asp:Label ID="lblSupplierCode" runat="server" Text='<%#Eval("Id")%>'></asp:Label>
                    </td>
                    <td>
                        <asp:Label ID="lblSupplierName" runat="server" Text='<%#Eval("Date")%>'></asp:Label>
                    </td>
                    <td>
                        <asp:Label ID="lblAddress" runat="server" Text='<%#Eval("Name")%>'></asp:Label>
                    </td>
                    <td>
                        <asp:Label ID="lblContactNo" runat="server" Text='<%#Eval("Contact")%>'></asp:Label>
                    </td>
                    <td>
                        <asp:Label ID="lblEmail" runat="server" Text='<%#Eval("Message")%>'></asp:Label>
                    </td>
                  
                    <td class="center">
                      
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

