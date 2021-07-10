<!DOCTYPE html>
<!--
	ustora by freshdesignweb.com
	Twitter: https://twitter.com/freshdesignweb
	URL: https://www.freshdesignweb.com/ustora/
-->
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Update</title>
    
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

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
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
                        <li><a href="index.jsp">Home</a></li>
                        <li><a href="shop.jsp">Shop page</a></li>
                        <li><a href="single-product.jsp">Single product</a></li>
                        <li><a href="cart.jsp">Cart</a></li>
                        <li><a href="checkout.jsp">Checkout</a></li>
                        <li><a href="manager.jsp">Manager</a></li>
                        <li  class="active"><a href="update.jsp">Update</a></li>
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
                        <h2>Laptop Market </h2>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="container"> 
        
        <div class="panel panel-primary">
            <form action="search" method="get">
                <input type="text" name="ten" value="Nhập Mã Sản Phẩm">
                <input type="submit" value="Search">
            </form>
            <div class="panel-heading">
                <h2 class="text-center">Chỉnh Sửa Sản Phẩm</h2>

            </div>
            <c:forEach items="${listsearch}" var="list">
                <form action="update" method="post">
                     <div class="form-group">
                        <label >Mã Sản Phẩm:</label>
                        <input required="true" type="hidden" class="form-control" id="idSp" name="idSp"
                               value="${sp.maSp}"/>
                    </div>
                    <div class="form-group">
                        <label >Tên Sản Phẩm:</label>
                        <input required="true" type="text" class="form-control" id="tenSp" name="tenSp"
                               value="${sp.tenSp}"/>
                    </div>
                    <div class="form-group">
                        <label >Mô Tả:</label>
                        <input required="true" type="text" class="form-control" id="moTa" name="moTa"
                               value="${sp.moTa}"/>
                    </div>
                    <div class="form-group">
                        <label >Giá Bán:</label>
                        <input required="true" type="number" class="form-control" id="giaBan" name="giaBan"
                               value="${sp.giaBan}"/>
                    </div>
                    <div class="form-group">
                        <label >Số Lượng:</label>
                        <input required="true" type="number" class="form-control" id="soluong" name="soluong"
                               value="${sp.soluong}"/>
                    </div>
                    <button class="btn btn-success">Update</button>
                </form>
            
            </c:forEach>
            <form action="add" method="post">
                <input type="text" name="tenSp" value="tenSp">
                <input type="text" name="moTa" value="moTa">
                <input type="number" name="giaBan" value="1">
                <input type="number" name="soLuong" value="1">
                <input type="submit" value="Add">
            </form>
        </div>
        
    </div>
   
    <div class="container">
        <div class="panel panel-primary">
            <form action="searchkh" method="get">
                <input width="20%" type="text" name="name" value="Nhập Tên Khách Hàng">
                <input type="submit" value="Search">
            </form>
            <div class="panel-heading">
                <h2 class="text-center">Chỉnh Sửa Khách Hàng</h2>
            </div>
            <c:forEach items="${khachhang}" var="list">
            <div class="panel-body">
                <form action="updatekh" method="post">
                    <input type="hidden" name="id" value="${list.maKh}">
                    <div class="form-group">
                        <label for="tenKh">Ho Ten:</label>
                        <input required="true" type="text" class="form-control" id="tenKh" name="tenKh"
                               value="${list.tenKh}"/>
                    </div>
                    <div class="form-group">
                        <label for="ngSinh">Ngay Sinh:</label>
                        <input type="date" class="form-control" id="ngSinh" name="ngSinh" value="${list.ngSinh}"/>
                    </div>
                    <div class="form-group">
                        <label for="diaChi">Dia Chi:</label>
                        <input required="true" type="text" class="form-control" id="diaChi" name="diaChi"
                               value="${list.diaChi}"/>
                    </div>
                    <div class="form-group">
                        <label for="SDT">SDT:</label>
                        <input type="text" class="form-control" id="SDT" name="SDT" value="${list.SDT}"/>
                    </div>
                    <button class="btn btn-success">Update</button>
                </form>
            </c:forEach>
        </div>
    </div>
    <div class="footer-top-area">
        <div class="zigzag-bottom"></div>
        <div class="container">
            <div class="row">
                <div class="col-md-3 col-sm-6">
                    <div class="footer-about-us">
                        <h2><span>LapTop</span></h2>
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