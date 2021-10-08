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
                                <h5>Registration</h5>

                                <div class="login-row row no-margin">
                                    <br />
                                    <asp:TextBox ID="username" runat="server" placeholder="UserName" CssClass="form-control form-control-sm"></asp:TextBox>
                                    <br />
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="username" ErrorMessage="RequiredFieldValidator" ForeColor="Red">*</asp:RequiredFieldValidator>
                                    <!--<input type="email" class="form-control form-control-sm"/>-->
                                </div>
                                <div class="login-row row no-margin">
                                    <br />
                                    <asp:TextBox ID="email" runat="server" placeholder="Email" TextMode="Email" CssClass="form-control form-control-sm"></asp:TextBox>

                                    <br />
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="email" ErrorMessage="RequiredFieldValidator" Display="Dynamic">*</asp:RequiredFieldValidator>
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="email" Display="Dynamic" ErrorMessage="Please Enter Valid Email" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>

                                    <!--<input type="email" class="form-control form-control-sm"/>-->

                                </div>
                                <div class="login-row row no-margin">
                                    <br />
                                    <asp:TextBox ID="password" runat="server" placeholder="Password" TextMode="Password" CssClass="form-control form-control-sm"></asp:TextBox>

                                    <br />
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="password" ErrorMessage="RequiredFieldValidator">*</asp:RequiredFieldValidator>
                                    &nbsp;<asp:CustomValidator ID="passwordvalidation" runat="server" Display="Dynamic" ErrorMessage="Please Enter Valid Password Format" OnServerValidate="passwordvalidation_ServerValidate" ControlToValidate="password"></asp:CustomValidator>

                                    <!--<input type="email" class="form-control form-control-sm"/>-->

                                </div>
                                <div class="login-row row no-margin">
                                    <asp:TextBox ID="cpassword" runat="server" placeholder="Confirm Password" TextMode="Password" CssClass="form-control form-control-sm"></asp:TextBox>
                                    <br />
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="cpassword" ErrorMessage="RequiredFieldValidator" Display="Dynamic">*</asp:RequiredFieldValidator>
                                    &nbsp;
                                    <asp:CompareValidator ID="passwordCompare" runat="server" ControlToCompare="password" ControlToValidate="cpassword" Display="Dynamic" ErrorMessage="Password Can't be Different"></asp:CompareValidator>
                                    
                                    <!--<input type="email" class="form-control form-control-sm"/>-->

                                </div>

                                <div class="login-row btnroo row no-margin">
                                    <asp:Button ID="register" runat="server" OnClick="Button1_Click" Text="Register" CssClass="btn btn-primary btn-sm" BorderColor="blue" ForeColor="White" BackColor="Red" />
                                </div>
                                <br />


                                <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/Login.aspx" CssClass="btn btn-primary btn-sm">Already have an Account ? Please Login</asp:HyperLink>

                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </form>
    <p>
        &nbsp;&nbsp;&nbsp;
    </p>
</body>
</html>
