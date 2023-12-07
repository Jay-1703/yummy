<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="signin.aspx.cs" Inherits="yummy.admin.signin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Modernize Free</title>
    <link rel="shortcut icon" type="image/png" href="assets/images/logos/favicon.png" />
    <link rel="stylesheet" href="assets/css/styles.min.css" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="page-wrapper" id="main-wrapper" data-layout="vertical" data-navbarbg="skin6" data-sidebartype="full"
            data-sidebar-position="fixed" data-header-position="fixed">
            <div
                class="position-relative overflow-hidden radial-gradient min-vh-100 d-flex align-items-center justify-content-center">
                <div class="d-flex align-items-center justify-content-center w-100">
                    <div class="row justify-content-center w-100">
                        <div class="col-md-8 col-lg-6 col-xxl-3">
                            <div class="card mb-0">
                                <div class="card-body">
                                    <a href="index.aspx" class="text-nowrap logo-img text-center d-block py-3 w-100">
                                        <img src="assets/images/logos/dark-logo.svg" width="180" alt="" />
                                    </a>
                                    <p class="text-center">Your Social Campaigns</p>
                                    <div>
                                        <div class="mb-3">
                                            <label for="exampleInputEmail1" class="form-label">Email Address</label>
                                            <asp:TextBox ID="userEmail" runat="server" class="form-control" type="email" aria-describedby="emailHelp"></asp:TextBox>
                                        </div>
                                        <div class="mb-4">
                                            <label for="exampleInputPassword1" class="form-label">Password</label>
                                            <asp:TextBox ID="userPassword" runat="server" class="form-control" type="password" aria-describedby="textHelp"></asp:TextBox>
                                        </div>

                                        <a href="index.aspx" class="btn text-white btn-primary w-100 text-white py-8 fs-4 mb-4 rounded-2">Sign In</a>
                                        <div class="d-flex align-items-center justify-content-center">
                                            <p class="fs-4 mb-0 fw-bold">Don't have a account?</p>
                                            <a class="fw-bold ms-2" href="signup.aspx">Create an account</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </form>
</body>
<script src="assets/libs/jquery/dist/jquery.min.js"></script>
<script src="assets/libs/bootstrap/dist/js/bootstrap.bundle.min.js"></script>
</html>
