<!doctype html>
<%@page import="java.util.List"%>
<%@page import="common.GameEntity"%>
<%@page import="common.User"%>
<%
List<GameEntity> allGames = (List<GameEntity>) session.getAttribute("allGames");
// Assuming GameEntity is your entity class for games
%>
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
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css"
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
<style>
#currency:disabled {
	background-color: transparent;
	appearance: none;
	-webkit-appearance: none;
	-moz-appearance: none;
}
</style>
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
			<span></span> <span></span> <span></span> <span></span> <span></span>
			<span></span> <span></span> <span></span> <span></span> <span></span>
			<span></span> <span></span> <span></span> <span></span> <span></span>
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
					<p class="logotxt">PSgaming</p> <!-- <img src="assets/images/header-logo.png" class="img-fluid logo-color" alt="logo"> -->
				</a>

				<button type="button" class="navbar-toggle collapsed"
					data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"
					aria-expanded="false">
					<span class="sr-only">Toggle navigation</span> <span
						class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<div class="collapse navbar-collapse"
					id="bs-example-navbar-collapse-1">
					<div class="nav-res">
						<ul class="nav navbar-nav m-auto menu-inner tog-nav">
							<li><a href="#banner" class="active">Home</a></li>
							<li><a href="https://playsmartgaming.com/about-us/">About
									us</a></li>
							<li><a href="https://playsmartgaming.com/services/">Services</a></li>
							<li><a href="https://playsmartgaming.com/contact-us/">Contact
									us</a></li>
							<li class="dropdown"><a href="javascript:void(0)"
								class="dropdown-toggle" data-toggle="dropdown" role="button"
								aria-haspopup="true" aria-expanded="false">Pages</a>
								<ul class="dropdown-menu maindrop_menu">
									<li><a href="https://playsmartgaming.com/refund-policy/">Refund
											Policy</a></li>
									<li><a href="https://playsmartgaming.com/shipping-policy/">Shipping
											Policy</a></li>
									<li><a
										href="https://playsmartgaming.com/terms-and-policy/">Terms
											and Policy</a></li>
								</ul></li>
							<li class="more-less"><i class="fa fa-align-right"></i> <i
								class="fa fa-times"></i> <!-- <i class="fa-solid fa-bars"></i> -->
							</li>

						</ul>
					</div>
					<!-- html for signup  -->
					<ul class="login_menu navbar-right nav-sign">
						<li class="login"><a href="signup.jsp"
							class="btn-4 yellow-btn">Signup</a></li>
						<li class="login"><a href="login.jsp" class="btn-4 pink-bg">Login</a></li>
					</ul>
					<!-- html for user dropdown  -->
					<div class="nav-res userNav-res">
						<ul class="nav">
							<li class="dropdown"><a href="javascript:void(0)"
								class="dropdown-toggle" data-toggle="dropdown" role="button"
								aria-haspopup="true" aria-expanded="false">Demo132</a>
								<ul class="dropdown-menu maindrop_menu">
									<li>
										<form id="logoutForm"
											action="${pageContext.request.contextPath}/logout"
											method="get">
											<a href="javascript:void(0)" onclick="logout()">Logout</a>
										</form>
									</li>
								</ul></li>

						</ul>
					</div>
				</div>
			</div>
		</nav>
		<!-- mobile menu -->

		<nav id='cssmenu' class="hidden mobile">
			<div class="logo">
				<a href="index.jsp" class="logo"> <!-- <img src="assets/images/header-logo.png" class="img-responsive" alt=""> -->
					<p class="logotxt">PSgaming</p>
				</a>
			</div>
			<div id="head-mobile"></div>
			<div class="button">
				<i class="more-less fa fa-align-right"></i>
			</div>
			<ul>
				<li><a href="#banner" class="active">Home</a></li>
				<li><a href="https://playsmartgaming.com/about-us/">About
						us</a></li>
				<li><a href="https://playsmartgaming.com/services/">Services</a></li>
				<li><a href="https://playsmartgaming.com/contact-us/">Contact
						us</a></li>
				<li class="dropdown"><a href="" class="dropdown-toggle"
					data-toggle="dropdown" role="button" aria-haspopup="true"
					aria-expanded="false">Pages</a>
					<ul class="dropdown-menu maindrop_menu">
						<li><a href="https://playsmartgaming.com/refund-policy/">Refund
								Policy</a></li>
						<li><a href="https://playsmartgaming.com/shipping-policy/">Shipping
								Policy</a></li>
						<li><a href="https://playsmartgaming.com/terms-and-policy/">Terms
								and Policy</a></li>
					</ul></li>

				<li class="login"><a href="signup.jsp"
					class="btn-4 yellow-bg yellow-btn">Signup</a></li>
				<li class="login"><a href="login.jsp" class="btn-4 yellow-bg">Login</a></li>

				<li class="dropdown userInfo"><a href=""
					class="dropdown-toggle" data-toggle="dropdown" role="button"
					aria-haspopup="true" aria-expanded="false">Demo132</a>
					<ul class="dropdown-menu maindrop_menu">
						<li>
							<form id="logoutForm"
								action="${pageContext.request.contextPath}/logout" method="get">
								<a href="javascript:void(0)" onclick="logout()">Logout</a>
							</form>
						</li>
					</ul></li>

			</ul>

		</nav>

		<!-- End mobile menu -->
	</section>
	<!-- Header End -->

	<!-- contact-page Start -->
	<section id="contact-page" class="contact-page section">
		<div class="container">

			<div class="row">
				<div class="col-md-9 mx-auto">
					<div class="heading text-center">
						<h2>User info</h2>
						<img src="assets/images/heading-border-effect.png"
							class="img-fluid" alt="effect">
					</div>
					<div class="faq-form">
						<form id="purchaseForm"
							action="${pageContext.request.contextPath}/userInfo"
							method="post">
							<div class="row">
								<div class="form-group col-md-6">
									<label>Game</label> <select name="gameName"
										class="form-control" id="gameName">
										<option>Select game</option>
										<option value="Bingo Slot">Bingo slot</option>
										<option value="Shield Slot">Shield Slot</option>
										<option value="Fruit Slot">Fruit Slot</option>
										<option value="Horse Race Slot">Horse Race Slot</option>
										<!-- <option value="amazingSlot">Amazing Slot</option> -->
									</select>
									 <label class="frmValidmsg" for="">Please select game</label>
									<!-- <input type="text" class="form-control" id="gameName" name="gameName" placeholder="Enter game"> -->
								</div>
								<div class="form-group col-md-6">
									<label>Price</label> <input type="text" class="form-control"
										readonly id="gamePrice" name="price" placeholder="Price">
								</div>
								<div class="form-group col-md-6">
									<label>Email</label> <input type="text" id="userEmail" class="form-control"
										name="email" placeholder="Enter Your Email">
								</div>
								<div class="form-group col-md-6">
									<label>Phone</label> <input type="text" class="form-control" id="userPhone"
										name="phoneNumber" placeholder="Enter phone">
								</div>
								<div class="form-group col-md-6">
									<label>Currency</label> <input type="text" class="form-control"
										id="userCurrency" name="currency" readonly
										placeholder="Currency">
									<!-- <select name="currency" disabled
										class="form-control" id="currency">
										<option value="NGN" selected>NGN</option>
									</select> -->
								</div>
								<div class="form-group col-md-6">
									<label>Street address</label> <input type="text"
										class="form-control" name="streetAddress"
										placeholder="Enter address">
										<label class="frmValidmsg" for="">Please enter street address</label>
								</div>
								<div class="form-group col-md-6">
									<label>City</label> <input type="text" class="form-control" id="userCity"
										name="city" placeholder="Enter city">
										<label class="frmValidmsg" for="">Please enter city</label>
								</div>
								<div class="form-group col-md-6">
									<label>State code</label> <input type="text"
										class="form-control" name="stateCode"
										placeholder="Enter state code">
										<label class="frmValidmsg" for="">Please enter state code</label>
								</div>
								<div class="form-group col-md-6">
									<label>Country</label> <input type="text" class="form-control"
										id="userCountry" name="country" placeholder="Enter country"
										readonly />
									<!-- <select name="country" class="form-control" id="country">
     <option>Select Country</option>
    <option value="IN">India</option>
    <option value="NG">Nigeria</option>
    <option value="US">United States</option>
    <option value="GB">United Kingdom</option>
    <option value="DE">Germany</option>
    <option value="FR">France</option>
    <option value="IT">Italy</option>
    <option value="ES">Spain</option>
