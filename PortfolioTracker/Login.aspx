<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="PortfolioTracker.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style2 {
            width: 100px;
        }
        .auto-style3 {
            width: 353px;
        }
        .center {
            margin-left: auto;
            margin-right: auto;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <center>
            <div>
                <h1>Portfolio Tracker</h1>
                <h2>Login</h2>
                <br />
                <br />
                <table class="center ">
                    <tr>
                        <td class="auto-style2">Email:</td>
                        <td class="auto-style3">
                            <asp:TextBox ID="lemail" runat="server" TextMode="Email" Width="304px"></asp:TextBox>
                        </td>
                        <td>
                            <asp:RequiredFieldValidator ID="lemailValidator" runat="server" ControlToValidate="lemail" ErrorMessage="RequiredFieldValidator">*</asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style2">Password</td>
                        <td class="auto-style3">
                            <asp:TextBox ID="lpassword" runat="server" TextMode="Password" Width="305px"></asp:TextBox>
                        </td>
                        <td>
                            <asp:RequiredFieldValidator ID="lpasswordValidator" runat="server" ControlToValidate="lpassword" ErrorMessage="RequiredFieldValidator">*</asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style2">&nbsp;</td>
                        <td class="auto-style3">
                            <asp:Button ID="LoginBtn" runat="server" Text="Login" OnClick="LoginBtn_Click" />
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style2">&nbsp;</td>
                        <td class="auto-style3">
                            <asp:Label ID="UsernamePasswordError" runat="server"></asp:Label>
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style2">&nbsp;</td>
                        <td class="auto-style3">
                            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Registration.aspx">Don&#39;t have an Account ? Click here</asp:HyperLink>
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                </table>
            </div>
        </center>
    </form>
</body>
</html>
