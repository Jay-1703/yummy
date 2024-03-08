<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.Master" AutoEventWireup="true" CodeBehind="Addfooditems.aspx.cs" Inherits="yummy.admin.Addfooditems" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Add items</title>
    <link rel="shortcut icon" type="image/png" href="assets/images/logos/favicon.png" />
    <link rel="stylesheet" href="assets/css/styles.min.css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="page-wrapper" id="main-wrapper" data-layout="vertical" data-navbarbg="skin6" data-sidebartype="full"
        data-sidebar-position="fixed" data-header-position="fixed">
        <div class="overflow-hidden my-9 radial-gradient">
            <div class="w-100 my-9">
                <div class="w-100 px-5 py-3">
                    <div class="col-12">
                        <div class="card mb-0">
                            <div class="card-body">
                                <a href="index.aspx" class="text-nowrap logo-img text-center d-block py-3 w-100">
                                    <%--<img src="assets/images/logos/dark-logo.svg" width="180" alt="">--%>
                                </a>
                                <h3 class="text-center my-4">Add Your category</h3>
                                <div>
                                    <div class="row">
                                        <div class="mb-3 col-6 offset-3">
                                            <label for="exampleInputtext1" class="form-label">Category name</label>
                                            <asp:TextBox ID="categoryname" runat="server" class="form-control"></asp:TextBox>
                                        </div>
                                    </div>
                                    <%--<div class="row">
                                        <div class="mb-4 col-6">
                                            <label for="exampleInputPassword1" class="form-label">Item quantity</label>
                                            <asp:TextBox ID="quantity" runat="server" class="form-control"></asp:TextBox>
                                        </div>
                                        <div class="mb-4 col-6">
                                            <label for="exampleInputPassword1" class="form-label">Product price</label>
                                            <asp:TextBox ID="productprice" runat="server" class="form-control"></asp:TextBox>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="mb-4 col-6">
                                            <label for="exampleInputPassword1" class="form-label">Product image</label>
                                            <asp:TextBox ID="productimage" runat="server" class="form-control"></asp:TextBox>
                                        </div>
                                    </div>--%>
                                    <div class="row">
                                        <div class=" col-6 offset-3">
                                            <div class="w-100">
                                                <asp:Button ID="addFoodItem" runat="server" Text="Submit" class="btn btn-primary w-100 text-white py-8 fs-4 mb-4 rounded-2" OnClick="addFoodItem_Click"/>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
