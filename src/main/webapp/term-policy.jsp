<!doctype html>
<%@page import="common.User"%>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>Online Gaming- About Us</title>
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
                            <li><a href="index.jsp" class="active">Home</a></li>
                            <li><a href="about-us.jsp">About us</a></li>
                            <li><a href="contact-us.jsp">Contact us</a></li>
                            <li class="dropdown"><a href="javascript:void(0)" class="dropdown-toggle" data-toggle="dropdown" role="button"
                                    aria-haspopup="true" aria-expanded="false">Pages</a>
                                <ul class="dropdown-menu maindrop_menu">
                                    <li><a href="term-policy.jsp">Terms and Policy</a></li>
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
                <li><a href="index.jsp" class="active">Home</a></li>
                <li><a href="about-us.jsp">About us</a></li>
                <li><a href="contact-us.jsp">Contact us</a></li>
                <li class="dropdown"><a href="" class="dropdown-toggle" data-toggle="dropdown" role="button"
                        aria-haspopup="true" aria-expanded="false">Pages</a>
                    <ul class="dropdown-menu maindrop_menu">
                        <li><a href="term-policy.jsp">Terms and Policy</a></li>
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

<section id="contact-page" class="contact-page section refundPolicy-sec">
        <div class="container">

            <div class="row">
                <div class="col-md-12 mx-auto">
                    <div class="heading text-center">
                        <h2>Term & policy</h2>
                        <img src="assets/images/heading-border-effect.png" class="img-fluid" alt="effect">
                    </div>
                    <p>Welcome to PlaySmart Gaming, operated by CP Technology and Integrated Systems Limited. Please
                        take the time to read through our Terms and Policy to understand your rights and obligations as
                        a user of our services. By accessing or using our website and services, you agree to comply with
                        these terms and policies.
                    </p>
                    <h2>TERMS OF SERVICE</h2>
                    <h2><i>1. ACCEPTANCE OF TERMS</i></h2>
                    <p>By accessing and using PlaySmart Gaming, you agree to comply with and be bound by these terms. If
                        you do not agree with any part of these terms, please do not use our services.</p>
                    <h2><i>2. USER ACCOUNTS</i></h2>
                    <p>To access certain features, you may be required to create an account. You are responsible for
                        maintaining the confidentiality of your account information, including your password, and for
                        all activities under your account.</p>
                    <h2><i>3. USER CONDUCT</i></h2>
                    <p>You agree not to use our services for any unlawful or prohibited activities. This includes but is
                        not limited to:</p>
                    <ul>
                        <li>
                            Exploiting, harming, or attempting to exploit or harm minors in any way.
                        </li>
                        <li>Sending, knowingly receiving, uploading, downloading, using, or reusing any material that
                            violates our content standards.</li>
                        <li>Transmitting any unsolicited or unauthorized advertising, promotional materials, or any
                            other form of solicitation.</li>
                        <li>Engaging in any activity that could disable, overburden, or impair the functioning of our
                            services.</li>
                    </ul>
                    <h2><i>4. INTELLECTUAL PROPERTY</i></h2>
                    <p>All content, features, and functionality (including but not limited to all information, software,
                        text, displays, images, video, and audio, and the design, selection, and arrangement thereof)
                        are owned by CP Technology and Integrated Systems Limited, its licensors, or other providers of
                        such material. Reproduction, distribution, modification, creation of derivative works, public
                        display, public performance, republishing, downloading, storing, or transmitting any material on
                        our website without our prior written consent is prohibited.</p>
                    <h2><i>5. TERMINATION OF USE</i></h2>
                    <p>We reserve the right to terminate or suspend access to our services immediately, without prior
                        notice or liability, for any reason, including but not limited to a breach of these Terms.</p>
                    <h2><i>6. DISCLAIMER OF WARRANTIES</i></h2>
                    <p>Our services are provided on an “as is” and “as available” basis. We make no warranties,
                        expressed or implied, about the reliability, accuracy, or availability of our services. You use
                        our services at your own risk.</p>
                    <h2><i>7. LIMITATION OF LIABILITY</i></h2>
                    <p>In no event shall CP Technology and Integrated Systems Limited, nor its directors, employees,
                        partners, agents, suppliers, or affiliates, be liable for any indirect, incidental, special,
                        consequential, or punitive damages, including without limitation, loss of profits, data, use,
                        goodwill, or other intangible losses, resulting from:</p>
                    <ul>
                        <li>Your use or inability to use our services.</li>
                        <li>Any unauthorized access to or use of our servers and data.</li>
                        <li>Any interruption or cessation of transmission to or from our services.</li>
                    </ul>
                    <h2><i>8. CHANGES TO TERMS</i></h2>
                    <p>We reserve the right to modify or replace these Terms at any time. If a revision is material, we
                        will provide at least 30 days’ notice before any new terms take effect. What constitutes a
                        material change will be determined at our sole discretion.</p>
					<h2><i>9. NO REWARD</i></h2>
					<p>The website is provided as is and as available, without any warranty or guaranty of any kind, either expressed or implied. No money will be awarded in any scenario for playing and/or winning games on the website.</p>
                    <h2>PRIVACY POLICY</h2>
                    <h2><i>1. INFORMATION COLLECTION</i></h2>
                    <p>We collect various types of information in connection with the services we provide, including:
                    </p>
                    <ul>
                        <li>Personal Information: Information that can be used to identify you, such as your name, email
                            address, and phone number.</li>
                        <li>Non-Personal Information: Data that is in a form that does not, on its own, permit direct
                            association with any specific individual.</li>
                        <li>Usage Data: Details of your use of our services, including traffic data, location data,
                            logs, and other communication data.</li>
                    </ul>
                    <h2><i>2. USE OF INFORMATION</i></h2>
                    <p>We use the information we collect to:</p>
                    <ul>
                        <li>Provide, maintain, and improve our services.</li>
                        <li>Personalize your experience.</li>
                        <li>Communicate with you, including sending promotional materials and updates.</li>
                        <li>Monitor and analyze trends, usage, and activities in connection with our services.</li>
                    </ul>
                    <h2><i>3. SHARING OF INFORMATION</i></h2>
                    <p>We do not share your personal information with third parties except in the following
                        circumstances:</p>
                    <ul>
                        <li>With Your Consent: We may share your information with third parties if you have given us
                            permission to do so.</li>
                        <li>Service Providers: We may share information with third-party vendors, service providers, and
                            other partners who perform services on our behalf, such as payment processing, data
                            analysis, and customer service.</li>
                        <li>Legal Requirements: We may disclose your information if required to do so by law or in the
                            good-faith belief that such action is necessary to comply with legal obligations, protect
                            and defend our rights or property, or act to protect the safety of our users or the public.
                        </li>
                    </ul>
                    <h2><i>4. DATA SECURITY</i></h2>
                    <p>We implement appropriate security measures to protect against unauthorized access, alteration,
                        disclosure, or destruction of your personal information. However, no method of transmission over
                        the Internet or method of electronic storage is entirely secure, and we cannot guarantee
                        absolute security.</p>
                    <h2><i>5. COOKIES AND TRACKING TECHNOLOGIES</i></h2>
                    <p>Our website uses cookies and similar tracking technologies to enhance your browsing experience,
                        analyze site traffic, and understand where our visitors are coming from. You can control cookies
                        through your browser settings, but note that disabling cookies may affect the functionality of
                        our services.</p>
                    <h2><i>6. CHILDREN’S PRIVACY</i></h2>
                    <p>Our services are not directed to individuals under 13, and we do not knowingly collect personal
                        information from children under 13. If we become aware that we have collected personal
                        information from a child under age 13 without verification of parental consent, we will take
                        steps to delete that information from our servers.</p>
                    <h2><i>7. INTERNATIONAL USERS</i></h2>
                    <p>If you are accessing our services from outside Nigeria, please note that your information may be
                        transferred to, stored, and processed in Nigeria, where our servers and central database are
                        located. By using our services, you consent to this transfer of information.</p>
                        <h2><i>8. CHANGES TO THIS PRIVACY POLICY</i></h2>
                        <p>We may update our Privacy Policy from time to time. We will notify you of any changes by posting the new Privacy Policy on this page.</p>
                </div>
            </div>
        </div>
    </section>

  

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
                            <li><a href="index.jsp">Home</a></li>
                            <li><a href="about-us.jsp" class="">About Us</a></li>
                            <li><a href="contact-us.jsp" class="active">Contact Us</a></li>
                            <li><a href="term-policy.jsp">Terms and Policy</a></li>
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
    <!-- <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script> -->
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
 // js for login and signup ========================= //
    var userName = '<%= (session.getAttribute("user") != null) ? ((User) session.getAttribute("user")).getFirstName() : "" %>';
  if (userName !== '') {
      console.log("User is logged in: " + userName);
      $(".userNav-res").show();
      $(".login_menu").hide();
      $(".userNav-res ul.nav li.dropdown .dropdown-toggle").text(userName);
      $(".userInfo .dropdown-toggle").text(userName);
      $(".login").hide();
      $(".userInfo").show();
      $(".casino-btn a").attr("href", "user-detail.jsp");
      $(".cardBox a").attr("href", "user-detail.jsp");
      $(".casGnbn a").attr("href", "user-detail.jsp");
  }else{
      console.log("User is not logged in");
      $(".userNav-res").hide();
      $(".login_menu").show();
      $(".login").show();
      $(".userInfo").hide();
      $(".casino-btn a").attr("href", "login.jsp");
      $(".cardBox a").attr("href", "login.jsp");
      $(".casGnbn a").attr("href", "login.jsp");
  }
  
  function logout() {
      // Assuming you want to submit the form to the "/otp" endpoint
      document.forms["logoutForm"].submit();
  }
    </script>
</body>

</html>