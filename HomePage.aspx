<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="HomePage.aspx.cs" Inherits="BasicWeb.HomePage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Home Page</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1 style="background-color:red; text-align:center">Homepage</h1>
            <h3 style="color:brown; text-align:center">Welcome to the HomePage of this Simple Website</h3>
            <table align="center">
                <tr>
                    <td style="align-content:center">
                        <asp:Button ID="btnExit" Text="Exit" OnClick="btnExit_click" runat="server" />
                    </td>
                    <td style="align-content:center">
                        <asp:Button ID="btnShowDetails" Text="Show Details" runat="server" OnClick="btnShowDetails_Click" />
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
