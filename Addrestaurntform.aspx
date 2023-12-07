<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Addrestaurntform.aspx.cs" Inherits="yummy.Addrestaurntform" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="admin/assets/css/styles.min.css" />
</head>
<body>
    <form id="form1" runat="server">
        <div style="position: relative;">
            <div style="background-image: url('assets/img/fooditems/bg/bg-4.jpg'); background-position: center; background-size: 100% 100%; background-repeat: no-repeat; position: absolute; top: 0; right: 0; bottom: 0; left: 0; opacity: 0.2;"></div>
            <div>
                <section class="vh-100">
                    <div class="page-wrapper py-5" id="main-wrapper" data-layout="vertical" data-navbarbg="skin6" data-sidebartype="full"
                        data-sidebar-position="fixed" data-header-position="fixed">
                        <div>
                            <div class="w-100">
                                <div class="w-100  px-5 py-3">
                                    <div class="col-12">
                                        <div class="card mb-0">
                                            <div class="card-body">
                                                <a class="text-nowrap logo-img text-center d-block py-3 w-100">
                                                    <img src="admin/assets/images/logos/dark-logo.svg" width="180" alt="">
                                                </a>
                                                <h1 class="text-center">Add Your Restaurant</h1>
                                                <div class="mt-5">
                                                    <div class="row">
                                                        <div class="mb-3 col-12 col-md-3">
                                                            <label for="exampleInputEmail1" class="form-label">Restaurant/Cafe name</label>
                                                            <asp:TextBox ID="restaurantname" runat="server" class="form-control"></asp:TextBox>
                                                        </div>
                                                        <div class="mb-4 col-md-3">
                                                            <label for="exampleInputPassword1" class="form-label">Email</label>
                                                            <asp:TextBox ID="email" runat="server" class="form-control"></asp:TextBox>
                                                        </div>
                                                        <div class="mb-3 col-md-3">
                                                            <label for="exampleInputEmail1" class="form-label">Password</label>
                                                            <asp:TextBox ID="password" runat="server" class="form-control"></asp:TextBox>
                                                        </div>
                                                        <div class="mb-4 col-md-3">
                                                            <label for="exampleInputPassword1" class="form-label">Phone number</label>
                                                            <asp:TextBox ID="phonenumber" runat="server" class="form-control"></asp:TextBox>
                                                        </div>
                                                    </div>
                                                    <div class="row">
                                                        <div class="mb-3 col-md-3">
                                                            <label for="exampleInputEmail1" class="form-label">Website url</label>
                                                            <asp:TextBox ID="weburl" runat="server" class="form-control"></asp:TextBox>
                                                        </div>
                                                        <div class="mb-4 col-md-3">
                                                            <label for="exampleInputPassword1" class="form-label">Address</label>
                                                            <asp:TextBox ID="address" runat="server" class="form-control"></asp:TextBox>
                                                        </div>
                                                        <div class="mb-4 col-md-3">
                                                            <label for="exampleInputPassword1" class="form-label">City</label>
                                                            <asp:TextBox ID="city" runat="server" class="form-control"></asp:TextBox>
                                                        </div>
                                                        <div class="mb-3 col-md-3">
                                                            <label for="exampleInputEmail1" class="form-label">State</label>
                                                            <asp:TextBox ID="state" runat="server" class="form-control"></asp:TextBox>
                                                        </div>
                                                    </div>
                                                    <div class="row">
                                                        <div class="mb-4 col-md-3">
                                                            <label for="opentime" class="form-label">Open time</label>
                                                            <div class="input-group">
                                                                <asp:TextBox ID="opentime" runat="server" CssClass="form-control" TextMode="Time"></asp:TextBox>
                                                            </div>
                                                        </div>
                                                        <div class="mb-3 col-md-3">
                                                            <label for="closetime" class="form-label">Close time</label>
                                                            <div class="input-group">
                                                                <asp:TextBox ID="closetime" runat="server" CssClass="form-control" TextMode="Time"></asp:TextBox>
                                                            </div>
                                                        </div>
                                                    </div>

                                                    <div>
                                                        <div class="w-25">
                                                            <asp:Button ID="addRestaurant" runat="server" Text="Submit" class="btn btn-primary w-100 text-white py-8 fs-4 mb-4 rounded-2" OnClick="addRestaurant_Click" />
                                                        </div>
                                                    </div>

                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </section>
            </div>
        </div>
    </form>
</body>
</html>
