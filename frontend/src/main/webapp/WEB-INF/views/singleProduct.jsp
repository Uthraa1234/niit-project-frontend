<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page isELIgnored="false"%>
<jsp:include page="nav.jsp" />
<!DOCTYPE html>
<html>
<head>
<title>Single Pet</title>
<link href="resources/css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
<link href="resources/css/style.css" rel="stylesheet" type="text/css" media="all" />
<link href='http://fonts.googleapis.com/css?family=Raleway:400,200,600,800,700,500,300,100,900' rel='stylesheet' type='text/css'>
<link href='http://fonts.googleapis.com/css?family=Arimo:400,700,700italic' rel='stylesheet' type='text/css'>
<link rel="stylesheet" type="text/css" href="resources/css/component.css" />
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="New Fashions Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" 
		/>
<script src="resources/js/jquery.min.js"></script>
<script src="resources/js/simpleCart.min.js"> </script>
<!-- start menu -->
<link href="resources/css/megamenu.css" rel="stylesheet" type="text/css" media="all" />
<script type="text/javascript" src="resources/js/megamenu.js"></script>
<script>$(document).ready(function(){$(".megamenu").megamenu();});</script>
<!-- start menu -->
</head>
<body>

<!--Single Page starts Here-->
<div class="product-main">
	 <div class="container">
		 <ol class="breadcrumb">
		 <c:url value="/home" var="url1"></c:url>
		  <li><a href="${url1}">Home</a></li>
		  <li class="active">Single</li>
		 </ol>
		 <div class="ctnt-bar cntnt">
			 <div class="content-bar">
				 <div class="single-page">					 
					 <!--Include the Etalage files-->
						<link rel="stylesheet" href="resources/css/etalage.css">
						<script src="resources/js/jquery.etalage.min.js"></script>
					 <!-- Include the Etalage files -->
					 <script>
							jQuery(document).ready(function($){
					
								$('#etalage').etalage({
									thumb_image_width: 300,
									thumb_image_height: 400,
									source_image_width: 700,
									source_image_height: 800,
									show_hint: true,
									click_callback: function(image_anchor, instance_id){
										alert('Callback example:\nYou clicked on an image with the anchor: "'+image_anchor+'"\n(in Etalage instance: "'+instance_id+'")');
									}
								});
								// This is for the dropdown list example:
								$('.dropdownlist').change(function(){
									etalage_show( $(this).find('option:selected').attr('class') );
								});
					
							});
						</script>
						<!--//details-product-slider-->
					 <div class="details-left-slider">
						  <ul id="etalage">
							 <li>
								<a href="optionallink.html">
								<img class="etalage_thumb_image" src="resources/images/${product.productId}.png" alt="${product.productId}"/>
								<img class="etalage_source_image" src="resources/images/${product.productId}.png" alt="${product.productId}"/>
								</a>
							 </li>
							 
							 <div class="clearfix"></div>
						 </ul>
					 </div>
					 <div class="details-left-info">
							<h3>${product.productName}</h3>
								
								<p>$ ${product.price}</p>
							<%-- <div class="btn_form">
							<c:url value="/cart/productId=${product.productId} " var="cart"></c:url>
								<a href="${cart}">Add to cart</a>
							</div> --%>
							<c:if test="${product.stock!=0 }">
	<c:url value="/cart/${product.productId}" var="shop"></c:url>
		<form action="${shop}">
			<!-- Enter Units<input type="text" name="units"><br> -->
			
			<input type="text" name="units" value="1" style="width: 36px; text-align: center;" hidden />
			
			<button type="submit"  class="btn_form" >
			Add To Cart</button>
			</form>
</c:if>
<c:if test="${product.stock == 0 }">
<h3>Out of Stock!</h3>
</c:if>
							<div class="flower-type">
							<p>Pet::${product.productName}</p>
							<p>Category:: ${product.category} </p>
							</div>
							<h5>Description  ::</h5>
							<p class="desc">${product.productDescription}</p>
					 </div>
					 <div class="clearfix"></div>				 	
				 </div>
			 </div>
		 </div>		 
		 <div class="clearfix"></div>
			
	 </div>
</div>
<!--fotter-->
<div class="fotter-logo">
	 <div class="container">
	 <div class="clearfix"></div>
	 </div>
</div>
<!--fotter//-->

</body>
</html>