<%@ Page Language="C#" Async="true" AutoEventWireup="true" CodeBehind="Display.aspx.cs" Inherits="PortfolioTracker.Display" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <meta http-equiv="refresh" content="300"/>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-uWxY/CJNBR+1zjPWmfnSnVxwRheevXITnMqoEIeG1LJrdI0GlVs/9cVSyPYXdcSF" crossorigin="anonymous" />
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-kQtW33rZJAHjgefvhyyzcGF3C5TFyBQBA13V1RKPf4uH+bwyzQxZ6CmMZHmNBEfJ" crossorigin="anonymous"></script>

    <style>
        body{
            background-image:url(wwwroot/images/login-bg.jpg);
            
        }
        .card { background-color: rgb(255 255 255 / 0.0); 
                border:0px;
                
        }
        .table{
            box-shadow:2px 2px 5px black;
        }
        
    </style>
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
                    <a class="nav-link" >Portfolio <span class="sr-only"></span></a>
                </li>
                <li class="nav-item ">
                    
                    <asp:HyperLink ID="HyperLink2" CssClass="nav-link" runat="server" NavigateUrl="~/Home.aspx">Add New Coin</asp:HyperLink>
                </li>
                
                <li class="nav-item"></li>

            </ul>
            
        </div>
        
    </nav>


    <!-- ---------------------------------------------------------  -->


    <div class="container">
        <form id="form1" runat="server">
            <div class="card my-5">
                <asp:Button ID="Button1" runat="server" CssClass="btn btn-dark my-3" OnClick="Button1_Click" Text="Add New Coin" />
                <br />
                <br />
                <asp:GridView ID="GridView1" runat="server" CssClass="table table-bordered table-hover table-responsive" BorderColor="Black" BorderStyle="Solid" BorderWidth="2px" CellPadding="4" CellSpacing="4">
                </asp:GridView>
                <br />
                <br />
                <br />
            </div>
        </form>
    </div>
</body>
</html>
