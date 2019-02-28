<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Delete Data.aspx.cs" Inherits="BasicWeb.Delete_Data" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>

    <h1 style="text-align:center; color:red">Delete Your DATA Here</h1>

    <form id="form1" runat="server">
        <div style="text-align:center">

            <asp:Label ID="lbFirstName" runat="server">Enter First Name:</asp:Label>
            <asp:TextBox ID="txtFirstName" runat="server"></asp:TextBox>
            <br />
            <asp:Button ID="btnDelete" Text="Delete Data" runat="server" />
        </div>
    </form>
</body>
</html>
