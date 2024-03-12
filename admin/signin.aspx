<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="signin.aspx.cs" Inherits="yummy.admin.signin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Yummy</title>
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
                                    <h1 class="text-center">Yummy<span>.</span></h1>
                                    <div>
                                        <div class="mb-3">
                                            <label for="exampleInputEmail1" class="form-label">Email Address</label>
                                            <asp:TextBox ID="userEmail" runat="server" class="form-control" type="email" aria-describedby="emailHelp"></asp:TextBox>
                                        </div>
                                        <div class="mb-4">
                                            <label for="exampleInputPassword1" class="form-label">Password</label>
                                            <asp:TextBox ID="userPassword" runat="server" class="form-control" type="password" aria-describedby="textHelp"></asp:TextBox>
                                        </div>
                                        <asp:Button ID="loginBtn" runat="server" Text="Sign In" class="btn text-white btn-primary w-100 text-white py-8 fs-4 mb-4 rounded-2" OnClick="loginBtn_Click1" />
     
                                        <div class="d-flex align-items-center justify-content-center">
                                            <p class="fs-4 mb-0 fw-bold">Don't have an Account?</p>
                                            <a class="fw-bold ms-2" href="signup.aspx">Sign Up</a>
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
