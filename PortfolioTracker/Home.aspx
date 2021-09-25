<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="PortfolioTracker.Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .center {
            margin-left: auto;
            margin-right: auto;
        }
    </style>
</head>
<body>
    <center>
        <form id="form1" runat="server">
            <div>
                Portfolio Tracker<br />
                <br />
                Welcome&nbsp;
            <asp:Label ID="userNameLabel" runat="server"></asp:Label>
                &nbsp;&nbsp;&nbsp;
                <asp:LinkButton ID="LogoutBtn" runat="server" OnClick="LogoutBtn_Click" CausesValidation="False">Logout</asp:LinkButton>
                <br />
                <br />
                <h2>Add New Coin</h2>
                <br />
                <table class="center">
                    <tr>
                        <td>Coin Name:</td>
                        <td>
                            <asp:DropDownList ID="DropDownList1" runat="server">
                            </asp:DropDownList>
                            &nbsp;
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="DropDownList1" ErrorMessage="*Required" BackColor="Red"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td>Quanity:</td>
                        <td>
                            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                            &nbsp;
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox1" ErrorMessage="*Required" BackColor="Red"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td>Buying Price:</td>
                        <td>
                            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                            &nbsp;
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox2" ErrorMessage="*Required" BackColor="Red"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td>Current Price:</td>
                        <td>
                            <asp:Label ID="CurrentPrice" runat="server"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Button ID="AddBtn" runat="server" Text="Add" />
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                </table>
            </div>
        </form>
    </center>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [Coin], [Quantity], [BuyPrice], [TotalInvested] FROM [PortfolioDetails] WHERE ([UesrId] = @UesrId)">
        <SelectParameters>
            <asp:SessionParameter Name="UesrId" SessionField="UserId" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
    <p>
        &nbsp;</p>
</body>
</html>
