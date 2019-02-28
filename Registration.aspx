<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="BasicWeb.Registration" %>

<!DOCTYPE html>

<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Registration Page</title>
    <!-- <script>
        function pop() {
            alert('');
        }
    </script>-->

    <script type="text/javascript">
        $(document).ready(function () {
            $('#btnRegister').click(function () {
                //var event = (evt) ? evt : window.event;
                //event.preventDefault();
                var checkedCBCount = $('input[type="checkbox"]:checked').length;
                if (checkedCBCount > 0) {
                    return true;
                }
                alert('please select at least one permisiion level.');
                return false;
            });
        });

        var strFirstName = document.getElementById("txtFirstName").value;
            if (strFirstName.length > 50) {
                alert('First Name should be less than 50 characters.');
                return false;
        }

        var strMiddleName = document.getElementById("txtMiddleName").value;
            if (strMiddleName.length > 50) {
                alert('Middle Name should be less than 50 characters.');
                return false;
        }

        var strLastName = document.getElementById("txtLastName").value;
            if (strLastName.length > 50) {
                alert('Last Name should be less than 50 characters.');
                return false;
        }

        var strEmailId = document.getElementById("txtEmail").value;
            if (strEmailId.length > 50) {
                alert('Email Id should be less than 50 characters.');
                return false;
        }

        var strPassword = document.getElementById("txtPassword").value;
            if (strFirstName.length > 50) {
                alert('Password should be less than 50 characters.');
                return false;
        }

        //$('#btnRegister').click(function () {
        //    //var event = (evt) ? evt : window.event;
        //    //event.preventDefault();
        //    var checkedCBCount = $('input[type="checkbox"]:checked').length;
        //    if (checkedCBCount > 0) {
        //        return true;
        //    }
        //    return false;
        //});
    </script>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1 style="color: red; text-align: center">Registration</h1>
            <table align="center">
                <tr>
                    <td>
                        <asp:HiddenField runat="server" ID="hdnID" Value="0"/>
                        <asp:Label ID="lbFirstName" runat="server">First Name:</asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtFirstName" onkeypress="return this.value.length<=10" runat="server" required="required"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lbMiddleName" runat="server">Middle Name:</asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtMiddleName" onkeypress="return this.value.length<=10" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lbLastName" runat="server">Last Name:</asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtLastName" onkeypress="return this.value.length<=10" runat="server" required="required"></asp:TextBox>
                   </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lbDOB" runat="server">D.O.B</asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtDOB" TextMode="Date" runat="server" onkeypress="return false" required="required"></asp:TextBox>

                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lbGender" runat="server">Gender</asp:Label>
                    </td>
                    <td>
                        <asp:RadioButton ID="rdoMale" GroupName="Gender" runat="server" Text="Male" Checked="true" />
                        <asp:RadioButton ID="rdoFemale" GroupName="Gender" runat="server" Text="Female" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lbNationality" runat="server">Nationality</asp:Label>
                    </td>
                    <td>
                        <asp:DropDownList ID="ddNationality" required="required" runat="server">
                            <asp:ListItem Value="">--Select Nation--</asp:ListItem>
                            <asp:ListItem Value="India">India</asp:ListItem>
                            <asp:ListItem Value="Pakistan">Pakistan</asp:ListItem>
                            <asp:ListItem Value="Nepal">Nepal</asp:ListItem>
                            <asp:ListItem Value="Bangladesh">Bangladesh</asp:ListItem>
                            <asp:ListItem Value="SriLanka">SriLanka</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lbEmail" runat="server">Email id:</asp:Label>
                    </td>
                    <td colspan="2">
                        <asp:TextBox ID="txtEmail" runat="server" required="required"></asp:TextBox>
                        <asp:RegularExpressionValidator ID="RegExp1" ForeColor="Red" ControlToValidate="txtEmail" runat="server" ValidationExpression="^([\w-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([\w-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$"
                            Display="Dynamic" ErrorMessage="Invalid email address"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lbMobNo" runat="server">Mob No:</asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtMobNo" runat="server" required="required" onkeydown="return (!(event.keyCode>=65) && event.keyCode!=32);" onkeypress="return this.value.length<=9"></asp:TextBox>
                        <asp:RegularExpressionValidator ID="RegExp12" ForeColor="Red" runat="server"
                            ControlToValidate="txtMobNo" ErrorMessage="Enter valid Mob No"
                            Display="Dynamic"
                            ValidationExpression="[0-9]{10}"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lbPermission" runat="server">Permission</asp:Label>
                    </td>
                    <td>
                        <asp:CheckBox ID="ChP1" runat="server" Text="P1" Checked="true" required="required" class="cbPerm" />
                        <asp:CheckBox ID="ChP2" runat="server" Text="P2" required="required" class="cbPerm" />
                        <asp:CheckBox ID="ChP3" runat="server" Text="P3" required="required" class="cbPerm" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lbPassword" runat="server">Password:</asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtpassword" required="required" TextMode="Password" runat="server" onkeypress="return this.value.length<=8"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lbConfirmPassword" runat="server">Confirm Password:</asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtConfirmPassword" required="required" TextMode="Password" runat="server" onkeypress="return this.value.length<=8"></asp:TextBox>
                        <asp:CompareValidator ID="CompareValidator1" runat="server"
                            ControlToValidate="txtConfirmPassword"
                            CssClass="ValidationError"
                            ControlToCompare="txtpassword"
                            ForeColor="#FF3300"
                            Display="Dynamic"
                            ErrorMessage="Password Must be same!">
                        </asp:CompareValidator>


                    </td>
                </tr>
                <tr align="center">
                    <td colspan="2">
                        <asp:Button ID="btnReset" Text="Reset" runat="server" OnClick="btnReset_click" />
                        <asp:Button ID="btnRegister" Text="Register" runat="server" OnClick="btnRegister_click" />
                        <asp:Button ID="btnLogin" Text="Login" runat="server" OnClick="btnLogin_click" />
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