</select> -->

								</div>
								<div class="form-group col-md-6">
									<label>Zip code</label> <input type="text" class="form-control"
										name="zipcode" placeholder="Enter zip code">
										<label class="frmValidmsg" for="">Please enter zip code</label>
								</div>
							</div>
							<div class="row">
								<div class="casino-btn col-sm-12">
									<button type="submit" 
										class=" btn-4 yellow-btn faq-btn">Submit</button>
								</div>
							</div>
						</form>
					</div>

				</div>
			</div>

		</div>
	</section>
	<!-- contact-page End -->

	<!-- Casino Contact start -->
	<section id="contact-us" class="contact-us back-dark contact section">
		<div class="container">
			<div class="row">

				<div class="col-lg-5 ms-auto col-md-6">
					<div class="contact-about">
						<div class="heading">
							<h2>ABOUT PS Gaming</h2>
							<img src="assets/images/heading-border-effect.png"
								class="img-fluid" alt="effect">
						</div>
						<p class="mb30">
							Our massive selection of games include some of the most played
							genres online, the most popular being <b> racing games, slot
								games, action games</b> and many more.
						</p>
					</div>
					<div class="payments socialFtr" style="padding-top: 35px;">
						<div class="heading">
							<h2>Social links</h2>
							<img src="assets/images/heading-border-effect.png"
								class="img-fluid" alt="effect">
						</div>
						<ul>
							<li><a href="#" target="_blank"><i
									class="fa-brands fa-facebook"></i></a></li>
							<li><a href="#" target="_blank"><i
									class="fa-brands fa-instagram"></i></a></li>
							<li><a href="#" target="_blank"><i
									class="fa-brands fa-twitter"></i></a></li>
							<li><a href="#" target="_blank"><i
									class="fa-brands fa-linkedin"></i></a></li>
							<li><a href="#" target="_blank"><i
									class="fa-brands fa-youtube"></i></a></li>
						</ul>
					</div>
				</div>
				<div class="col-lg-5 ml-auto col-md-6">
					<div class="row">
						<div class="col-lg-12">
							<div class="payments">
								<div class="heading">
									<h2>Payment Methods</h2>
									<img src="assets/images/heading-border-effect.png"
										class="img-fluid" alt="effect">
								</div>
								<ul>
									<li><a href="#"><img
											src="assets/images/payment-image-1.jpg" class="img-fluid"
											alt="effect"></a></li>
									<li><a href="#"><img
											src="assets/images/payment-image-2.jpg" class="img-fluid"
											alt="effect"></a></li>
									<li><a href="#"><img
											src="assets/images/payment-image-3.jpg" class="img-fluid"
											alt="effect"></a></li>
									<li><a href="#"><img
											src="assets/images/payment-image-4.jpg" class="img-fluid"
											alt="effect"></a></li>
									<li><a href="#"><img
											src="assets/images/payment-image-5.jpg" class="img-fluid"
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
									<img src="assets/images/heading-border-effect.png"
										class="img-fluid" alt="effect">
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
					<img src="assets/images/border-effect.png" class="img-fluid"
						alt="effect">
				</div>
				<div class="border-effect2">
					<img src="assets/images/border-effect.png" class="img-fluid"
						alt="effect">
				</div>
			</div>
			<div class="row justify-content-center text-center">
				<div class="col-md-12 bot-menu">
					<div class="foot-menu">
						<ul>
							<li><a href="https://playsmartgaming.com/about-us/" class="">About
									Us</a></li>
							<li><a href="https://playsmartgaming.com/refund-policy/">Refund
									Policy</a></li>
							<li><a href="https://playsmartgaming.com/shipping-policy/"
								class="active">Shipping Policy</a></li>
							<li><a href="https://playsmartgaming.com/terms-and-policy/">Terms
									and Policy</a></li>
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
    var userName = '<%=(session.getAttribute("user") != null) ? ((User) session.getAttribute("user")).getFirstName() : ""%>';
    var userEmail = '<%=(session.getAttribute("user") != null) ? ((User) session.getAttribute("user")).getEmail() : ""%>';
    var userPhone = '<%=(session.getAttribute("user") != null) ? ((User) session.getAttribute("user")).getMobileNumber() : ""%>';
    var userCity = '<%=(session.getAttribute("user") != null) ? ((User) session.getAttribute("user")).getCity() : ""%>';
 var gamePrice =   ' <%String gamePrice = (session.getAttribute("gamePrice") != null) ? (String) session.getAttribute("gamePrice") : "";%>' 
