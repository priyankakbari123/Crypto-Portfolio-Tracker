<%@ Page Async="true" Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="PortfolioTracker.Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-uWxY/CJNBR+1zjPWmfnSnVxwRheevXITnMqoEIeG1LJrdI0GlVs/9cVSyPYXdcSF" crossorigin="anonymous" />
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-kQtW33rZJAHjgefvhyyzcGF3C5TFyBQBA13V1RKPf4uH+bwyzQxZ6CmMZHmNBEfJ" crossorigin="anonymous"></script>

    <style type="text/css">
        .center {
            margin-left: auto;
            margin-right: auto;
        }

        .auto-style1 {
            margin-left: 0px;
        }
        body{
            background-image:url(wwwroot/images/login-bg.jpg);
            
        }
        .card { background-color: rgb(255 255 255 / 0.0); 
                border:0px;
                box-shadow:2px 2px 7px black;
        }
    </style>
    <meta http-equiv="refresh" content="300" />
</head>
<body>
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
        <span class="navbar-brand ml-2">Portfolio Tracker</span>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>

        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav mr-auto">
                <li class="nav-item active">
                    <a class="nav-link" href="#">Home <span class="sr-only"></span></a>
                </li>
                <li class="nav-item">
                    <asp:HyperLink ID="HyperLink1" CssClass="nav-link" runat="server" NavigateUrl="~/Display.aspx">Portfolio</asp:HyperLink>
                </li>
                <li class="nav-item"></li>

            </ul>
            
        </div>
        <span class="text-light float-right px-5">Welcome
                <asp:Label ID="userNameLabel" runat="server" CssClass="text-light"></asp:Label>
            </span>
    </nav>

    <!-- -----------------------------------------  -->
    <center>
        <form id="form1" runat="server">
            <div>

                <br />

                <asp:LinkButton ID="LogoutBtn" CssClass="btn btn-danger" runat="server" OnClick="LogoutBtn_Click" CausesValidation="False">Logout</asp:LinkButton>


                <br />
                <br />
                <h2>Add New Coin</h2>
                <br />
                <div class="card px-5 py-3" style="width: 33rem;">
                <table class="table table-borderless">
                    
                    <tr class="my-5">
                        <td>Coin Name:</td>
                        <td>
                            <asp:DropDownList ID="CoinDropDown" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" CssClass="input-group input-group-sm mb-4" >
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
                          
                        </td>
                    </tr>
                    <tr>
                        <td>Quanity:</td>
                        <td>
                            <asp:TextBox ID="quantityIb" runat="server" CssClass="input-group"></asp:TextBox>
                            &nbsp;
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="quantityIb" ErrorMessage="*Required" BackColor="Red"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td>Buying Price:</td>
                        <td>
                            <asp:TextBox ID="buypriceIb" runat="server" CssClass="input-group"></asp:TextBox>
                            &nbsp;
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="buypriceIb" ErrorMessage="*Required" BackColor="Red"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td>Current Price:</td>
                        <td>
                            <asp:Label ID="CurrentPrice" runat="server" CssClass="input-group"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Button ID="AddBtn" runat="server" Text="Add" OnClick="AddBtn_Click" CssClass="btn btn-primary" />
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                </table>
                    </div>
            </div>
            <p>
                <asp:GridView ID="GridView1" runat="server">
                </asp:GridView>
            </p>
        </form>
    </center>


</body>
</html>
