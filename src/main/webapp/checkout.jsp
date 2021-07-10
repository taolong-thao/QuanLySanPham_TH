<%--
  Created by IntelliJ IDEA.
  User: Thanh Cong
  Date: 7/10/2021
  Time: 9:08 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>

<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Checkout</title>

    <!-- Google Fonts -->
    <link href='http://fonts.googleapis.com/css?family=Titillium+Web:400,200,300,700,600' rel='stylesheet' type='text/css'>
    <link href='http://fonts.googleapis.com/css?family=Roboto+Condensed:400,700,300' rel='stylesheet' type='text/css'>
    <link href='http://fonts.googleapis.com/css?family=Raleway:400,100' rel='stylesheet' type='text/css'>

    <!-- Bootstrap -->
    <link rel="stylesheet" href="css/bootstrap.min.css">

    <!-- Font Awesome -->
    <link rel="stylesheet" href="css/font-awesome.min.css">

    <!-- Custom CSS -->
    <link rel="stylesheet" href="css/owl.carousel.css">
    <link rel="stylesheet" href="style.css">
    <link rel="stylesheet" href="css/responsive.css">


</head>
<body>

<div class="header-area">
    <div class="container">
        <div class="row">
            <div class="col-md-8">
                <div class="user-menu">
                    <ul>
                        <li><a href="#"><i class="fa fa-user"></i> My Account</a></li>
                        <li><a href="#"><i class="fa fa-heart"></i> Wishlist</a></li>
                        <li><a href="manager.html"><i class="fa fa-user"></i> My Cart</a></li>
                        <li><a href="checkout.html"><i class="fa fa-user"></i> Checkout</a></li>
                        <li><a href="login.html"><i class="fa fa-user"></i> Login</a></li>
                    </ul>
                </div>
            </div>

            <div class="col-md-4">
            </div>
        </div>
    </div>
</div> <!-- End header area -->

<div class="site-branding-area">
    <div class="container">
        <div class="row">
            <div class="col-sm-6">
                <div class="logo">
                    <h1><a href="./"><img src="img/logo.png"></a></h1>
                </div>
            </div>
        </div>
    </div>
</div> <!-- End site branding area -->

<div class="mainmenu-area">
    <div class="container">
        <div class="row">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
            </div>
            <div class="navbar-collapse collapse">
                <ul class="nav navbar-nav">
                    <li ><a href="index.jsp">Home</a></li>
                    <li  ><a href="shop.jsp">Shop page</a></li>
                    <li ><a href="single-product.jsp">Single product</a></li>
                    <li><a href="cart.jsp">Cart</a></li>
                    <li class="active"><a href="checkout.jsp">Checkout</a></li>
                    <li ><a href="manager.jsp">Manager</a></li>
                    <li ><a href="update.jsp">Update</a></li>
                </ul>
            </div>
        </div>
    </div>
</div> <!-- End mainmenu area -->

<div class="product-big-title-area">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <div class="product-bit-title text-center">
                    <h2>Shopping Cart</h2>
                </div>
            </div>
        </div>
    </div>
</div>


