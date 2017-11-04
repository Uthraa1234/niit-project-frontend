<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page isELIgnored="false"%>
<jsp:include page="nav.jsp" />
<!DOCTYPE html>
<html lang="en">
<head>
<title>Shipping Address</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Dance whirl Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
	SmartPhone Compatible web template, free WebDesigns for Nokia, Samsung, LG, Sony Ericsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- Custom Theme files -->
<link href="resources/css/bootstrap2.css" type="text/css" rel="stylesheet" media="all">
<link href="resources/css/popup-box.css" rel="stylesheet" type="text/css" media="all" />
<link href="resources/css/style2.css" type="text/css" rel="stylesheet" media="all"> 
<link rel="stylesheet" href="resources/css/main-gallery.css" type="text/css" media="screen" />  <!-- flexslider-CSS --> 
<link href="resources/css/font-awesome.css" rel="stylesheet">		<!-- font-awesome icons -->
<!-- //Custom Theme files --> 
<!-- web-fonts -->  
<link href="//fonts.googleapis.com/css?family=Arapey:400,400i" rel="stylesheet">
<link href="//fonts.googleapis.com/css?family=Source+Sans+Pro:300i,400,400i,600,600i,700" rel="stylesheet">
<!-- //web-fonts -->
</head>
<body id="page-top" data-spy="scroll" data-target=".navbar-fixed-top">  
	

											
		
   <div class="main" id="plans">
		<div id="particles-js"></div>

		  
		<div class="priceing-table-main">
		       <h3 class="title-w3 three">Your Addresses </h3>
		       <p class="sub-text">Choose the address you want to deliver to </p>
			   <div class="priceing-table-grids">
			   <c:forEach items="${shipping}" var="shipping" varStatus="status">
				 <div class="col-md-3 price-grid">
				 
				 
					<div class="price-block agile">
						<div class="price-gd-top pric-clr1">
							<h4>${shipping.contact}</h4>
							<h3><span>${shipping.shippingAddress}</span></h3>
							<h5>${shipping.zipcode}</h5>
						</div>
						<div class="price-gd-bottom">
							   <div class="price-list">
								
									 <h6 class="bed"><i class="fa fa-street-view" aria-hidden="true"></i></h6>
							</div>
							<div class="price-selet pric-sclr1">	
							<c:url value="/payment?id=${shipping.shippingAddressId}" var="action"></c:url>	    			   
                    <a  href="${action}">Deliver!</a>
							</div>
						</div>
					</div>
				</div>
					</c:forEach>
				
				<div class="col-md-3 price-grid">
					<div class="price-block agile">
						<div class="price-gd-top pric-clr2">
							<h4>Contact</h4>
							<h3><span>Address</span></h3>
							<h5>zipcode</h5>
						</div>
						<div class="price-gd-bottom">
							<div class="price-list">
								
									
								<h6 class="bed two"><i class="fa fa-street-view" aria-hidden="true"></i></h6>
								
							</div>
							<div class="price-selet pric-sclr2">
								<a class="book popup-with-zoom-anim button-isi zoomIn animated" data-wow-delay=".5s" href="#small-dialog">Got new Address?</a>

							</div>
						</div>
					</div>
				</div>
				
				<div class="clearfix"> </div>
			</div>
		
		</div>	
	</div>	
	<!--//prices -->
				<!-- Modal2-->
								<div class="pop-up"> 
			<div id="small-dialog" class="mfp-hide book-form">
				<h4>New Address </h4>
				 <c:url value="/addShipping" var="action"></c:url>
				<form:form action="${action}" method="post" modelAttribute="shippingaddress">
					<form:input path="contact" type="text" name="Name" placeholder="Name" required=""/>
					<form:input path="shippingAddress" type="text" name="address" class="email" placeholder="Address" required=""/>
					<form:input path="zipcode" type="text" name="zipcode" class="password" placeholder="zipcode" required=""/>	
										<input type="submit" value="Yes! Add">
				</form:form>
			</div>
		</div>
						<!-- //Modal2 -->									
<div class="fillup">
</div>
<!-- footer -->
			<div class="copy-right">

			</div>
			
<!-- //footer -->
<a href="#" id="toTop" style="display: block;"> <span id="toTopHover" style="opacity: 1;"> </span></a>

<script src="resources/js/jquery-2.2.3.min.js"></script> 
			<script src="resources/js/particles.js"></script>
			<script src="resources/js/app.js"></script>
	
