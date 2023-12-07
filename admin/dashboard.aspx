<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.Master" AutoEventWireup="true" CodeBehind="dashboard.aspx.cs" Inherits="yummy.admin.index" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
        <h1 class="text-dark fs-8">List of categotys</h1>
        <asp:Repeater ID="showCategorys" runat="server">
            <HeaderTemplate>
                <table id="datatablesSimple" class="table text-nowrap mt-4 mb-5 align-middle shadow-sm border border-2">
                    <thead class="text-dark fs-4">
                        <tr class="border border-bottom-2">
                            <th class="border-bottom-0">
                                <h6 class="fw-semibold mb-0">Id</h6>
                            </th>
                            <th class="border-bottom-0">
                                <h6 class="fw-semibold mb-0">Category name</h6>
                            </th>
                            <th class="border-bottom-0 text-center" colspan="2">
                                <h6 class="fw-semibold mb-0">Actions</h6>
                            </th>
                        </tr>
                    </thead>
                    <tbody>
            </HeaderTemplate>
            <ItemTemplate>
                <tr class="border border-bottom-2">
                    <td class="border-bottom-0">
                        <h6 class="fw-semibold mb-0">
                            <%# Container.ItemIndex + 1 %>
                        </h6>
                    </td>
                    <td class="border-bottom-0">
                        <h6 class="fw-semibold mb-0">
                            <%# Eval("categoryname") %>
                        </h6>
                    </td>
                    <td class="border-bottom-0">
                        <asp:Button ID="Edit" runat="server" Text="Edit" class="btn btn-primary" CommandName="GetRecord" CommandArgument='<%# Eval("id") %>' />
                    </td>
                    <td class="border-bottom-0">
                        <asp:Button ID="Delete" runat="server" Text="Delete" class="btn btn-danger" CommandName="DeleteRecord" CommandArgument='<%# Eval("id") %>' />
                    </td>
                </tr>
            </ItemTemplate>
            <FooterTemplate>
                </tbody>
          </table>             
            </FooterTemplate>
        </asp:Repeater>
        <h1 class="text-dark fs-8">List of products</h1>
        <asp:Repeater ID="showProducts" runat="server">
            <HeaderTemplate>
                <table id="datatablesSimple" class="table text-nowrap mt-4 mb-5 align-middle shadow-sm border border-2">
                    <thead class="text-dark fs-4">
                        <tr class="border border-bottom-2">
                            <th class="border-bottom-0">
                                <h6 class="fw-semibold mb-0">Id</h6>
                            </th>
                            <th class="border-bottom-0">
                                <h6 class="fw-semibold mb-0">Product name</h6>
                            </th>
                            <th class="border-bottom-0">
                                <h6 class="fw-semibold mb-0">Product price</h6>
                            </th>
                            <th class="border-bottom-0">
                                <h6 class="fw-semibold mb-0">Product quantity</h6>
                            </th>
                            <th class="border-bottom-0">
                                <h6 class="fw-semibold mb-0">Product category</h6>
                            </th>
                            <th class="border-bottom-0">
                                <h6 class="fw-semibold mb-0">Product image</h6>
                            </th>
                            <th class="border-bottom-0" colspan="2">
                                <h6 class="fw-semibold mb-0 text-center">Actions</h6>
                            </th>
                        </tr>
                    </thead>
                    <tbody>
            </HeaderTemplate>
            <ItemTemplate>
                <tr class="border border-bottom-2">
                    <td class="border-bottom-0">
                        <h6 class="fw-semibold mb-0">
                            <%# Container.ItemIndex + 1 %>
                        </h6>
                    </td>
                    <td class="border-bottom-0">
                        <h6 class="fw-semibold mb-0">
                            <%# Eval("productname") %>
                        </h6>
                    </td>
                    <td class="border-bottom-0">
                        <h6 class="fw-semibold mb-0">
                            <%# Eval("price") %>
                        </h6>
                    </td>
                    <td class="border-bottom-0">
                        <h6 class="fw-semibold mb-0">
                            <%# Eval("qty") %>
                        </h6>
                    </td>
                    <td class="border-bottom-0">
                        <h6 class="fw-semibold mb-0">
                            <%# Eval("categoryId") %>
                        </h6>
                    </td>
                    <td class="border-bottom-0">
                        <img src="../assets/img/fooditems/dosa/dosa-2.png" width="100" alt="" />
                    </td>
                    <td class="border-bottom-0">
                        <asp:Button ID="Edit" runat="server" Text="Edit" CssClass="btn btn-primary" CommandName="GetRecord" CommandArgument='<%# Eval("id") %>' />
                    </td>
                    <td class="border-bottom-0">
                        <asp:Button ID="Delete" runat="server" Text="Delete" CssClass="btn btn-danger" CommandName="DeleteRecord" CommandArgument='<%# Eval("id") %>' />
                    </td>
                </tr>
            </ItemTemplate>
            <FooterTemplate>
                </tbody>
      </table>             
            </FooterTemplate>
        </asp:Repeater>
    </div>
</asp:Content>
