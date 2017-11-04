<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page isELIgnored="false"%>
<jsp:include page="nav.jsp" />
<!DOCTYPE html>
<html lang="en">
<head>
<title>Shop</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Plunge Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, Sony Ericsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
		function hideURLbar(){ window.scrollTo(0,1); } </script>
<!--css links-->
<link href="resources/css/sbootstrap.css" rel="stylesheet" type="text/css" media="all" /><!--bootstrap-->
<link href="resources/css/sfont-awesome.css" rel="stylesheet"><!--font-awesome-->
<link href="resources/css/shopstyle.css" rel="stylesheet" type="text/css" media="all" /><!--stylesheet-->
<link href="resources/css/slsb.css" rel="stylesheet" type="text/css"><!-- gallery -->
<!--//css links-->
<!--fonts-->
<link href="//fonts.googleapis.com/css?family=Montserrat:300,400,500,600,700" rel="stylesheet">
<link href="//fonts.googleapis.com/css?family=Open+Sans:300,400,600,700" rel="stylesheet">
<!--//fonts-->
</head>
<body>

<!-- Gallery -->
	<div class="inner-paddings-w3ls">
	   <div class="container">	
	   <h3 class="heading-agileinfo">Our Collection <i class="fa fa-anchor" aria-hidden="true"></i></h3>
		<ul class="portfolio_agile_info_w3ls">	
		
		<c:forEach items="${productList}" var="product" varStatus="status">
			<li>
				<div class="agile_events_top_grid">	
					<div class="w3_agileits_evets_text_img">
					<c:url value="/resources/images/${product.productId}.png" var="img"></c:url>
					<c:url value="singleProduct?productId=${product.productId}" var="single"></c:url>
						<a href="${single}" class="lsb-preview" data-lsb-group="header">
							<div class="view view-eighth">
								<img src="${img}" alt=" " class="img-responsive" width="376.2px" height="250.4px"/>
								<div class="mask">
									<i class="fa fa-search-plus" aria-hidden="true"></i>
								</div>
							</div>
						</a>
					</div>
					<div class="agileits_w3layouts_events_text port_info_agile">
						<h3>Name:${product.productName}</h3>
						<h3>Price:$ ${product.price}</h3>
					</div>
				</div>
			</li>
		</c:forEach>
		</ul>
	</div>
</div>
<!-- //Gallery -->


<!-- js -->
<script type='text/javascript' src='resources/js/sjquery-2.2.3.min.js'></script>
<!--//js -->
<!-- gallery-pop-up -->
	<script src="resources/js/slsb.min.js"></script>
	<!-- <script>
	$(window).load(function() {
		  $.fn.lightspeedBox();
		});
	</script> -->
<!-- //gallery-pop-up -->

<!--Scrolling-top -->
<script type="text/javascript" src="resources/js/smove-top.js"></script>
<script type="text/javascript" src="resources/js/seasing.js"></script>
<script type="text/javascript">
	jQuery(document).ready(function($) {
		$(".scroll").click(function(event){		
			event.preventDefault();
			$('html,body').animate({scrollTop:$(this.hash).offset().top},1000);
		});
	});
</script>
<!--//Scrolling-top -->
<!-- smooth scrolling -->
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
	
<script type="text/javascript" src="resources/js/sbootstrap-3.1.1.min.js"></script>
</body>
</html>