<!-- skills -->

						<script src="resources/js/responsiveslides.min.js"></script>
			<script>
						// You can also use "$(window).load(function() {"
						$(function () {
						  // Slideshow 4
						  $("#slider4").responsiveSlides({
							auto: true,
							pager:true,
							nav:false,
							speed: 500,
							namespace: "callbacks",
							before: function () {
							  $('.events').append("<li>before event fired.</li>");
							},
							after: function () {
							  $('.events').append("<li>after event fired.</li>");
							}
						  });
					
						});
			</script>
			<script>
								// You can also use "$(window).load(function() {"
								$(function () {
								  // Slideshow 4
								  $("#slider3").responsiveSlides({
									auto: true,
									pager:false,
									nav:true,
									speed: 500,
									namespace: "callbacks",
									before: function () {
									  $('.events').append("<li>before event fired.</li>");
									},
									after: function () {
									  $('.events').append("<li>after event fired.</li>");
									}
								  });
							
								});
							 </script>

 <!-- js -->
	<script src="resources/js/main.js"></script>
<!-- search-jQuery -->
<!-- pop-up-box -->
			<script src="resources/js/jquery.magnific-popup.js" type="text/javascript"></script>
			<!--//pop-up-box -->
			<script>
				$(document).ready(function() {
					$('.popup-with-zoom-anim').magnificPopup({
						type: 'inline',
						fixedContentPos: false,
						fixedBgPos: true,
						overflowY: 'auto',
						closeBtnInside: true,
						preloader: false,
						midClick: true,
						removalDelay: 300,
						mainClass: 'my-mfp-zoom-in'
					});														
				});
			</script>

		<!-- Map-JavaScript -->
			<script type="text/javascript" src="https://maps.googleapis.com/maps/api/js"></script>        
			<script type="text/javascript">
				google.maps.event.addDomListener(window, 'load', init);
				function init() {
					var mapOptions = {
						zoom: 11,
						center: new google.maps.LatLng(40.6700, -73.9400),
						styles: [{"featureType":"all","elementType":"labels.text.fill","stylers":[{"saturation":36},{"color":"#000000"},{"lightness":40}]},{"featureType":"all","elementType":"labels.text.stroke","stylers":[{"visibility":"on"},{"color":"#000000"},{"lightness":16}]},{"featureType":"all","elementType":"labels.icon","stylers":[{"visibility":"off"}]},{"featureType":"administrative","elementType":"geometry.fill","stylers":[{"color":"#000000"},{"lightness":20}]},{"featureType":"administrative","elementType":"geometry.stroke","stylers":[{"color":"#000000"},{"lightness":17},{"weight":1.2}]},{"featureType":"landscape","elementType":"geometry","stylers":[{"color":"#000000"},{"lightness":20}]},{"featureType":"poi","elementType":"geometry","stylers":[{"color":"#000000"},{"lightness":21}]},{"featureType":"road.highway","elementType":"geometry.fill","stylers":[{"color":"#000000"},{"lightness":17}]},{"featureType":"road.highway","elementType":"geometry.stroke","stylers":[{"color":"#000000"},{"lightness":29},{"weight":0.2}]},{"featureType":"road.arterial","elementType":"geometry","stylers":[{"color":"#000000"},{"lightness":18}]},{"featureType":"road.local","elementType":"geometry","stylers":[{"color":"#000000"},{"lightness":16}]},{"featureType":"transit","elementType":"geometry","stylers":[{"color":"#000000"},{"lightness":19}]},{"featureType":"water","elementType":"geometry","stylers":[{"color":"#000000"},{"lightness":17}]}]
					};
					var mapElement = document.getElementById('map');
					var map = new google.maps.Map(mapElement, mapOptions);
					var marker = new google.maps.Marker({
						position: new google.maps.LatLng(40.6700, -73.9400),
						map: map,
					});
				}
			</script>
	<!-- //Map-JavaScript -->

	
<!-- start-smoth-scrolling -->
<script type="text/javascript" src="resources/js/move-top.js"></script>
<script type="text/javascript" src="resources/js/easing.js"></script>
<script type="text/javascript">
	jQuery(document).ready(function($) {
		$(".scroll").click(function(event){		

			event.preventDefault();
			$('html,body').animate({scrollTop:$(this.hash).offset().top},1000);
		});
	});
</script>
<!-- start-smoth-scrolling -->


<!-- here stars scrolling icon -->
	<script type="text/javascript">
		$(document).ready(function() {
			/*
				var defaults = {
				containerID: 'toTop', // fading element id
				containerHoverID: 'toTopHover', // fading element hover id
				scrollSpeed: 1200,
				easingType: 'linear' 
				};
			*/
								
			$().UItoTop({ easingType: 'easeOutQuart' });
								
			});
	</script>
<!-- //here ends scrolling icon -->
	<script src="resources/js/bootstrap.js"></script>
<!-- //for bootstrap working -->
</body>
</html>