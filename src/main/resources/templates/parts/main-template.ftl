<#include "../security/security.ftl"/>
<#macro main title>
    <!DOCTYPE html>
    <html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="X-UA-Compatible" content="ie=edge">
        <title>${title}</title>

        <!-- Google Font -->
        <link href="https://fonts.googleapis.com/css?family=Muli:300,400,500,600,700,800,900&display=swap"
              rel="stylesheet">

        <!-- Css Styles -->
        <link rel="stylesheet" href="/css/bootstrap.min.css" type="text/css">
        <link rel="stylesheet" href="/css/font-awesome.min.css" type="text/css">
        <link rel="stylesheet" href="/css/themify-icons.css" type="text/css">
        <link rel="stylesheet" href="/css/elegant-icons.css" type="text/css">
        <link rel="stylesheet" href="/css/owl.carousel.min.css" type="text/css">
        <link rel="stylesheet" href="/css/nice-select.css" type="text/css">
        <link rel="stylesheet" href="/css/jquery-ui.min.css" type="text/css">
        <link rel="stylesheet" href="/css/slicknav.min.css" type="text/css">
        <link rel="stylesheet" href="/css/style.css" type="text/css">
    </head>

    <body>

    <#--    <header>-->
    <#--        <#if user??>-->
    <#--            <div><a href="/cart">Cart (${cartItemsCount})</a></div>-->
    <#--            <div><a href="/order-history">My order history</a></div>-->
    <#--        </#if>-->
    <#--    </header>-->

    <!-- Header Section Begin -->
    <header class="header-section">
        <div class="header-top">
            <div class="container">
                <div class="ht-left">
                    <div class="mail-service">
                        <i class=" fa fa-envelope"></i>
                        do@nmu.one
                    </div>
                    <div class="phone-service">
                        <i class=" fa fa-phone"></i>
                        +65 11.188.888
                    </div>
                </div>
                <div class="ht-right">
                    <#if user??>
                        <a class="login-panel"><i class="fa fa-user"></i>${name}</a>
                    <#else>
                        <a href="/login" class="login-panel"><i class="fa fa-user"></i>Login</a>
                    </#if>
                    <div class="top-social">
                        <a href="#"><i class="ti-facebook"></i></a>
                        <a href="#"><i class="ti-twitter-alt"></i></a>
                        <a href="#"><i class="ti-linkedin"></i></a>
                        <a href="#"><i class="ti-pinterest"></i></a>
                    </div>
                </div>
            </div>
        </div>
        <div class="container">
            <div class="inner-header">
                <div class="row">
                    <div class="col-lg-2 col-md-2">
                        <div class="logo">
                            <a href="/home">
                                <#-- TODO: logo-->
                                <img src="img/logo.png" alt="">
                            </a>
                        </div>
                    </div>
                    <div class="col-lg-7 col-md-7">
                        <div class="advanced-search">
                            <button type="button" class="category-btn">All Categories</button>
                            <#--TODO: search-->
                            <form action="#" class="input-group">
                                <input type="text" placeholder="What do you need?">
                                <button type="button"><i class="ti-search"></i></button>
                            </form>
                        </div>
                    </div>
                    <div class="col-lg-3 text-right col-md-3">
                        <ul class="nav-right">
                            <li class="cart-icon">
                                <a href="/cart">
                                    <i class="icon_bag_alt"></i>
                                    <span>${itemsCount}</span>
                                </a>
                                <#--                                TODO: remove classes from CSS -->
                                <#--                                <div class="cart-hover">-->
                                <#--                                    <div class="select-items">-->
                                <#--                                        <table>-->
                                <#--                                            <tbody>-->
                                <#--                                            <tr>-->
                                <#--                                                <td class="si-pic"><img src="img/select-product-1.jpg" alt=""></td>-->
                                <#--                                                <td class="si-text">-->
                                <#--                                                    <div class="product-selected">-->
                                <#--                                                        <p>$60.00 x 1</p>-->
                                <#--                                                        <h6>Kabino Bedside Table</h6>-->
                                <#--                                                    </div>-->
                                <#--                                                </td>-->
                                <#--                                                <td class="si-close">-->
                                <#--                                                    <i class="ti-close"></i>-->
                                <#--                                                </td>-->
                                <#--                                            </tr>-->
                                <#--                                            <tr>-->
                                <#--                                                <td class="si-pic"><img src="img/select-product-2.jpg" alt=""></td>-->
                                <#--                                                <td class="si-text">-->
                                <#--                                                    <div class="product-selected">-->
                                <#--                                                        <p>$60.00 x 1</p>-->
                                <#--                                                        <h6>Kabino Bedside Table</h6>-->
                                <#--                                                    </div>-->
                                <#--                                                </td>-->
                                <#--                                                <td class="si-close">-->
                                <#--                                                    <i class="ti-close"></i>-->
                                <#--                                                </td>-->
                                <#--                                            </tr>-->
                                <#--                                            </tbody>-->
                                <#--                                        </table>-->
                                <#--                                    </div>-->
                                <#--                                    <div class="select-total">-->
                                <#--                                        <span>total:</span>-->
                                <#--                                        <h5>$120.00</h5>-->
                                <#--                                    </div>-->
                                <#--                                    <div class="select-button">-->
                                <#--                                        <a href="#" class="primary-btn view-card">VIEW CARD</a>-->
                                <#--                                        <a href="#" class="primary-btn checkout-btn">CHECK OUT</a>-->
                                <#--                                    </div>-->
                                <#--                                </div>-->
                            </li>
                            <li class="cart-price">$${totalPrice}</li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
        <div class="nav-item">
            <div class="container">
                <div class="nav-depart">
                    <div class="depart-btn">
                        <i class="ti-menu"></i>
                        <span>All departments</span>
                        <ul class="depart-hover">
                            <li class="active"><a href="#">Women’s Clothing</a></li>
                            <li><a href="#">Men’s Clothing</a></li>
                            <li><a href="#">Underwear</a></li>
                            <li><a href="#">Kid's Clothing</a></li>
                            <li><a href="#">Brand Fashion</a></li>
                            <li><a href="#">Accessories/Shoes</a></li>
                            <li><a href="#">Luxury Brands</a></li>
                            <li><a href="#">Brand Outdoor Apparel</a></li>
                        </ul>
                    </div>
                </div>
                <nav class="nav-menu mobile-menu">
                    <ul>
                        <li><a href="./index.html">Home</a></li>
                        <li><a href="./shop.html">Shop</a></li>
                        <li><a href="#">Collection</a>
                            <ul class="dropdown">
                                <li><a href="#">Men's</a></li>
                                <li><a href="#">Women's</a></li>
                                <li><a href="#">Kid's</a></li>
                            </ul>
                        </li>
                        <li><a href="./blog.html">Blog</a></li>
                        <li><a href="./contact.html">Contact</a></li>
                        <li><a href="#">Pages</a>
                            <ul class="dropdown">
                                <li><a href="./blog-details.html">Blog Details</a></li>
                                <li><a href="./shopping-cart.html">Shopping Cart</a></li>
                                <li><a href="./check-out.html">Checkout</a></li>
                                <li><a href="./faq.html">Faq</a></li>
                                <li><a href="./register.html">Register</a></li>
                                <li><a href="./login.html">Login</a></li>
                            </ul>
                        </li>
                    </ul>
                </nav>
                <div id="mobile-menu-wrap"></div>
            </div>
        </div>
    </header>
    <!-- Header End -->

    <main>
        <@content/>
    </main>

    <!-- Js Plugins -->
    <script src="/js/jquery-3.3.1.min.js"></script>
    <script src="/js/bootstrap.min.js"></script>
    <script src="/js/jquery-ui.min.js"></script>
    <script src="/js/jquery.countdown.min.js"></script>
    <script src="/js/jquery.nice-select.min.js"></script>
    <script src="/js/jquery.zoom.min.js"></script>
    <script src="/js/jquery.dd.min.js"></script>
    <script src="/js/jquery.slicknav.js"></script>
    <script src="/js/owl.carousel.min.js"></script>
    <script src="/js/main.js"></script>
    </body>
    </html>
</#macro>