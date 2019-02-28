<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="BasicWeb.BasicWebsite" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">
    <title>Login page</title>
    <script>
        function LoadAlert() {
            alert('');
        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1 style="text-align:center; color:red">Login Page</h1>
            <table align="center">
                <tr>
                    <td>
                        <asp:Label ID="lblUserName" runat="server">UserName</asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtUserName" onkeypress="return this.value.length<=10" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblPassword" runat="server" >Password</asp:Label>
                    </td>
                    <td>
                       <asp:TextBox ID="txtPassword" TextMode="Password" onkeypress="return this.value.length<=8"  runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Button ID="btnLogin" runat="server" Text="Login" OnClick="btnLogin_click" />
                    </td>
                    <td>
                        <asp:Button ID="btnRegister" runat="server" Text="Register" OnClick="btnRegister_click" />
                    </td>
                </tr>

                <tr>
                    <td>
                        <asp:Button ID="btnShowData" runat="server" Text="Show Data" OnClick="btnShowData_click" />
                    </td>
                    <td>
                        <asp:Button ID="btnDeleteData" runat="server" Text="Delete Data" OnClick="btnDeleteData_click" />
                    </td>
                </tr>

            </table>
            <!--<br />-->
            <!--<asp:Label ID="label" runat="server"></asp:Label>-->
        </div>
    </form>
</body>
</html>
