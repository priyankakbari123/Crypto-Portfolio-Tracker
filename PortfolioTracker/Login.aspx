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
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-uWxY/CJNBR+1zjPWmfnSnVxwRheevXITnMqoEIeG1LJrdI0GlVs/9cVSyPYXdcSF" crossorigin="anonymous" />
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-kQtW33rZJAHjgefvhyyzcGF3C5TFyBQBA13V1RKPf4uH+bwyzQxZ6CmMZHmNBEfJ" crossorigin="anonymous"></script>
    <link rel="shortcut icon" href="wwwroot/images/fav.png" type="image/x-icon" />
    <link href="https://fonts.googleapis.com/css?family=Josefin+Sans:300,400,600,700" rel="stylesheet" />
    <link rel="shortcut icon" href="wwwroot/images/fav.jpg" />
    <link rel="stylesheet" href="wwwroot/css/bootstrap.min.css" />
    <link rel="stylesheet" href="wwwroot/css/fontawsom-all.min.css" />
    <link rel="stylesheet" type="text/css" href="wwwroot/css/style.css" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="container-fluid">
            <div class="container">
                <div class="col-xl-10 col-lg-11 login-container">
                    <div class="row">
                        <div class="col-lg-7 img-box">
                            <img src="wwwroot/images/login-banner.jpg" alt="" />
                        </div>
                        <div class="col-lg-5 no-padding">
                            <div class="login-box">
                                <h5>Welcome Back!</h5>

                                <div class="login-row row no-margin">
                                    <br />
                                    <asp:TextBox ID="lemail" runat="server" TextMode="Email" placeholder="Email" CssClass="form-control form-control-sm"></asp:TextBox>
                                    <br />
                                    <asp:RequiredFieldValidator ID="lemailValidator" runat="server" ControlToValidate="lemail" ErrorMessage="" ForeColor="Red">*</asp:RequiredFieldValidator>

                                    <!--<input type="email" class="form-control form-control-sm"/>-->

                                </div>
                                <div class="login-row row no-margin">
                                    <br />
                                    <asp:TextBox ID="lpassword" runat="server" TextMode="Password" placeholder="Password" CssClass="form-control form-control-sm"></asp:TextBox>
                                    <br />
                                    <asp:RequiredFieldValidator ID="lpasswordValidator" runat="server" ControlToValidate="lpassword" ErrorMessage="" ForeColor="Red">*</asp:RequiredFieldValidator>

                                    <!--<input type="email" class="form-control form-control-sm"/>-->

                                </div>


                                <div class="login-row btnroo row no-margin">
                                    <asp:Button ID="LoginBtn" runat="server" Text="Login" OnClick="LoginBtn_Click" ForeColor="Black" CssClass="btn btn-primary btn-sm" />
                                </div>
                                <br />
                                <asp:Label ID="UsernamePasswordError" runat="server"></asp:Label><br />
                                <asp:HyperLink ID="HyperLink1" runat="server" CssClass="btn btn-primary btn-sm " NavigateUrl="~/Registration.aspx">Don't have Account?  Create New</asp:HyperLink>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </form>

    <!------------------------------------------------------ -->


</body>
<script src="wwwroot/js/jquery-3.2.1.min.js"></script>
<script src="wwwroot/js/popper.min.js"></script>
<script src="wwwroot/js/bootstrap.min.js"></script>
<script src="wwwroot/plugins/scroll-fixed/jquery-scrolltofixed-min.js"></script>
<script src="wwwroot/js/script.js"></script>
</html>
