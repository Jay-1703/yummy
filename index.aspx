<%@ Page Title="" Language="C#" MasterPageFile="~/yummy.Master" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="yummy.index" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
    <!-- ======= Hero Section ======= -->
    <section id="hero" class="hero d-flex align-items-center section-bg">
        <div class="container">
            <div class="row justify-content-between gy-5">
                <div class="col-lg-5 order-2 order-lg-1 d-flex flex-column justify-content-center align-items-center align-items-lg-start text-center text-lg-start">
                    <h2 data-aos="fade-up">Enjoy Your Healthy<br>
                        Delicious Food</h2>
                    <p data-aos="fade-up" data-aos-delay="100">Sed autem laudantium dolores. Voluptatem itaque ea consequatur eveniet. Eum quas beatae cumque eum quaerat.</p>
                </div>
                <div class="col-lg-5 order-1 order-lg-2 text-center text-lg-start">
                    <img src="assets/img/hero-img.png" class="img-fluid" alt="" data-aos="zoom-out" data-aos-delay="300">
                </div>
            </div>
        </div>
    </section>
    <!-- End Hero Section -->


    <!-- ======= Gallery Section ======= -->
    <section id="gallery" class="gallery section-bg">
        <div class="container" data-aos="fade-up">

            <div class="section-header">
                <p>Inspiration for your <span>first order</span></p>
            </div>

            <div class="gallery-slider swiper">
                <div class="swiper-wrapper align-items-center">
                    <div class="swiper-slide">
                        <a class="glightbox" data-gallery="images-gallery" href="assets/img/fooditems/burger/burger-1.png">
                            <img src="assets/img/fooditems/burger/burger-1.png" class="img-fluid" alt=""></a>
                    </div>
                    <div class="swiper-slide">
                        <a class="glightbox" data-gallery="images-gallery" href="assetsassets/img/fooditems/pizza/pngtree-italian-pizza-gourmet-fast-food-creative-cartoon-decoration-pattern-png-image_9049948.png">
                            <img src="assets/img/fooditems/pizza/pngtree-italian-pizza-gourmet-fast-food-creative-cartoon-decoration-pattern-png-image_9049948.png" class="img-fluid" alt=""></a>
                    </div>
                    <div class="swiper-slide">
                        <a class="glightbox" data-gallery="images-gallery" href="assets/img/fooditems/dosa/dosa-4.png">
                            <img src="assets/img/fooditems/dosa/dosa-4.png" class="img-fluid" alt=""></a>
                    </div>
                    <div class="swiper-slide">
                        <a class="glightbox" data-gallery="images-gallery" href="assets/img/fooditems/french fries/fries-2.jpg">
                            <img src="assets/img/fooditems/french fries/fries-2.jpg" class="img-fluid" alt=""></a>
                    </div>
                    <div class="swiper-slide">
                        <a class="glightbox" data-gallery="images-gallery" href="assets/img/fooditems/noodle/noodle-1.jpg">
                            <img src="assets/img/fooditems/noodle/noodle-1.jpg" class="img-fluid" alt=""></a>
                    </div>

                    <div class="swiper-slide">
                        <a class="glightbox" data-gallery="images-gallery" href="assets/img/fooditems/samosa/samosa-1.png">
                            <img src="assets/img/fooditems/samosa/samosa-1.png" class="img-fluid" alt=""></a>
                    </div>
                    <div class="swiper-slide">
                        <a class="glightbox" data-gallery="images-gallery" href="assets/img/fooditems/vada pav/vadapav-2.jpg">
                            <img src="assets/img/fooditems/vada pav/vadapav-2.jpg" class="img-fluid" alt=""></a>
                    </div>
                    <div class="swiper-slide">
                        <a class="glightbox" data-gallery="images-gallery" href="assets/img/fooditems/cake/cake-1.jpg">
                            <img src="assets/img/fooditems/cake/cake-1.jpg" class="img-fluid" alt=""></a>
                    </div>
                </div>
                <div class="swiper-pagination"></div>
            </div>

        </div>
    </section>
    <!-- End Gallery Section -->


    <!-- ======= Menu Section ======= -->

    <section id="menu" class="menu">
        <div class="container" data-aos="fade-up">
            <div class="tab-content" data-aos="fade-up" data-aos-delay="300">
                <div class="tab-pane fade active show" id="menu-starters">
                    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                        <ContentTemplate>
                            <div class="row px-3">
                                <asp:Repeater ID="cardRepeater" runat="server" OnItemCommand="Order_ItemCommand">
                                    <ItemTemplate>
                                        <div class="col-lg-3 col-md-12 my-3 cursor-pointer">
                                            <div class="card border-none">
                                                <img src="<%# Eval("Productimage") %>" class="card-img-top" alt="..." style="height: 13rem">
                                                <div class="card-body">
                                                    <h5 class="card-title mb-3 text-truncate"><%# Eval("ProductName") %></h5>
                                                    <h6 class="card-title mb-3 text-truncate"><%# Eval("FrenchieUsername") %></h6>
                                                    <p><%# Eval("CategoryName") %></p>
                                                    <h6>₹ <%# Eval("ProductPrice") %> for one</h6>
                                                    <asp:Button UseSubmitBehavior="false" ID="orderBtn" runat="server" Text="Order now" class="btn btn-book-table btn-danger w-100" CommandName="ShowOrderModel" CommandArgument='<%# Eval("ProductId") %>' />
                                                </div>
                                            </div>
                                        </div>
                                    </ItemTemplate>
                                </asp:Repeater>
                            </div>

                            <!-- ======= Placed order model ======= -->

                            <div class="modal fade" id="showOrderModel" tabindex="-1" aria-label="true">
                                <div class="modal-dialog">
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <h1 class="modal-title fs-5" id="exampleModalLabel">Order</h1>
                                            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                        </div>
                                        <div class="modal-body">
                                            <div class="row">
                                                <div class="mb-4 col-6">
                                                    <label for="exampleInputPassword1" class="form-label">Restaurant name</label>
                                                    <asp:TextBox ID="restaurantname" runat="server" class="form-control" aria-label="Disabled input example" disabled></asp:TextBox>
                                                </div>
                                                <div class="mb-4 col-6">
                                                    <label for="exampleInputPassword1" class="form-label">Category name</label>
                                                    <asp:TextBox ID="categoryname" runat="server" class="form-control" aria-label="Disabled input example" disabled></asp:TextBox>
                                                </div>
                                                <div class="mb-4 col-6">
                                                    <label for="exampleInputPassword1" class="form-label">Product name</label>
                                                    <asp:TextBox ID="productname" runat="server" class="form-control" aria-label="Disabled input example" disabled></asp:TextBox>
                                                </div>
                                                <div class="mb-4 col-6">
                                                    <label for="exampleInputPassword1" class="form-label">Product price</label>
                                                    <asp:TextBox ID="price" runat="server" class="form-control" aria-label="Disabled input example" disabled></asp:TextBox>
                                                </div>

                                            </div>
                                            <div class="row">
                                                <div class="mb-4 col-6">
                                                    <label for="exampleInputPassword1" class="form-label">City</label>
                                                    <asp:TextBox ID="city" runat="server" class="form-control" aria-label="Disabled input example" disabled></asp:TextBox>
                                                </div>
                                                <div class="mb-4 col-6">
                                                    <label for="exampleInputPassword1" class="form-label">State</label>
                                                    <asp:TextBox ID="state" runat="server" class="form-control" aria-label="Disabled input example" disabled></asp:TextBox>
                                                </div>
                                                <div class="mb-4 col-6">
                                                    <label for="exampleInputPassword1" class="form-label">Quantity</label>
                                                    <asp:TextBox ID="qty" runat="server" class="form-control" onchange="calculateTotalPrice()"></asp:TextBox>
                                                </div>
                                                <div class="mb-4 col-6">
                                                    <label for="exampleInputPassword1" class="form-label">Total price</label>
                                                    <asp:TextBox ID="totalprice" runat="server" class="form-control" aria-label="Disabled input example" disabled ReadOnly="true"></asp:TextBox>
                                                </div>
                                                <div class="col-12">
                                                    <label for="exampleInputPassword1" class="form-label">Your address</label>
                                                    <asp:TextBox ID="useraddress" TextMode="MultiLine" runat="server" class="form-control w-100"></asp:TextBox>
                                                </div>
                                                <div class="mb-4 col-6">                                                    
                                                    <asp:TextBox ID="resid" runat="server" class="form-control d-none"></asp:TextBox>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="modal-footer">
                                            <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                                            <asp:Button ID="placeOrder" class="btn btn-book-table btn-danger" Text="Place order" runat="server" OnClick="placeOrder_Click" />
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <!-- ======= Order Placed Successfully model ======= -->
                            <div class="modal" id="showOrderSuccessModel" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
                                <div class="modal-dialog">
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <h1 class="modal-title fs-5" id="staticBackdropLabel">Order Succcess</h1>
                                            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                        </div>
                                        <div class="modal-body">
                                            <h3>Order was placed successfully!</h3>
                                        </div>
                                        <div class="modal-footer">
                                            <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                                        </div>
                                    </div>
                                </div>
                            </div>

                        </ContentTemplate>
                    </asp:UpdatePanel>
                </div>
            </div>
        </div>
    </section>
    <!-- End Menu Section -->
    <script type="text/javascript">
        function calculateTotalPrice() {
            console.log("Function called");         
            var qty = parseInt(document.getElementById('<%= qty.ClientID %>').value);
            var price = parseInt(document.getElementById('<%= price.ClientID %>').value);

            console.log("Quantity: " + qty);
            console.log("Price: " + price);
            
            var totalPrice = qty * price;

            console.log("Total Price: " + totalPrice);
            document.getElementById('<%= totalprice.ClientID %>').value = totalPrice;
        }        
        document.getElementById('<%= qty.ClientID %>').addEventListener('input', calculateTotalPrice);
</script>

</asp:Content>
