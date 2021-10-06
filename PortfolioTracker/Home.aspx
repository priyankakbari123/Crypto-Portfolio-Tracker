<%@ Page Async="true" Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="PortfolioTracker.Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    
    <style type="text/css">
        .center {
            margin-left: auto;
            margin-right: auto;
        }
        .auto-style1 {
            margin-left: 0px;
        }
    </style>
    <meta http-equiv="refresh" content="300" >
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
                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Display.aspx">Portfolio</asp:HyperLink>
                &nbsp;&nbsp;&nbsp;
                <asp:LinkButton ID="LogoutBtn" runat="server" OnClick="LogoutBtn_Click" CausesValidation="False">Logout</asp:LinkButton>
                &nbsp;
                <br />
                <br />
                <h2>Add New Coin</h2>
                <br />
                <table class="center">
                    <tr>
                        <td>Coin Name:</td>
                        <td>
                            <asp:DropDownList ID="CoinDropDown" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" CssClass="auto-style1">
                                <asp:ListItem>Select Coin</asp:ListItem>
                                <asp:ListItem>BTCUSDT</asp:ListItem>
                                <asp:ListItem>BNBUSDT</asp:ListItem>
                                <asp:ListItem>ETHUSDT</asp:ListItem>
                                <asp:ListItem>ADAUSDT</asp:ListItem>
                                <asp:ListItem>XRPUSDT</asp:ListItem>
                                <asp:ListItem>SOLUSDT</asp:ListItem>
                                <asp:ListItem>DOTUSDT</asp:ListItem>
                                <asp:ListItem>DOGEUSDT</asp:ListItem>
                                <asp:ListItem>AVAXUSDT</asp:ListItem>
                                <asp:ListItem>VETUSDT</asp:ListItem>
                            </asp:DropDownList>
                            &nbsp;
                        </td>
                    </tr>
                    <tr>
                        <td>Quanity:</td>
                        <td>
                            <asp:TextBox ID="quantityIb" runat="server"></asp:TextBox>
                            &nbsp;
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="quantityIb" ErrorMessage="*Required" BackColor="Red"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td>Buying Price:</td>
                        <td>
                            <asp:TextBox ID="buypriceIb" runat="server"></asp:TextBox>
                            &nbsp;
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="buypriceIb" ErrorMessage="*Required" BackColor="Red"></asp:RequiredFieldValidator>
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
                            <asp:Button ID="AddBtn" runat="server" Text="Add" OnClick="AddBtn_Click" />
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                </table>
            </div>
             <p>
        <asp:GridView ID="GridView1" runat="server">
        </asp:GridView>
    </p>
        </form>
    </center>
    
   
    </body>
</html>
