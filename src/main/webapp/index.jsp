<!doctype html>
<%@page import="common.User"%>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>Online Gaming</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!---Font Icon-->
    <link href="assets/css/font-awesome.min.css" rel="stylesheet">
    <link href="assets/fonts/flaticon.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css"
        integrity="sha512-SnH5WK+bZxgPHs44uWIX+LLJAJ9/2PkPKZ5QiAj6Ta86w+fsb2TkcmfRyVX3pBnMFcV7oQPJkl9QevSCWr3W6A=="
        crossorigin="anonymous" referrerpolicy="no-referrer" />
    <!-- / -->

    <!-- Plugin CSS -->
    <link href="assets/css/bootstrap.min.css" rel="stylesheet">
    <link href="assets/css/slick.css" rel="stylesheet">
    <link href="assets/css/animate.min.css" rel="stylesheet">
    <link href="assets/css/magnific-popup.css" rel="stylesheet">
    <link href="assets/css/YouTubePopUp.css" rel="stylesheet">
    <link rel="stylesheet" href="assets/css/menu.css">
    <!-- / -->
    <!-- Favicon -->
    <link rel="icon" href="assets/images/header-logo.png" />
    <!-- / -->
    <!-- Theme Style -->
    <link href="assets/css/style.css" rel="stylesheet">
    <link href="assets/css/responsive.css" rel="stylesheet">

</head>

