<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.Master" AutoEventWireup="true" CodeBehind="dashboard.aspx.cs" Inherits="yummy.admin.index" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="mt-5">
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
        <%-- Show categories --%>
        <asp:Label ID="Label1" class="text-dark fw-bold fs-8 px-2" runat="server" Text="Label"></asp:Label>

        <asp:UpdatePanel ID="UpdatePanel2" runat="server">
            <ContentTemplate>
                <asp:Repeater ID="showCategorys" runat="server" OnItemCommand="showCategorys_ItemCommand">
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
                                <asp:Button ID="Edit" runat="server" Text="Edit" class="btn btn-primary" CommandName="showUpdateCategoryModel" CommandArgument='<%# Eval("id") %>' />
                            </td>
                            <td class="border-bottom-0">
                                <asp:Button ID="Delete" runat="server" Text="Delete" class="btn btn-danger" CommandName="DeleteCategotyRecord" CommandArgument='<%# Eval("id") %>' />
                            </td>
                        </tr>
                    </ItemTemplate>
                    <FooterTemplate>
                        </tbody>
          </table>             
                    </FooterTemplate>
                </asp:Repeater>

                <div id="updateCategoriesModal" class="modal" tabindex="-1">
                    <div class="modal-dialog">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h3 class="modal-title">Update categories</h3>
                                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                            </div>
                            <div class="modal-body">                                                              
                                <div class="row">
                                    <div class="mb-4 col-6">
                                        <label for="exampleInputPassword1" class="form-label">Category name</label>
                                        <asp:TextBox ID="categoryname" runat="server" class="form-control"></asp:TextBox>
                                    </div>
                                    <div class="mb-4 col-6">
                                        <label for="exampleInputPassword1" class="form-label">Category id</label>
                                        <asp:TextBox ID="categoryid" runat="server" class="form-control"></asp:TextBox>
                                    </div>
                                </div>
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                                <asp:Button ID="Button2" runat="server" Text="Save changes" class="btn btn-primary" OnClick="Button2_Click" />
                            </div>
                        </div>
                    </div>
                </div>
            </ContentTemplate>
        </asp:UpdatePanel>

        <%-- Show products --%>
        <asp:Label ID="Label2" class="text-dark fw-bold fs-8 px-2" runat="server" Text="Label"></asp:Label>

        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate>
                <asp:Repeater ID="showProducts" runat="server" OnItemCommand="showProducts_ItemCommand">
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
                                    <%# Eval("categoryname") %>
                                </h6>
                            </td>
                            <td class="border-bottom-0">
                                <img src=" <%# Eval("image") %>" width="100" alt="" />
                            </td>
                            <td class="border-bottom-0">
                                <asp:Button ID="Edit" runat="server" Text="Edit" CssClass="btn btn-primary" CommandName="ShowEditProductsModal" CommandArgument='<%# Eval("id") %>' />
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

                <div id="updateProductsModal" class="modal" tabindex="-1">
                    <div class="modal-dialog">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h3 class="modal-title">Update products</h3>
                                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                            </div>
                            <div class="modal-body">                                
                                <div class="row">
                                    <div class="mb-4 col-6">
                                        <label for="exampleInputPassword1" class="form-label">Select category</label>
                                        <asp:DropDownList ID="categoryList" runat="server" DataValueField="id" DataTextField="name" AutoPostBack="false" class="form-control"></asp:DropDownList>
                                    </div>
                                    <div class="mb-4 col-6">
                                        <label for="exampleInputPassword1" class="form-label">Product id</label>
                                        <asp:TextBox ID="productid" runat="server" class="form-control"></asp:TextBox>
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


        <%-- Show restaurant --%>
        <asp:Repeater ID="restaurantData" runat="server" OnItemCommand="restaurantData_ItemCommand">
            <HeaderTemplate>
                <table id="datatablesSimple" class="table text-nowrap mt-4 mb-5 align-middle shadow-sm border border-2">
                    <thead class="text-dark fs-4">
                        <tr class="border border-bottom-2">
                            <th class="border-bottom-0">
                                <h6 class="fw-semibold mb-0">Restaurant name</h6>
                            </th>
                            <th class="border-bottom-0">
                                <h6 class="fw-semibold mb-0">Email</h6>
                            </th>
                            <th class="border-bottom-0">
                                <h6 class="fw-semibold mb-0">Address</h6>
                            </th>
                            <th class="border-bottom-0">
                                <h6 class="fw-semibold mb-0">City</h6>
                            </th>
                            <th class="border-bottom-0">
                                <h6 class="fw-semibold mb-0">State</h6>
                            </th>
                            <th class="border-bottom-0">
                                <h6 class="fw-semibold mb-0">Websiteurl</h6>
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
                            <%# Eval("username") %>
                        </h6>
                    </td>
                    <td class="border-bottom-0">
                        <h6 class="fw-semibold mb-0">
                            <%# Eval("email") %>
                        </h6>
                    </td>
                    <td class="border-bottom-0">
                        <h6 class="fw-semibold mb-0">
                            <%# Eval("address") %>
                        </h6>
                    </td>
                    <td class="border-bottom-0">
                        <h6 class="fw-semibold mb-0">
                            <%# Eval("city") %>
                        </h6>
                    </td>
                    <td class="border-bottom-0">
                        <h6 class="fw-semibold mb-0">
                            <%# Eval("state") %>
                        </h6>
                    </td>
                    <td class="border-bottom-0">
                        <h6 class="fw-semibold mb-0">
                            <%# Eval("websiteurl") %>
                        </h6>
                    </td>
                    <%--<td class="border-bottom-0">
                        <asp:Button ID="Edit" runat="server" Text="Edit" CssClass="btn btn-primary" CommandName="GetRecord" CommandArgument='<%# Eval("id") %>' />
                    </td>--%>
                    <td class="border-bottom-0">
                        <asp:Button ID="Delete" runat="server" Text="Delete" CssClass="btn btn-danger" CommandName="DeleteRestaurantRecord" CommandArgument='<%# Eval("id") %>' />
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