<div class="single-product-area">
    <div class="zigzag-bottom"></div>
    <div class="container">
        <div class="row">
            <div class="col-md-8">
                <div class="product-content-right">
                    <div class="woocommerce">
                        <div id="customer_details" class="col2-set">
                            <div class="col-2">
                                <div class="woocommerce-shipping-fields">
                                    <h3 id="ship-to-different-address">
                                        <label class="checkbox" for="ship-to-different-address-checkbox">Ship to a different address?</label>
                                        <input type="checkbox" value="1" name="ship_to_different_address" checked="checked" class="input-checkbox" id="ship-to-different-address-checkbox">
                                    </h3>
                                    <div class="shipping_address" style="display: block;">

                                        <p id="shipping_first_name_field" class="form-row form-row-first validate-required">
                                            <label class="" for="shipping_first_name">First Name <abbr title="required" class="required">*</abbr>
                                            </label>
                                            <input type="text" value="" placeholder="" id="shipping_first_name" name="shipping_first_name" class="input-text ">
                                        </p>

                                        <p id="shipping_last_name_field" class="form-row form-row-last validate-required">
                                            <label class="" for="shipping_last_name">Last Name <abbr title="required" class="required">*</abbr>
                                            </label>
                                            <input type="text" value="" placeholder="" id="shipping_last_name" name="shipping_last_name" class="input-text ">
                                        </p>
                                        <div class="clear"></div>

                                        <p id="shipping_company_field" class="form-row form-row-wide">
                                            <label class="" for="shipping_company">Company Name</label>
                                            <input type="text" value="" placeholder="" id="shipping_company" name="shipping_company" class="input-text ">
                                        </p>

                                        <p id="shipping_address_1_field" class="form-row form-row-wide address-field validate-required">
                                            <label class="" for="shipping_address_1">Address <abbr title="required" class="required">*</abbr>
                                            </label>
                                            <input type="text" value="" placeholder="Street address" id="shipping_address_1" name="shipping_address_1" class="input-text ">
                                        </p>

                                        <p id="shipping_address_2_field" class="form-row form-row-wide address-field">
                                            <input type="text" value="" placeholder="Apartment, suite, unit etc. (optional)" id="shipping_address_2" name="shipping_address_2" class="input-text ">
                                        </p>

                                        <p id="shipping_city_field" class="form-row form-row-wide address-field validate-required" data-o_class="form-row form-row-wide address-field validate-required">
                                            <label class="" for="shipping_city">Town / City <abbr title="required" class="required">*</abbr>
                                            </label>
                                            <input type="text" value="" placeholder="Town / City" id="shipping_city" name="shipping_city" class="input-text ">
                                        </p>

                                        <p id="shipping_state_field" class="form-row form-row-first address-field validate-state" data-o_class="form-row form-row-first address-field validate-state">
                                            <label class="" for="shipping_state">County</label>
                                            <input type="text" id="shipping_state" name="shipping_state" placeholder="State / County" value="" class="input-text ">
                                        </p>

                                        <div class="clear"></div>


                                    </div>
                                    <p id="order_comments_field" class="form-row notes">
                                        <label class="" for="order_comments">Order Notes</label>
                                        <textarea cols="5" rows="2" placeholder="Notes about your order, e.g. special notes for delivery." id="order_comments" class="input-text " name="order_comments"></textarea>
                                    </p>


                                </div>

                            </div>

                        </div>

                        <h3 id="order_review_heading">Your order</h3>

                        <div id="order_review" style="position: relative;">
                            <table class="shop_table">
                                <thead>
                                <tr>
                                    <th class="product-name">Product</th>
                                    <th class="product-total">Total</th>
                                </tr>
                                </thead>
                                <tbody>
                                <tr class="cart_item">
                                    <td class="product-name">
                                        Ship Your Idea <strong class="product-quantity">× 1</strong> </td>
                                    <td class="product-total">
                                        <span class="amount">${o.giaBan}</span> </td>
                                </tr>
                                </tbody>
                                <tfoot>

                                <tr class="cart-subtotal">
                                    <th>Cart Subtotal</th>
                                    <td><span class="amount">${o.giaBan}</span>
                                    </td>
                                </tr>

                                <tr class="shipping">
                                    <th>Shipping and Handling</th>
                                    <td>

                                        Free Shipping
                                        <input type="hidden" class="shipping_method" value="free_shipping" id="shipping_method_0" data-index="0" name="shipping_method[0]">
                                    </td>
                                </tr>


                                <tr class="order-total">
                                    <th>Order Total</th>
                                    <td><strong><span class="amount">${o.giaBan}</span></strong> </td>
                                </tr>

                                </tfoot>
                            </table>


                            <div id="payment">
                                <ul class="payment_methods methods">
                                    <li class="payment_method_bacs">
                                        <input type="radio" data-order_button_text="" checked="checked" value="bacs" name="payment_method" class="input-radio" id="payment_method_bacs">
                                        <label for="payment_method_bacs">Direct Bank Transfer </label>
                                        <div class="payment_box payment_method_bacs">
                                            <p>Make your payment directly into our bank account. Please use your Order ID as the payment reference. Your order won’t be shipped until the funds have cleared in our account.</p>
                                        </div>
                                    </li>
                                    <li class="payment_method_cheque">
                                        <input type="radio" data-order_button_text="" value="cheque" name="payment_method" class="input-radio" id="payment_method_cheque">
                                        <label for="payment_method_cheque">Cheque Payment </label>
                                        <div style="display:none;" class="payment_box payment_method_cheque">
                                            <p>Please send your cheque to Store Name, Store Street, Store Town, Store State / County, Store Postcode.</p>
                                        </div>
                                    </li>
                                    <li class="payment_method_paypal">
                                        <input type="radio" data-order_button_text="Proceed to PayPal" value="paypal" name="payment_method" class="input-radio" id="payment_method_paypal">
                                        <label for="payment_method_paypal">PayPal <img alt="PayPal Acceptance Mark" src="https://www.paypalobjects.com/webstatic/mktg/Logo/AM_mc_vs_ms_ae_UK.png"><a title="What is PayPal?" onclick="javascript:window.open('https://www.paypal.com/gb/webapps/mpp/paypal-popup','WIPaypal','toolbar=no, location=no, directories=no, status=no, menubar=no, scrollbars=yes, resizable=yes, width=1060, height=700'); return false;" class="about_paypal" href="https://www.paypal.com/gb/webapps/mpp/paypal-popup">What is PayPal?</a>
                                        </label>
                                        <div style="display:none;" class="payment_box payment_method_paypal">
                                            <p>Pay via PayPal; you can pay with your credit card if you don’t have a PayPal account.</p>
                                        </div>
                                    </li>
                                </ul>

                                <div class="form-row place-order">

                                    <input type="submit" data-value="Place order" value="Place order" id="place_order" name="woocommerce_checkout_place_order" class="button alt">


                                </div>

                                <div class="clear"></div>

                            </div>
                        </div>
                        </form>

                    </div>
                </div>
            </div>
        </div>
    </div>