<%-- <%
    String gamePriceok = (String) session.getAttribute("gamePrice");
    if (gamePriceok == null) {
    	gamePriceok = "N/A";  // Default value if gamePrice is not found in session
    }
%> --%>
<%-- <p>Game Price: <%= gamePrice %></p> --%>

    var  gameCurrency = $("#userCurrency").val();
    var gamePrice="";
  if (userName !== '') {
      console.log("User is logged in: " + userName);
      $("#userCity").val(userCity);
      $("#userPhone").val(userPhone);
      $("#userEmail").val(userEmail);
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
      $("#userCity").val("");
      $("#userPhone").val("");
      $("#userEmail").val("");
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
  $(document).ready(function () {
	//Function to validate each input field
	  function validateForm() {
	       var isValid = true;
	       // Clear previous validation messages
	       $(".frmValidmsg").hide();
	       // game name validation
	       var gameName = $("select[name='gameName']").val().trim();
	       console.log("gameName :" , gameName);
	       if (gameName === "" || gameName ==="Select game") {
	           isValid = false;
	           $("select[name='gameName']").next(".frmValidmsg").show();
	       }
	       
	       // address validation
           var streetAddress = $("input[name='streetAddress']").val().trim();
           if (streetAddress === "") {
               isValid = false;
               $("input[name='streetAddress']").next(".frmValidmsg").show();
           }
           
           // stateCode validation
           var stateCode = $("input[name='stateCode']").val().trim();
           if (stateCode === "") {
               isValid = false;
               $("input[name='stateCode']").next(".frmValidmsg").show();
           }
           
           // stateCode validation
           var stateCode = $("input[name='stateCode']").val().trim();
           if (stateCode === "") {
               isValid = false;
               $("input[name='stateCode']").next(".frmValidmsg").show();
           }
           // city validation
           var city = $("input[name='city']").val().trim();
           if (city === "") {
               isValid = false;
               $("input[name='city']").next(".frmValidmsg").show();
           }           
           
           // zipcode validation
           var stateCode = $("input[name='zipcode']").val().trim();
           if (stateCode === "") {
               isValid = false;
               $("input[name='zipcode']").next(".frmValidmsg").show();
           }

	       return isValid;
	   }
	   // Validate form on input change
	   $("input").on("input", function() {
	       validateForm();
	   });
      $('#purchaseForm').on('submit', function (event) {
          event.preventDefault(); // Prevent the default form submission
          if (validateForm()) {
              this.submit(); // Submit the form if valid      
          // Collect form data
          var formData = {
              client: {
                  email: $('input[name="email"]').val(),
                  country: $('input[name="country"]').val(),
                  city: $('input[name="city"]').val(),
                  stateCode: $('input[name="stateCode"]').val(),
                  street_address: $('input[name="streetAddress"]').val(),
                  zip_code: $('input[name="zipcode"]').val(),
                  phone: $('input[name="phoneNumber"]').val()
              },
              purchase: {
                  currency: $('input[name="currency"]').val(),
                  products: [
                      {
                          name: $('select[name="gameName"]').val(),
                          price: $('input[name="price"]').val()
                      }
                  ]
              },
              brand_id: "3ca22444-fa50-4749-8cee-9cb257b66f4a",
              // success_redirect: "https://your.success.redirect.com",
              //   success_redirect: "http://localhost/gaming002/success-data.html",
              success_redirect: "https://games.playsmartgaming.com/success-data.jsp",
              // failure_redirect: "https://your.failure.redirect.com",
              // failure_redirect: "http://localhost/gaming002/failure-data.html",
              failure_redirect: "https://games.playsmartgaming.com/failure-data.jsp",
          };
        //  console.log("formData :" , formData)
          // Make AJAX POST request
          $.ajax({
              url: 'https://app.paysecure.net/api/v1/purchases',
              method: 'POST',
              contentType: 'application/json',
              headers: {
                  "Authorization": "Bearer e4b7e915d7635bfff1db187a78a3eadd2af6dae7b8469187911dee90ad4a613b"
              },
              data: JSON.stringify(formData),
              success: function (response) {
                  localStorage.setItem('responseData', JSON.stringify(response));
                   // Handle success by redirecting to checkout_url
                   if (response.checkout_url) {
                     // window.location.href = response.checkout_url;
                       window.open(response.checkout_url, '_blank');
                  }
              },
              error: function (error) {
                  console.log('Error:', error);
                  // Handle error
              }
          });
          }
      });
      
      var allGames = "<%=allGames%>";
							console.log("allGames " + allGames);
							
							var gamesArray = allGames.split(", ");

							// Object to store games with name as key and price as value
							var gamesObject = {};

							// Iterating over the array to extract name and price for each game
							for (var i = 0; i < gamesArray.length; i += 4) {
								var name = gamesArray[i + 1].split(": ")[1]; // Extracting name
								var price = parseFloat(gamesArray[i + 2]
										.split(": ")[1]); // Extracting and parsing price
								gamesObject[name] = price; // Assigning name as key and price as value in object
							}

							console.log("yash",gamesObject);
					
							
							
							document.getElementById('gameName').onchange = function() {

							    var selectedGame = this.value; // Get selected game option value
							    //console.log("selectedGame :" , selectedGame);
							     gamePrice = gamesObject[selectedGame]; // Get price from gamesObject
							     gameCurrency = $("#userCurrency").val();
							    //console.log("game details :" , gamePrice ,  gameCurrency)
							    // Retrieve the base URL from the server-side JSP context
    var baseUrl = '<%=request.getContextPath()%>';
    

    $.ajax({
        url: baseUrl + "/getcurrency?currency=" + gameCurrency + "&amount=" + gamePrice,
        method: 'POST',
        success: function (response) {
            //alert("Success: " + response.data);
            var formattedResponse = parseFloat(response).toFixed(2);  // Converts to float and fixes to 2 decimal places
            $("#gamePrice").val(formattedResponse)
            console.log("response" , formattedResponse)
        },
        error: function (error) {
            console.log('Error:', error);
            // Handle error
        }
    });
							    /* if (gamePrice !== undefined) {
							        document.getElementById('gamePrice').value = gamePrice.toFixed(2); // Update input field with game price
							    } else {
							        document.getElementById('gamePrice').value = ''; // Reset input field if no price found
							    } */
							};
						});
  
  
  document.addEventListener("DOMContentLoaded", function() {
	    fetch('country-by-currency-code.json')
	        .then(response => response.json())
	        .then(countryCurrencyMap => {
	        	//console.log('CountryCurrencyMap:', countryCurrencyMap);
	            if (navigator.geolocation) {
	                navigator.geolocation.getCurrentPosition(function(position) {
	                    var lat = position.coords.latitude;
	                    var lon = position.coords.longitude;
	                    // Fetch the country information using the coordinates
	                    fetch(`https://geolocation-db.com/json/`)
	                        .then(response => response.json())
	                        .then(data => {
	                            var country = data.country_name;
	                           // country = 'Afghanistan';
	                            document.getElementById("userCountry").value = getCountryCode(country,countryCurrencyMap);
	                         // Find the currency code for the detected country
	                            var currencyCode = findCurrencyCode(country,countryCurrencyMap);
	                            console.log("currencyCode : " , currencyCode)
	                            
	                            if (currencyCode) {
	                                document.getElementById("userCurrency").value = currencyCode;
	                            } else {
	                                console.error('Currency not found for country:', country);
	                            }
	                        })
	                        .catch(error => console.error('Error fetching the country information:', error));
	                }, function(error) {
	                    console.error('Error getting the location:', error);
	                });
	            } else {
	                console.error("Geolocation API not supported by this browser.");
	            }
	        })
	        .catch(error => console.error('Error loading country-by-currency-code.json:', error));
	});

//Function to find the currency code from the JSON data
function findCurrencyCode(country,countryCurrencyMap) {
    for (var i = 0; i < countryCurrencyMap.length; i++) {
        if (countryCurrencyMap[i].country === country) {
            return countryCurrencyMap[i].currency_code;
        }
    }
    return null; // Return null if country not found (handle error in your application)
}

function getCountryCode(countryName, countriesList) {
    for (let countryObj of countriesList) {
        if (countryObj.country === countryName) {
            return countryObj.country_code;
        }
    }
    return null; // Return null if country name is not found
}

  
	</script>
</body>

</html>