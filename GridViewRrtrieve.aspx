<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="GridViewRrtrieve.aspx.cs" Inherits="BasicWeb.GridViewRrtrieve" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script src="JS/TestJS.js"></script>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div style="width:100%; overflow:scroll;">
                <asp:GridView ID="grid1" runat="server" AutoGenerateColumns="false" CellPadding="4" GridLines="Both" OnRowDeleting="grid1_RowDeleting"
                    OnRowEditing="grid1_RowEditing" OnRowCancelingEdit="grid1_RowCancelingEdit" OnRowUpdating="grid1_RowUpdating"
                    OnRowCommand="grid1_RowCommand1" OnSelectedIndexChanged="grid1_SelectedIndexChanged" DataKeyNames="ID" EmptyDataText="No Data Loaded">
                    <Columns>
                        <asp:BoundField DataField="ID" HeaderText="ID" />
                        <asp:BoundField DataField="FirstName" HeaderText="First Name" />
                        <asp:BoundField DataField="MiddleName" HeaderText="Middle Name" />
                        <asp:BoundField DataField="LastName" HeaderText="Last Name" />
                        <asp:BoundField DataField="DOB" HeaderText="D.O.B" />
                        <asp:BoundField DataField="Gender" HeaderText="Gender" />
                        <asp:BoundField DataField="Nationality" HeaderText="Nationality" />
                        <asp:BoundField DataField="Email" HeaderText="Email-Id" />
                        <asp:BoundField DataField="Mobile" HeaderText="Mobile No" />
                        <asp:BoundField DataField="P1" HeaderText="Permission1" />
                        <asp:BoundField DataField="P2" HeaderText="Permission2" />
                        <asp:BoundField DataField="P3" HeaderText="Permission3" />
                        <asp:BoundField DataField="Password" HeaderText="Password" />
                        <asp:BoundField DataField="ConfirmPassword" HeaderText="Confirm Password" />
                        
                        
                        <%-- <asp:TemplateField HeaderText="ID">
                            <ItemTemplate>
                                <asp:Label ID="lblID" runat="server" Text='<%#Bind("ID")%>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>

                        <asp:TemplateField HeaderText="First Name">
                            <ItemTemplate>
                                <asp:Label ID="lblFirstName" runat="server" Text='<%#Bind("FirstName")%>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>

                        <asp:TemplateField HeaderText="Middle Name">
                            <ItemTemplate>
                                <asp:Label ID="lblMiddleName" runat="server" Text='<%#Bind("MiddleName")%>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>

                        <asp:TemplateField HeaderText="Last Name">
                            <ItemTemplate>
                                <asp:Label ID="lblLastName" runat="server" Text='<%#Bind("LastName")%>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>

                        <asp:TemplateField HeaderText="D.O.B">
                            <ItemTemplate>
                                <asp:Label ID="lblDOB" runat="server" Text='<%#Bind("DOB")%>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>

                        <asp:TemplateField HeaderText="Gender">
                            <ItemTemplate>
                                <asp:Label ID="lblGender" runat="server" Text='<%#Bind("Gender")%>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>

                        <asp:TemplateField HeaderText="Nationality">
                            <ItemTemplate>
                                <asp:Label ID="lblNationality" runat="server" Text='<%#Bind("Nationality")%>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>

                        <asp:TemplateField HeaderText="Email-Id">
                            <ItemTemplate>
                                <asp:Label ID="lblEmail" runat="server" Text='<%#Bind("Email")%>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>

                        <asp:TemplateField HeaderText="Mobile No">
                            <ItemTemplate>
                                <asp:Label ID="lblMob" runat="server" Text='<%#Bind("Mobile")%>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>

                        <asp:TemplateField HeaderText="Permission1">
                            <ItemTemplate>
                                <asp:Label ID="lblPermission1" runat="server" Text='<%#Bind("P1")%>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>

                        <asp:TemplateField HeaderText="Permission2">
                            <ItemTemplate>
                                <asp:Label ID="lblPermission2" runat="server" Text='<%#Bind("P2")%>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>

                        <asp:TemplateField HeaderText="Permission3">
                            <ItemTemplate>
                                <asp:Label ID="lblPermission3" runat="server" Text='<%#Bind("P3")%>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>

                        <asp:TemplateField HeaderText="Password">
                            <ItemTemplate>
                                <asp:Label ID="lblPassword" runat="server" Text='<%#Bind("Password")%>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>

                        <asp:TemplateField HeaderText="Confirm Password">
                            <ItemTemplate>
                                <asp:Label ID="lblConfirmPassword" runat="server" Text='<%#Bind("ConfirmPassword")%>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>

                        <asp:TemplateField HeaderText="Confirm Password">
                            <ItemTemplate>
                                <asp:Label ID="lblConfirmPassword" runat="server" Text='<%#Bind("ConfirmPassword")%>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>

                        <asp:TemplateField HeaderText="Edit">
                            <ItemTemplate>
                                <asp:Button ID="btnEdit" runat="server" Text="Edit" CommandName="Edit" CommandArgument='<%#Bind("ID")%>' />
                            </ItemTemplate>
                        </asp:TemplateField>--%>
                        <asp:CommandField ShowEditButton="true" />
                        <asp:CommandField ShowDeleteButton="true" />
                    </Columns>

                </asp:GridView>
            </div>
            <table align="center">
                <tr>
                    <td>
                        <asp:Button ID="btnLogin" Text="Back to Login" runat="server" OnClick="btnLogin_clicl" />
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