<body oncontextmenu="return false;">
    <!-- back to top start -->
    <div id="back-top-btn">
        <i class="fa fa-chevron-up"></i>
    </div>
    <!-- back to top end -->

    <!-- Preloader Start -->
    <div class="preloader">
        <div class="loader">
            <span></span>
            <span></span>
            <span></span>
            <span></span>
            <span></span>
            <span></span>
            <span></span>
            <span></span>
            <span></span>
            <span></span>
            <span></span>
            <span></span>
            <span></span>
            <span></span>
            <span></span>
        </div>
    </div>
    <!-- Preloader end -->
    <!-- Header -->
    <section id="header" class="header_area">

        <!-- NAV AREA CSS -->
        <nav id="nav-part"
            class="navbar header-nav other-nav custom_nav full_nav sticky-top navbar-expand-md hidden-main">
            <div class="container">


                <a class="navbar-brand" href="index.jsp">
                    <p class="logotxt">PSgaming</p>
                    <!-- <img src="assets/images/header-logo.png" class="img-fluid logo-color" alt="logo"> -->
                    </a>

                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse"
                    data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                    <div class="nav-res">
                        <ul class="nav navbar-nav m-auto menu-inner tog-nav">
                            <li><a href="#banner" class="active">Home</a></li>
                            <li><a href="https://playsmartgaming.com/about-us/">About us</a></li>
                            <li><a href="https://playsmartgaming.com/services/">Services</a></li>
                            <li><a href="https://playsmartgaming.com/contact-us/">Contact us</a></li>
                            <li class="dropdown"><a href="javascript:void(0)" class="dropdown-toggle" data-toggle="dropdown" role="button"
                                    aria-haspopup="true" aria-expanded="false">Pages</a>
                                <ul class="dropdown-menu maindrop_menu">
                                    <li><a href="https://playsmartgaming.com/refund-policy/">Refund Policy</a></li>
                                    <li><a href="https://playsmartgaming.com/shipping-policy/">Shipping Policy</a></li>
                                    <li><a href="https://playsmartgaming.com/terms-and-policy/">Terms and Policy</a></li>
                                </ul>
                            </li>
                            <li class="more-less">
                                <i class="fa fa-align-right"></i>
                                <i class="fa fa-times"></i>
                                <!-- <i class="fa-solid fa-bars"></i> -->
                            </li>

                        </ul>
                    </div>
                    <!-- html for signup  -->
                    <ul class="login_menu navbar-right nav-sign">
                        <li class="login"><a href="signup.jsp" class="btn-4 yellow-btn">Signup</a></li>
                        <li class="login"><a href="login.jsp" class="btn-4 pink-bg">Login</a></li>
                    </ul>
                    <!-- html for user dropdown  -->
                     <div class="nav-res userNav-res">
                        <ul class="nav">
                            <li class="dropdown"><a href="javascript:void(0)" class="dropdown-toggle" data-toggle="dropdown" role="button"
                                    aria-haspopup="true" aria-expanded="false">Demo132</a>
                                <ul class="dropdown-menu maindrop_menu">
                                    	<li>
                                			<form id="logoutForm" action="${pageContext.request.contextPath}/logout" method="get">
		                                    	<a href="javascript:void(0)" onclick="logout()">Logout</a>
		                                    </form>
                                    	</li>
                                </ul>
                            </li>
						
                        </ul>
                    </div> 
                </div>
            </div>
        </nav>
        <!-- mobile menu -->

        <nav id='cssmenu' class="hidden mobile">
            <div class="logo">
                <a href="index.jsp" class="logo">
                    <!-- <img src="assets/images/header-logo.png" class="img-responsive" alt=""> -->
                    <p class="logotxt">PSgaming</p>
                </a>
            </div>
            <div id="head-mobile"></div>
            <div class="button"><i class="more-less fa fa-align-right"></i></div>
            <ul>
                <li><a href="#banner" class="active">Home</a></li>
                <li><a href="https://playsmartgaming.com/about-us/">About us</a></li>
                            <li><a href="https://playsmartgaming.com/services/">Services</a></li>
                            <li><a href="https://playsmartgaming.com/contact-us/">Contact us</a></li>
                <li class="dropdown"><a href="" class="dropdown-toggle" data-toggle="dropdown" role="button"
                        aria-haspopup="true" aria-expanded="false">Pages</a>
                    <ul class="dropdown-menu maindrop_menu">
                        <li><a href="https://playsmartgaming.com/refund-policy/">Refund Policy</a></li>
                        <li><a href="https://playsmartgaming.com/shipping-policy/">Shipping Policy</a></li>
                        <li><a href="https://playsmartgaming.com/terms-and-policy/">Terms and Policy</a></li>
                    </ul>
                </li>

                <li class="login"><a href="signup.jsp" class="btn-4 yellow-bg yellow-btn">Signup</a></li>
                <li class="login"><a href="login.jsp" class="btn-4 yellow-bg">Login</a></li> 

                <li class="dropdown userInfo"><a href="" class="dropdown-toggle" data-toggle="dropdown" role="button"
                    aria-haspopup="true" aria-expanded="false">Demo132</a>
                <ul class="dropdown-menu maindrop_menu">
                    <li>
						<form id="logoutForm" action="${pageContext.request.contextPath}/logout" method="get">
		                       <a href="javascript:void(0)" onclick="logout()">Logout</a>
		                </form>
					</li>
                </ul>
            </li>

            </ul>

        </nav>

        <!-- End mobile menu -->
    </section>
    <!-- Header End -->

    <section id="banner" class="banner-inner main_page">
        <div class="container">
            <div class="row">

                <div class="col-md-6 offset-md-6 banner-center">
                    <div class="banner_text">

                        <h1 class="title">Online Gaming</h1>
                        <h3>PLAY VIDEO GAMES</h3>
                        <p>playsmartgaming.com Publishes some of the highest quality games available online. Our massive selection of games include some of the most played genres online, the most popular being <b> racing games, slot games, action games</b>.</p>

                        <div class="casino-btn">
                            <a href="login.jsp" class="btn-4 yellow-btn">play now</a>
                        </div>
                    </div>

                </div>
            </div>
        </div>
    </section>

    <!-- Banner End -->


    <!-- Control Start -->

    <section id="control" class="control back-light section natureSlote">
        <div class="container">
            <div class="row justify-content-center text-center">
                <div class="col-lg-12">
                    <div class="heading">
                        <h2>ONLINE GAMING SLOTS</h2>
                        <img src="assets/images/heading-border-effect.png" class="img-fluid" alt="effect">
                        <p>Explore quality slot games anytime and anywhere. From classic slot machines to modern masterpieces, enjoy exciting visuals and larger-than-life graphics with every spin. With their fun and exciting themes, spectacular graphics, lively sound effects and progressive jackpots, there’s rarely a dull moment with our online casino slots. Their easy-to-learn rules make them simple to enjoy, whether you’re completely new to the world of slots or an experienced player.</p>
                        <div class="casino-btn">
                            <a href="login.jsp" class="btn-4 yellow-btn">play now</a>
                        </div>
                    </div>
                </div>
    </section>
    <!-- Control End -->
    <!-- How to Start -->

    <section id="start" class="how-start  section">
        <div class="container">
            <div class="control-inner gdpRow" id="htrt">
                <div class="cardBox">
                    <a href="login.jsp">
                        <img class="img-fluid" src="assets/images/bingo-game-slider01.png" alt="" />
                        <div class="gamTTl">
                            <p>Bingo slot</p>
                        </div>
                    </a>
                </div>
                <div class="cardBox">
                    <a href="login.jsp">
                        <img class="img-fluid" src="assets/images/shield-slot-game-slider02.png" alt="" />
                        <div class="gamTTl">
                            <p>shield slot</p>
                        </div>
                    </a>
                </div>
                <div class="cardBox">
                    <a href="login.jsp">
                        <img class="img-fluid" src="assets/images/horse-race-game-slider03.png" alt="" />
                        <div class="gamTTl">
                            <p>Horse race slot</p>
                        </div>
                    </a>
                </div>
                <div class="cardBox">
                    <a href="login.jsp">
                        <img class="img-fluid" src="assets/images/fruit-slot-machine-game-slider04.png" alt="" />
                        <div class="gamTTl">
                            <p>Fruit slot</p>
                        </div>
                    </a>
                </div>
                <div class="cardBox">
                    <a href="login.jsp">
                        <img class="img-fluid" src="assets/images/amazing-slot-game-slider05.png" alt="" />
                        <div class="gamTTl">
                            <p>Amazing slot</p>
                        </div>
                    </a>
                </div>
                <div class="cardBox">
                    <a href="login.jsp">
                        <img class="img-fluid" src="assets/images/bingo-game-slider01.png" alt="" />
                        <div class="gamTTl">
                            <p>Bingo slot</p>
                        </div>
                    </a>
                </div>
                <div class="cardBox">
                    <a href="login.jsp">
                        <img class="img-fluid" src="assets/images/fruit-slot-machine-game-slider04.png" alt="" />
                        <div class="gamTTl">
                            <p>Fruit slot</p>
                        </div>
                    </a>
                </div>
               
            </div>
        </div>
    </section>
    <!-- How to Start -->

    <!-- Related other games Start -->

    <section id="project-img" class="project-img in-project back-light section">
        <div class="container">

            <div class="row justify-content-center text-center">
                <div class="col-lg-6">
                    <div class="heading">
                        <h2>Related games</h2>
                        <img src="assets/images/heading-border-effect.png" class="img-fluid" alt="effect">
                    </div>
                </div>
            </div>
            <div class="row justify-content-center text-center pro-row">
                <div class="row mx-0">
                    <div class="col-md-3">
                        <div class="port_img">
                            <img src="assets/images/shield-slot-tab.png" class="img-fluid" alt="">

                            <div class="overlay1">
                                <div class="overlay-text">
                                    <div class="port-text">
                                        <div class="casino-btn">
                                            <a href="login.jsp" target="_blank" class="btn-4 yellow-btn">play now</a>
                                        </div>
                                        <div class="port-text-btm">
                                            <input type="hidden" name="shieldSlot" />
                                            <h3>Shield slot</h3>
                                            <p><span>$50/1hr</span></p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="port_img">
                            <img src="assets/images/bingo-slot-tab.png" class="img-fluid" alt="">

                            <div class="overlay1">
                                <div class="overlay-text">
                                    <div class="port-text">
                                        <div class="casino-btn">
                                            <a href="login.jsp" target="_blank" class="btn-4 yellow-btn">play now</a>
                                        </div>
                                        <div class="port-text-btm">
                                            <input type="hidden" name="bingoSlot" id="bingoSlot" value="bingoSlot" />
                                            <h3>Bingo slot</h3>
                                            <p><span>$50/1hr</span></p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="port_img">
                            <img src="assets/images/fruit-slot-machine-tab.png" class="img-fluid" alt="">

                            <div class="overlay1">
                                <div class="overlay-text">
                                    <div class="port-text">
                                        <div class="casino-btn">
                                            <a href="login.jsp" target="_blank" class="btn-4 yellow-btn">play now</a>
                                        </div>
                                        <div class="port-text-btm">
                                            <h3>Fruit slot</h3>
                                            <p><span>$50/1hr</span></p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="port_img">
                            <img src="assets/images/horse-race-slot-tab.png" class="img-fluid" alt="">

                            <div class="overlay1">
                                <div class="overlay-text">
                                    <div class="port-text">
                                        <div class="casino-btn">
                                            <a href="login.jsp" target="_blank" class="btn-4 yellow-btn">play now</a>
                                        </div>
                                        <div class="port-text-btm">
                                            <h3>Horse race slot</h3>
                                            <p><span>$50/1hr</span></p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- <div class="col-md-3">
                        <div class="port_img">
                            <img src="assets/images/amazing-slot-tab.png" class="img-fluid" alt="">

                            <div class="overlay1">
                                <div class="overlay-text">
                                    <div class="port-text">
                                        <div class="casino-btn">
                                            <a href="login.jsp" target="_blank" class="btn-4 yellow-btn">play now</a>
                                        </div>
                                        <div class="port-text-btm">
                                            <h3>Amazing slot</h3>
                                            <p><span>$50/1hr</span></p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div> -->

                </div>
            </div>

  
            <div class="row justify-content-center text-center">
                <div class="col-md-12">
                    <div class="casino-btn start-btn">
                        <a href="javascript:void(0)" class="btn-4 yellow-btn">Browse All</a>
                    </div>
                </div>
            </div>

        </div>
    </section>
    <!-- Related other game End -->

    <!-- Unlock free spin Start -->
    <section id="free-spin" class="free-spin twofityGams back-light section">
        <div class="container">
            <div class="row justify-content-center text-center">
                <div class="col-lg-6">
                    <div class="heading">
                        <h2>5+ Online Games</h2>
                        <img src="assets/images/heading-border-effect.png" class="img-fluid" alt="effect">
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-md-5 mx-auto no-padding casGnbn">
                    <div class="row">
                        <div class="col-md-6">
                            <a href="login.jsp">
                                <img src="assets/images/bingo-game-slider01.png" class="img-fluid" alt="effect">
                            </a>
                        </div>
                        <div class="col-md-6">
                            <a href="login.jsp">
                                <img src="assets/images/shield-slot-game-slider02.png" class="img-fluid" alt="effect">
                            </a>
                        </div>
                        <div class="col-md-6">
                            <a href="login.jsp">
                                <img src="assets/images/horse-race-game-slider03.png" class="img-fluid" alt="effect">
                            </a>
                        </div>
                        <div class="col-md-6">
                            <a href="login.jsp">
                                <img src="assets/images/fruit-slot-machine-game-slider04.png" class="img-fluid" alt="effect">
                            </a>
                        </div>
                    </div>
                </div>

                <div class="col-md-6">
                    <div class="spin-text">
                        <p style="margin-bottom:15px;">All guaranteed to keep you entertained for hours to come. We pride ourselves on providing our users with original and rewarding content to keep them entertained. So if you are looking for games for kids or to simply blow off a little steam and use up some time, feel free to enjoy all that we offer and return to play more great games.</p>
                        <div class="casino-btn">
                            <a href="user-detail.html" class="btn-4 yellow-btn">play now</a>
                        </div>

                    </div>

                </div>
            </div>
        </div>
    </section>

    <!-- Unlock free spin End -->



    <!-- Casino Contact start -->
    <section id="contact-us" class="contact-us back-dark contact section">
        <div class="container">
            <div class="row">

                <div class="col-lg-5 ms-auto col-md-6">
                    <div class="contact-about">
                        <div class="heading">
                            <h2>ABOUT PS Gaming</h2>
                            <img src="assets/images/heading-border-effect.png" class="img-fluid" alt="effect">
                        </div>
                        <p class="mb30">Our massive selection of games include some of the most played genres online, the most popular being <b> racing games, slot games, action games</b> and many more.</p>
                    </div>
                    <div class="payments socialFtr" style="padding-top:35px;">
                        <div class="heading">
                            <h2>Social links</h2>
                            <img src="assets/images/heading-border-effect.png" class="img-fluid" alt="effect">
                        </div>
                        <ul>
                            <li><a href="#" target="_blank"><i class="fa-brands fa-facebook"></i></a></li>
                            <li><a href="#" target="_blank"><i class="fa-brands fa-instagram"></i></a></li>
                            <li><a href="#" target="_blank"><i class="fa-brands fa-twitter"></i></a></li>
                            <li><a href="#" target="_blank"><i class="fa-brands fa-linkedin"></i></a></li>
                            <li><a href="#" target="_blank"><i class="fa-brands fa-youtube"></i></a></li>
                        </ul>
                    </div>
                </div>
                <div class="col-lg-5 ml-auto col-md-6">
                    <div class="row">
                        <div class="col-lg-12">
                            <div class="payments">
                                <div class="heading">
                                    <h2>Payment Methods</h2>
                                    <img src="assets/images/heading-border-effect.png" class="img-fluid" alt="effect">
                                </div>
                                <ul>
                                    <li><a href="#"><img src="assets/images/payment-image-1.jpg" class="img-fluid"
                                                alt="effect"></a></li>
                                    <li><a href="#"><img src="assets/images/payment-image-2.jpg" class="img-fluid"
                                                alt="effect"></a></li>
                                    <li><a href="#"><img src="assets/images/payment-image-3.jpg" class="img-fluid"
                                                alt="effect"></a></li>
                                    <li><a href="#"><img src="assets/images/payment-image-4.jpg" class="img-fluid"
                                                alt="effect"></a></li>
                                    <li><a href="#"><img src="assets/images/payment-image-5.jpg" class="img-fluid"
                                                alt="effect"></a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-lg-12">
                            <div class="subscribe">
                                <div class="heading">
                                    <h3>Subscribe for offers</h3>
                                    <img src="assets/images/heading-border-effect.png" class="img-fluid" alt="effect">
                                </div>
                                <div class="sub-form">
                                    <form>
                                        <div class="form-group col-sm-12">
                                            <input type="text" class="form-control" name="email"
                                                placeholder="Enter Your Email">
                                        </div>
                                        <div class="casino-btn newsletter">
                                            <a href="#" class="btn-4 yellow-btn">send</a>
                                        </div>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row control-pad">
                <div class="border-effect1">
                    <img src="assets/images/border-effect.png" class="img-fluid" alt="effect">
                </div>
                <div class="border-effect2">
                    <img src="assets/images/border-effect.png" class="img-fluid" alt="effect">
                </div>
            </div>
            <div class="row justify-content-center text-center">
                <div class="col-md-12 bot-menu">
                    <div class="foot-menu">
                        <ul>
                            <li><a href="https://playsmartgaming.com/about-us/" class="">About Us</a></li>
                            <li><a href="https://playsmartgaming.com/refund-policy/">Refund Policy</a></li>
                            <li><a href="https://playsmartgaming.com/shipping-policy/" class="active">Shipping Policy</a></li>
                            <li><a href="https://playsmartgaming.com/terms-and-policy/">Terms and Policy</a></li>
                        </ul>
                    </div>
                </div>
                <div class="col-md-12">
                    <div class="copy-right">
                        <h6>Copyright 2024. All rights reserved by play Smart gaming</h6>
                    </div>
                </div>
            </div>
        </div>

    </section>
    <!-- Casino Contact End -->

    <!-- jQuery -->
    <script src="assets/js/jquery-3.2.1.min.js"></script>
    <script src="assets/js/jquery-migrate-3.0.0.min.js"></script>

    <!-- Plugins -->
    <script src="assets/js/popper.min.js"></script>
    <script src="assets/js/bootstrap.min.js"></script>
    <script src="assets/js/slick.min.js"></script>
    <script src="assets/js/counter.js"></script>
    <script src="assets/js/jquery.countdown.min.js"></script>
    <script src="assets/js/menu-opener.js"></script>
    <script src="assets/js/waypoints.js"></script>
    <script src="assets/js/YouTubePopUp.jquery.js"></script>
    <script src="assets/js/jquery.event.move.js"></script>
    <script src="assets/js/SmoothScroll.js"></script>
    <!-- custom -->
    <script src="assets/js/custom.js"></script>
    <script src="assets/js/menu.js"></script>
<script>



    var userName = '<%= (session.getAttribute("user") != null) ? ((User) session.getAttribute("user")).getFirstName() : "" %>';
    if (userName !== '') {
        console.log("User is logged in: " + userName);
        $(".userNav-res").show();
        $(".login_menu").hide();
        $(".userNav-res ul.nav li.dropdown .dropdown-toggle").text(userName);
        $(".userInfo .dropdown-toggle").text(userName);
        $(".login").hide();
        $(".userInfo").show();
    }else{
        console.log("User is not logged in");
        $(".userNav-res").hide();
        $(".login_menu").show();
        $(".login").show();
        $(".userInfo").hide();
    }
    
    function logout() {
        // Assuming you want to submit the form to the "/otp" endpoint
        document.forms["logoutForm"].submit();
    }
</script>
</body>

</html>