<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.Master" AutoEventWireup="true" CodeBehind="Addproducts.aspx.cs" Inherits="yummy.admin.Addproducts" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Add products</title>
    <link rel="shortcut icon" type="image/png" href="assets/images/logos/favicon.png" />
    <link rel="stylesheet" href="assets/css/styles.min.css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="page-wrapper" id="main-wrapper" data-layout="vertical" data-navbarbg="skin6" data-sidebartype="full"
        data-sidebar-position="fixed" data-header-position="fixed">
        <div
            class="overflow-hidden radial-gradient">
            <div class="w-100">
                <div class="w-100  px-5 py-3">
                    <div class="col-12">
                        <div class="card mb-0">
                            <div class="card-body">
                                <a href="index.aspx" class="text-nowrap logo-img text-center d-block py-3 w-100">
                                    <img src="assets/images/logos/dark-logo.svg" width="180" alt="">
                                </a>
                                <p class="text-center">Add Your products</p>
                                <div>
                                    <div class="row">
                                        <div class="mb-4 col-6">
                                             <label for="exampleInputPassword1" class="form-label">Select category</label>
                                            <asp:DropDownList ID="categoryList" runat="server" DataValueField="id" DataTextField="name" AutoPostBack="false" class="form-control"></asp:DropDownList>
                                        </div>
                                        <div class="mb-4 col-6">
                                            <label for="exampleInputPassword1" class="form-label">Product name</label>
                                            <asp:TextBox ID="productname" runat="server" class="form-control"></asp:TextBox>
                                        </div>
                                        <div class="mb-4 col-6">
                                            <label for="exampleInputPassword1" class="form-label">Product price</label>
                                            <asp:TextBox ID="productprice" runat="server" class="form-control"></asp:TextBox>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="mb-4 col-6">
                                            <label for="exampleInputPassword1" class="form-label">Item quantity</label>
                                            <asp:TextBox ID="quantity" runat="server" class="form-control"></asp:TextBox>
                                        </div>
                                        <div class="mb-4 col-6">
                                            <label for="exampleInputPassword1" class="form-label">Product image</label>
                                            <asp:FileUpload ID="FileUpload1" runat="server" class="form-control p-2" />
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="">
                                            <div class="w-25">
                                                <asp:Button ID="addproduct" runat="server" Text="Submit" class="btn btn-primary w-100 text-white py-8 fs-4 mb-4 rounded-2" OnClick="addproduct_Click"/>
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
