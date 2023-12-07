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
                    <div class="d-flex" data-aos="fade-up" data-aos-delay="200">
                        <button class="btn-book-a-table border border-0" type="button" id="orderBtn">Order now</button>
                        <%--<a href="https://www.youtube.com/watch?v=LXb3EKWsInQ" class="glightbox btn-watch-video d-flex align-items-center"><i class="bi bi-play-circle"></i><span>Watch Video</span></a>--%>
                    </div>
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
                        <a class="glightbox" data-gallery="images-gallery" href="assets/img/gallery/gallery-2.jpg">
                            <img src="assets/img/fooditems/pizza/pngtree-italian-pizza-gourmet-fast-food-creative-cartoon-decoration-pattern-png-image_9049948.png" class="img-fluid" alt=""></a>
                    </div>
                    <div class="swiper-slide">
                        <a class="glightbox" data-gallery="images-gallery" href="assets/img/gallery/gallery-3.jpg">
                            <img src="assets/img/fooditems/dosa/dosa-4.png" class="img-fluid" alt=""></a>
                    </div>
                    <div class="swiper-slide">
                        <a class="glightbox" data-gallery="images-gallery" href="assets/img/gallery/gallery-4.jpg">
                            <img src="assets/img/fooditems/french fries/fries-2.jpg" class="img-fluid" alt=""></a>
                    </div>
                    <div class="swiper-slide">
                        <a class="glightbox" data-gallery="images-gallery" href="assets/img/gallery/gallery-5.jpg">
                            <img src="assets/img/fooditems/noodle/noodle-1.jpg" class="img-fluid" alt=""></a>
                    </div>

                    <div class="swiper-slide">
                        <a class="glightbox" data-gallery="images-gallery" href="assets/img/gallery/gallery-6.jpg">
                            <img src="assets/img/fooditems/samosa/samosa-1.png" class="img-fluid" alt=""></a>
                    </div>
                    <div class="swiper-slide">
                        <a class="glightbox" data-gallery="images-gallery" href="assets/img/gallery/gallery-7.jpg">
                            <img src="assets/img/fooditems/vada pav/vadapav-2.jpg" class="img-fluid" alt=""></a>
                    </div>
                    <div class="swiper-slide">
                        <a class="glightbox" data-gallery="images-gallery" href="assets/img/gallery/gallery-8.jpg">
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

                    <div class="tab-header text-center">
                        <p>Menu</p>
                        <h3>Starters</h3>
                    </div>

                    <div class="d-flex flex-wrap px-3">

                        <div class="col-lg-4 menu-item" id="menu-item">
                            <a href="assets/img/fooditems/burger/burger-1.png" class="glightbox">
                                <img src="assets/img/fooditems/burger/burger-1.png" class="menu-img img-fluid" alt=""></a>
                            <h4>Burger</h4>
                            <p class="price">
                                $5.95
                            </p>
                        </div>
                        <!-- Menu Item -->

                        <div class="col-lg-4 menu-item">
                            <a href="assets/img/fooditems/pizza/pngtree-italian-pizza-gourmet-fast-food-creative-cartoon-decoration-pattern-png-image_9049948.png" class="glightbox">
                                <img src="assets/img/fooditems/pizza/pngtree-italian-pizza-gourmet-fast-food-creative-cartoon-decoration-pattern-png-image_9049948.png" class="menu-img img-fluid" alt=""></a>
                            <h4>Pizza</h4>
                            <p class="price">
                                $14.95
                            </p>
                        </div>
                        <!-- Menu Item -->

                        <div class="col-lg-4 menu-item">
                            <a href="assets/img/fooditems/dosa/dosa-4.png" class="glightbox">
                                <img src="assets/img/fooditems/dosa/dosa-4.png" class="menu-img img-fluid" alt=""></a>
                            <h4>Masala Dosa</h4>
                            <p class="price">
                                $8.95
                            </p>
                        </div>
                        <!-- Menu Item -->

                    </div>
                </div>
                <!-- End Starter Menu Content -->

                <div class="tab-pane fade" id="menu-breakfast">

                    <div class="tab-header text-center">
                        <p>Menu</p>
                        <h3>Breakfast</h3>
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
                <!-- End Breakfast Menu Content -->

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

                <div class="tab-pane fade" id="menu-dinner">

                    <div class="tab-header text-center">
                        <p>Menu</p>
                        <h3>Dinner</h3>
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
                <!-- End Dinner Menu Content -->
            </div>
        </div>

    </section>
    <!-- End Menu Section -->
</asp:Content>
