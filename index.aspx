<%@ Page Title="" Language="C#" MasterPageFile="~/yummy.Master" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="yummy.index" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
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
                    <%--                    <div class="tab-header text-center">
                        <p>Menu</p>
                        <h3>Starters</h3>
                    </div>--%>

                    <div class="row px-3">
                        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>

                        <asp:Repeater ID="cardRepeater" runat="server" OnItemCommand="Order_ItemCommand">
                            <ItemTemplate>
                                <div class="col-lg-3 col-md-12 my-3 cursor-pointer">                                 
                                    <div class="card">
                                        <img src="<%# Eval("Productimage") %>" class="card-img-top" alt="..."  style="height:13rem">
                                        <div class="card-body">
                                            <h5 class="card-title mb-3 text-truncate"><%# Eval("ProductName") %></h5>
                                            <p><%# Eval("CategoryName") %></p>
                                            <h6>₹ <%# Eval("ProductPrice") %> for one</h6>
                                            <asp:Button UseSubmitBehavior="false" data-bs-toggle="modal" data-bs-target="#exampleModal" ID="orderBtn" runat="server" Text="Order now" class="btn btn-book-table btn-danger w-100" CommandName="ShowOrderModel" CommandArgument='<%# Eval("ProductId") %>' />
                                        </div>
                                    </div>
                                </div>
                            </ItemTemplate>
                        </asp:Repeater>
                      
                        <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                            <div class="modal-dialog">
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <h1 class="modal-title fs-5" id="exampleModalLabel">Modal title</h1>
                                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                    </div>
                                    <div class="modal-body">
                                        <div class="row">
                                            <div class="mb-4 col-6">
                                                <label for="exampleInputPassword1" class="form-label">Restaurant name</label>
                                                <asp:TextBox ID="restaurantname" runat="server" class="form-control"></asp:TextBox>
                                            </div>
                                            <div class="mb-4 col-6">
                                                <label for="exampleInputPassword1" class="form-label">Category name</label>
                                                <asp:TextBox ID="categoryname" runat="server" class="form-control"></asp:TextBox>
                                            </div>
                                            <div class="mb-4 col-6">
                                                <label for="exampleInputPassword1" class="form-label">Product name</label>
                                                <asp:TextBox ID="productname" runat="server" class="form-control"></asp:TextBox>
                                            </div>
                                            <div class="mb-4 col-6">
                                                <label for="exampleInputPassword1" class="form-label">Product price</label>
                                                <asp:TextBox ID="price" runat="server" class="form-control"></asp:TextBox>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="mb-4 col-6">
                                                <label for="exampleInputPassword1" class="form-label">City</label>
                                                <asp:TextBox ID="city" runat="server" class="form-control"></asp:TextBox>
                                            </div>
                                            <div class="mb-4 col-6">
                                                <label for="exampleInputPassword1" class="form-label">State</label>
                                                <asp:TextBox ID="state" runat="server" class="form-control"></asp:TextBox>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="modal-footer">
                                        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                                        <button type="button" class="btn btn-primary">Save changes</button>
                                    </div>
                                </div>
                            </div>
                        </div>

                    </div>
                </div>
                <!-- End Starter Menu Content -->

                <div class="tab-pane fade" id="menu-lunch">
                    <div class="tab-header text-center">
                        <p>Menu</p>
                        <h3>Lunch</h3>
                    </div>

                    <div class="row gy-5">

                        <div class="col-lg-4 menu-item">
                            <a href="assets/img/menu/menu-item-1.png" class="glightbox">
                                <img src="assets/img/menu/menu-item-1.png" class="menu-img img-fluid" alt=""></a>
                            <h4>Magnam Tiste</h4>
                            <p class="ingredients">
                                Lorem, deren, trataro, filede, nerada
                            </p>
                            <p class="price">
                                $5.95
                            </p>
                        </div>
                        <!-- Menu Item -->

                        <div class="col-lg-4 menu-item">
                            <a href="assets/img/menu/menu-item-2.png" class="glightbox">
                                <img src="assets/img/menu/menu-item-2.png" class="menu-img img-fluid" alt=""></a>
                            <h4>Aut Luia</h4>
                            <p class="ingredients">
                                Lorem, deren, trataro, filede, nerada
                            </p>
                            <p class="price">
                                $14.95
                            </p>
                        </div>
                        <!-- Menu Item -->

                        <div class="col-lg-4 menu-item">
                            <a href="assets/img/menu/menu-item-3.png" class="glightbox">
                                <img src="assets/img/menu/menu-item-3.png" class="menu-img img-fluid" alt=""></a>
                            <h4>Est Eligendi</h4>
                            <p class="ingredients">
                                Lorem, deren, trataro, filede, nerada
                            </p>
                            <p class="price">
                                $8.95
                            </p>
                        </div>
                        <!-- Menu Item -->

                        <div class="col-lg-4 menu-item">
                            <a href="assets/img/menu/menu-item-4.png" class="glightbox">
                                <img src="assets/img/menu/menu-item-4.png" class="menu-img img-fluid" alt=""></a>
                            <h4>Eos Luibusdam</h4>
                            <p class="ingredients">
                                Lorem, deren, trataro, filede, nerada
                            </p>
                            <p class="price">
                                $12.95
                            </p>
                        </div>
                        <!-- Menu Item -->

                        <div class="col-lg-4 menu-item">
                            <a href="assets/img/menu/menu-item-5.png" class="glightbox">
                                <img src="assets/img/menu/menu-item-5.png" class="menu-img img-fluid" alt=""></a>
                            <h4>Eos Luibusdam</h4>
                            <p class="ingredients">
                                Lorem, deren, trataro, filede, nerada
                            </p>
                            <p class="price">
                                $12.95
                            </p>
                        </div>
                        <!-- Menu Item -->

                        <div class="col-lg-4 menu-item">
                            <a href="assets/img/menu/menu-item-6.png" class="glightbox">
                                <img src="assets/img/menu/menu-item-6.png" class="menu-img img-fluid" alt=""></a>
                            <h4>Laboriosam Direva</h4>
                            <p class="ingredients">
                                Lorem, deren, trataro, filede, nerada
                            </p>
                            <p class="price">
                                $9.95
                            </p>
                        </div>
                        <!-- Menu Item -->

                    </div>
                </div>

                <!-- End Lunch Menu Content -->
            </div>
        </div>
    </section>
    <!-- End Menu Section -->
</asp:Content>
