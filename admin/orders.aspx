<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.Master" AutoEventWireup="true" CodeBehind="orders.aspx.cs" Inherits="yummy.admin.orders" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="col-lg-12 d-flex align-items-stretch">
        <div class="card my-9 w-100">
            <div class="card-body p-4">
                <h5 class="card-title fw-semibold mb-4">Orders</h5>
                <div class="table-responsive">                    
                    <asp:Repeater ID="ordersRepeater" runat="server">
                        <HeaderTemplate>
                            <table id="datatablesSimple" class="table text-nowrap mb-0 align-middle">
                                <thead class="text-dark fs-4">
                                    <tr>
                                        <th class="border-bottom-0">
                                            <h6 class="fw-semibold mb-0">Id</h6>
                                        </th>
                                        <th class="border-bottom-0">
                                            <h6 class="fw-semibold mb-0">Product name</h6>
                                        </th>
                                        <th class="border-bottom-0">
                                            <h6 class="fw-semibold mb-0">Address</h6>
                                        </th>
                                        <th class="border-bottom-0">
                                            <h6 class="fw-semibold mb-0">Quantity</h6>
                                        </th>
                                        <th class="border-bottom-0">
                                            <h6 class="fw-semibold mb-0">Price</h6>
                                        </th>
                                        <th class="border-bottom-0">
                                            <h6 class="fw-semibold mb-0">Total price</h6>
                                        </th>
                                        <th class="border-bottom-0">
                                            <h6 class="fw-semibold mb-0">Status</h6>
                                        </th>
                                    </tr>
                                </thead>
                                <tbody>
                        </HeaderTemplate>
                        <ItemTemplate>
                            <tr>
                                <td class="border-bottom-0">
                                    <h6 class="fw-semibold mb-0"><%# Container.ItemIndex + 1 %></h6>
                                </td>
                                <td class="border-bottom-0">
                                    <h6 class="fw-semibold mb-1"><%# Eval("productname") %></h6>
                                </td>
                                <td class="border-bottom-0">
                                    <%--<h6 class="mb-0 fw-semibold">khodiyar colony</h6>--%>
                                    <span class="fw-normal"><%# Eval("useraddress") %></span>
                                </td>
                                <td class="border-bottom-0">
                                    <div class="d-flex align-items-center gap-2">
                                        <span class="fw-normal"><%# Eval("quantity") %></span>
                                    </div>
                                </td>
                                <td class="border-bottom-0">
                                    <h6 class="fw-semibold mb-0"><%# Eval("productprice") %></h6>
                                </td>
                                <td class="border-bottom-0">
                                    <h6 class="fw-semibold mb-0"><%# Eval("totalprice") %></h6>
                                </td>
                                <td class="border-bottom-0">
                                    <h6 class="fw-semibold mb-0"><%# Eval("status") %></h6>
                                </td>
                            </tr>
                        </ItemTemplate>
                        <FooterTemplate>
                            </tbody>
</table>             
                        </FooterTemplate>
                    </asp:Repeater>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
