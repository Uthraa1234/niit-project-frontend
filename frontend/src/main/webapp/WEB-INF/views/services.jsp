<jsp:include page="nav.jsp" />
<!DOCTYPE html>
<html lang="en">
<head>
<title></title>
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
	<!-- banner -->
		<!-- /classes-->
	<div class="services" id="classes">
		<div class="container">

		 <h3 class="title-w3">Our Services</h3>
		 <p class="sub-text">Choose Your Fave</p>
		     <div class="wthree-agile-classes-section">
	               	<div class="col-md-3 class-grid" id="col1">
						<div class="class-grid-img hvr-sweep-to-top">
					       <img src="resources/images/contact2.jpg" alt=""/>
						    <div class="caption">
							    <h5>Trust your pets with us for everyday daycare anytime of the day.
							    Contact:9597700371</h5>
							</div>
						</div>
					
						<h4>Pet Daycare</h4>
					
				    </div>
				<div class="col-md-3 class-grid">
						<div class="class-grid-img hvr-sweep-to-top">
					       <img src="resources/images/pet4.jpg" alt=""/>
						    <div class="caption">
							    <h5>All types of stylish and latest grooming for your pets.
							    Contact:7010593030</h5>
							</div>
						</div>
					
						<h4>Pet Grooming</h4>
					
				    </div>
				<div class="col-md-3 class-grid">
						<div class="class-grid-img hvr-sweep-to-top">
					       <img src="resources/images/pet5.jpg" alt=""/>
						    <div class="caption">
							    <h5>We help you on your busy schdule to take care of your pets.
							    Contact:9360321706</h5>
							</div>
						</div>
					
						<h4>Dog Walking</h4>
					
				    </div>
				<div class="col-md-3 class-grid lost">
						<div class="class-grid-img hvr-sweep-to-top">
					       <img src="resources/images/pet3.jpg" alt="" />
						    <div class="caption">
							    <h5>Reliable veterinary service provided for all kinds of pets.
							    Contact:9597700371</h5>
							</div>
						</div>
					
						<h4>Veterinary Help</h4>
					
				    </div>
				<div class="clearfix"> </div>
	         </div>

		 </div>	
   </div>
   <!-- //classes-->
   


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

