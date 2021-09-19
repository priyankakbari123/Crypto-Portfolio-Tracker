<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="PortfolioTracker.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 100px;
        }
        .auto-style3 {
            width: 317px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Portfolio Tracker<br />
            <br />
            Login<br />
            <br />
            <table class="auto-style1">
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
            </table>
        </div>
    </form>
</body>
</html>
