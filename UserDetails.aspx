<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UserDetails.aspx.cs" Inherits="BasicWeb.UserDetails" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="frmUserDetails" runat="server">
        <div id="panel" style="height: 500px; background-color: White; padding: 10px; overflow: auto">
            <h1>
                <a href="../Homepage.aspx">Back </a>| User Details
            </h1>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" Width="400px"
                OnRowDataBound="GridView1_RowDataBound" OnRowCreated="GridView1_RowCreated">
                <Columns>
                    <asp:BoundField DataField="Id" HeaderText="User ID"  />
                    <asp:BoundField DataField="Name" HeaderText="Name" />
                    <asp:BoundField DataField="Contact" HeaderText="Contact" />
                </Columns>
            </asp:GridView>
        </div>
    </form>
</body>
</html>
