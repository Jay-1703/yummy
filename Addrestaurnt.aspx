<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Addrestaurnt.aspx.cs" Inherits="yummy.Addrestaurnt" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>yummy-Add restaurnt</title>
    <!-- Favicons -->
    <link href="assets/img/favicon.png" rel="icon">
    <link href="assets/img/apple-touch-icon.png" rel="apple-touch-icon">

    <!-- Google Fonts -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Open+Sans:ital,wght@0,300;0,400;0,500;0,600;0,700;1,300;1,400;1,600;1,700&family=Amatic+SC:ital,wght@0,300;0,400;0,500;0,600;0,700;1,300;1,400;1,500;1,600;1,700&family=Inter:ital,wght@0,300;0,400;0,500;0,600;0,700;1,300;1,400;1,500;1,600;1,700&display=swap" rel="stylesheet">

    <link href="assets/css/main.css" rel="stylesheet">
    <link href="assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link href="assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
</head>
<body>
    <form id="form1" runat="server">
        <div style="position: relative; height: 600px; background-color: black">
            <div style="background-image: url('assets/img/fooditems/bg/bg-2.jpg'); background-position: center; background-size: 100% 100%; background-repeat: no-repeat; position: absolute; top: 0; right: 0; bottom: 0; left: 0; opacity: 0.5;">
            </div>

            <div style="position: relative; z-index: 9999">
                <%-- header seaction --%>
                <header id="header" class="header d-flex align-items-center">
                    <div class="container d-flex align-items-center justify-content-between">

                        <a href="index.html" class="logo d-flex align-items-center me-auto me-lg-0 link-underline link-underline-opacity-0">
                            <!-- Uncomment the line below if you also wish to use an image logo -->
                            <!-- <img src="assets/img/logo.png" alt=""> -->

                            <h1>Yummy<span>.</span></h1>
                        </a>
                    </div>
                </header>
                <%-- End header seaction --%>

                <%-- Main seaction --%>
                <div class="text-white d-flex justify-content-center py-5">
                    <div class="text-center fw-bold">
                        <h1 style="font-size: 4rem">Partner with Yummy</h1>
                        <h1 style="font-size: 4rem">at 0% commission.</h1>
                    </div>
                </div>
                <div class="d-flex justify-content-center gap-2">
                    <a href="Addrestaurntform.aspx" type="button" class="btn btn-primary fs-5">Register your restaurnt</a>
                    <a href="Restaurantlogin.aspx" type="button" class="btn btn-light fs-5">Login to view your existing restaurnt</a>
                </div>
                <%-- End main seaction --%>

            </div>
        </div>
        <!-- ======= Footer ======= -->
        <footer id="footer" class="footer">
            <div class="container">
                <div class="copyright">
                    &copy; Copyright <strong><span>Yummy</span></strong>. All Rights Reserved
                </div>
                <div class="credits">
                    <!-- All the links in the footer should remain intact. -->
                    <!-- You can delete the links only if you purchased the pro version. -->
                    <!-- Licensing information: https://bootstrapmade.com/license/ -->
                    <!-- Purchase the pro version with working PHP/AJAX contact form: https://bootstrapmade.com/yummy-bootstrap-restaurant-website-template/ -->
                    Designed by Jay patel</a>
                </div>
            </div>

        </footer>
        <!-- End Footer -->
    </form>
</body>
<script src="assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
<script src="https://code.jquery.com/jquery-3.7.1.js" integrity="sha256-eKhayi8LEQwp4NKxN+CfCh+3qOVUtJn3QNZ0TciWLP4=" crossorigin="anonymous"></script>
</html>
