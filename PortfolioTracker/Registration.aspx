<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="PortfolioTracker.Registration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style2 {
            width: 169px;
        }
        .auto-style3 {
            width: 298px;
        }
        .center {
            margin-left: auto;
            margin-right: auto;
        }
        .auto-style4 {
            width: 885px;
        }
        .auto-style5 {
            width: 319px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <center>
            <div>
                <h1>Portfolio Tracker</h1>
                
                <h2>Registration</h2><br />
                <br />
                <table class="auto-style4">
                    <tr>
                        <td class="auto-style2">Name :</td>
                        <td class="auto-style3">
                            <asp:TextBox ID="username" runat="server" Width="290px"></asp:TextBox>
                        </td>
                        <td class="auto-style5">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="username" ErrorMessage="RequiredFieldValidator">*</asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style2">Email:</td>
                        <td class="auto-style3">
                            <asp:TextBox ID="email" runat="server" TextMode="Email" Width="290px"></asp:TextBox>
                        </td>
                        <td class="auto-style5">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="email" ErrorMessage="RequiredFieldValidator" Display="Dynamic">*</asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="email" Display="Dynamic" ErrorMessage="Please Enter Valid Email" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style2">Password:</td>
                        <td class="auto-style3">
                            <asp:TextBox ID="password" runat="server" TextMode="Password" Width="290px"></asp:TextBox>
                        </td>
                        <td class="auto-style5">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="password" ErrorMessage="RequiredFieldValidator">*</asp:RequiredFieldValidator>
                            &nbsp;<asp:CustomValidator ID="passwordvalidation" runat="server" Display="Dynamic" ErrorMessage="Please Enter Valid Password Format" OnServerValidate="passwordvalidation_ServerValidate" ControlToValidate="password"></asp:CustomValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style2">Confirm Password:</td>
                        <td class="auto-style3">
                            <asp:TextBox ID="cpassword" runat="server" TextMode="Password" Width="290px"></asp:TextBox>
                        </td>
                        <td class="auto-style5">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="cpassword" ErrorMessage="RequiredFieldValidator" Display="Dynamic">*</asp:RequiredFieldValidator>
                            &nbsp;
                        <asp:CompareValidator ID="passwordCompare" runat="server" ControlToCompare="password" ControlToValidate="cpassword" Display="Dynamic" ErrorMessage="Password Can't be Different"></asp:CompareValidator>
                            &nbsp;
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style2">&nbsp;</td>
                        <td class="auto-style3">
                            <asp:Button ID="register" runat="server" OnClick="Button1_Click" Text="Register" />
                        </td>
                        <td class="auto-style5">&nbsp;</td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Login.aspx">Already have an Account ? Please Login</asp:HyperLink>
                        </td>
                        <td class="auto-style5">&nbsp;</td>
                    </tr>
                </table>
            </div>
        </center>
    </form>
    <p>
&nbsp;&nbsp;&nbsp;
    </p>
</body>
</html>