</div>


<div class="footer-top-area">
    <div class="zigzag-bottom"></div>
    <div class="container">
        <div class="row">
            <div class="col-md-3 col-sm-6">
                <div class="footer-about-us">
                    <h2><span>Laptop</span></h2>
                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Perferendis sunt id doloribus vero quam laborum quas alias dolores blanditiis iusto consequatur, modi aliquid eveniet eligendi iure eaque ipsam iste, pariatur omnis sint! Suscipit, debitis, quisquam. Laborum commodi veritatis magni at?</p>
                    <div class="footer-social">
                        <a href="#" target="_blank"><i class="fa fa-facebook"></i></a>
                        <a href="#" target="_blank"><i class="fa fa-twitter"></i></a>
                        <a href="#" target="_blank"><i class="fa fa-youtube"></i></a>
                        <a href="#" target="_blank"><i class="fa fa-linkedin"></i></a>
                    </div>
                </div>
            </div>

            <div class="col-md-3 col-sm-6">
                <div class="footer-menu">
                    <h2 class="footer-wid-title">User Navigation </h2>
                    <ul>
                        <li><a href="">My account</a></li>
                        <li><a href="">Order history</a></li>
                        <li><a href="">Wishlist</a></li>
                        <li><a href="">Vendor contact</a></li>
                        <li><a href="">Front page</a></li>
                    </ul>
                </div>
            </div>

            <div class="col-md-3 col-sm-6">
                <div class="footer-menu">
                    <h2 class="footer-wid-title">Categories</h2>
                    <ul>
                        <li><a href="">Mobile Phone</a></li>
                        <li><a href="">Home accesseries</a></li>
                        <li><a href="">LED TV</a></li>
                        <li><a href="">Computer</a></li>
                        <li><a href="">Gadets</a></li>
                    </ul>
                </div>
            </div>

            <div class="col-md-3 col-sm-6">
                <div class="footer-newsletter">
                    <h2 class="footer-wid-title">Newsletter</h2>
                    <p>Sign up to our newsletter and get exclusive deals you wont find anywhere else straight to your inbox!</p>
                    <div class="newsletter-form">
                        <input type="email" placeholder="Type your email">
                        <input type="submit" value="Subscribe">
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<div class="footer-bottom-area">
    <div class="container">
        <div class="row">
            <div class="col-md-8">
                <div class="copyright">
                    <p>&copy; 2015 uCommerce. All Rights Reserved. <a href="http://www.freshdesignweb.com" target="_blank">freshDesignweb.com</a></p>
                </div>
            </div>

            <div class="col-md-4">
                <div class="footer-card-icon">
                    <i class="fa fa-cc-discover"></i>
                    <i class="fa fa-cc-mastercard"></i>
                    <i class="fa fa-cc-paypal"></i>
                    <i class="fa fa-cc-visa"></i>
                </div>
            </div>
        </div>
    </div>
</div>

<!-- Latest jQuery form server -->
<script src="https://code.jquery.com/jquery.min.js"></script>

<!-- Bootstrap JS form CDN -->
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>

<!-- jQuery sticky menu -->
<script src="js/owl.carousel.min.js"></script>
<script src="js/jquery.sticky.js"></script>

<!-- jQuery easing -->
<script src="js/jquery.easing.1.3.min.js"></script>

<!-- Main Script -->
<script src="js/main.js"></script>
</body>
</html>