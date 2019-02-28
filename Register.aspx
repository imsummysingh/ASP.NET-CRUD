<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="BasicWeb.Register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Register</title>
    <script>
        function LoadAlert() {
            alert('');
        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1 style="text-align:center; color:red">Registeration Page</h1>
            <table align="center">
                <tr>
                    <td>
                        <asp:Label ID="lbName" runat="server" >Name</asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lbUserName" runat="server">UserName</asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtUserName" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lbPassword" runat="server">Password</asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtPassword" TextMode="Password" onkeypress="return this.value.length<=8" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lbContact" runat="server">Contact Details</asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtContact" runat="server" onkeydown = "return (!(event.keyCode>=65) && event.keyCode!=32);" onkeypress="return this.value.length<=9"></asp:TextBox>
                          
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Button ID="btnRegister" Text="Resgister" OnClick="Register_click" runat="server" />
                    </td>
                    <td>
                        <asp:Button ID="btnCancel" Text="Cancel" OnClick="Cancel_click" runat="server" />
                    </td>
                </tr>
            </table>
        </div>
    </form>
    <br />
    <asp:Label ID="label" runat="server"></asp:Label>
</body>
</html>
