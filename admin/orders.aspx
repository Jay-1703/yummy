<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.Master" AutoEventWireup="true" CodeBehind="orders.aspx.cs" Inherits="yummy.admin.orders" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
    <div class="col-lg-12 d-flex align-items-stretch">
        <div class="card my-9 w-100">
            <div class="card-body p-4">
                <h5 class="card-title fw-semibold mb-4">Orders</h5>
                <div class="table-responsive">
                    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                        <ContentTemplate>
                            <asp:Repeater ID="ordersRepeater" runat="server" OnItemCommand="ordersRepeater_ItemCommand">
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
                                        <td class="border-bottom-0">
                                            <asp:Button ID="Edit" runat="server" Text="Edit order" CssClass="btn btn-primary" CommandName="ShowEditOrderModal" CommandArgument='<%# Eval("id") %>' visible='<%# Eval("status").ToString().Equals("pending", StringComparison.OrdinalIgnoreCase) %>' />
                                        </td>
                                    </tr>
                                </ItemTemplate>
                                <FooterTemplate>
                                    </tbody>
</table>             
                                </FooterTemplate>
                            </asp:Repeater>
                            <div id="updateOrderModal" class="modal" tabindex="-1">
                                <div class="modal-dialog">
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <h3 class="modal-title">Update Order</h3>
                                            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                        </div>
                                        <div class="modal-body">
                                            <div class="row">
                                                <div class="mb-4 col-6  d-none">
                                                    <label for="exampleInputPassword1" class="form-label">Order id</label>
                                                    <asp:TextBox ID="orderid" runat="server" class="form-control" aria-label="Disabled input example" disabled></asp:TextBox>
                                                </div>
                                                <div class="mb-4 col-6">
                                                    <label for="exampleInputPassword1" class="form-label">Product name</label>
                                                    <asp:TextBox ID="productname" runat="server" class="form-control" aria-label="Disabled input example" disabled></asp:TextBox>
                                                </div>
                                                <div class="mb-4 col-6">
                                                    <label for="exampleInputPassword1" class="form-label">Product price</label>
                                                    <asp:TextBox ID="productprice" runat="server" class="form-control" aria-label="Disabled input example" disabled></asp:TextBox>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="mb-4 col-6">
                                                    <label for="exampleInputPassword1" class="form-label">Item quantity</label>
                                                    <asp:TextBox ID="quantity" runat="server" class="form-control" aria-label="Disabled input example" disabled></asp:TextBox>
                                                </div>
                                                <div class="mb-4 col-6">
                                                    <label for="exampleInputPassword1" class="form-label">Total price</label>
                                                    <asp:TextBox ID="totalprice" runat="server" class="form-control" aria-label="Disabled input example" disabled></asp:TextBox>
                                                </div>
                                                <div class="mb-4 col-6">
                                                    <label for="exampleInputPassword1" class="form-label">Order status</label>
                                                    <asp:DropDownList ID="status" runat="server" DataValueField="id" DataTextField="name" AutoPostBack="false" class="form-control">
                                                        <asp:ListItem Text="Pending" Value="Pending"></asp:ListItem>
                                                        <asp:ListItem Text="Done" Value="Done"></asp:ListItem>
                                                    </asp:DropDownList>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="modal-footer">
                                            <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                                            <asp:Button ID="Button1" runat="server" Text="Save changes" class="btn btn-primary" OnClick="Button1_Click" />
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </ContentTemplate>
                    </asp:UpdatePanel>

                </div>
            </div>
        </div>
    </div>
</asp:Content>
