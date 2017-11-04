<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page isELIgnored="false"%>
<jsp:include page="nav.jsp" />
<!DOCTYPE html>
<html>
<head>
<title>Petstore Cart</title>
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

<div class="cart">
	 <div class="container">
			 <ol class="breadcrumb">
			 
			 <c:url value="/home" var="url1"></c:url>
		  <li><a href="${url1}">Home</a></li>
		  <li class="active">Cart</li>
		 </ol>
		
			
		 <div class="col-md-9 cart-items">
			 <h2>My Shopping Bag( ${count} )</h2>
				<!-- <script>$(document).ready(function(c) {
					$('.close1').on('click', function(c){
						$('.cart-header').fadeOut('slow', function(c){
							$('.cart-header').remove();
						});
						});	  
					});
			   </script> -->
			    <c:forEach items="${i}" var="cart" >
			 <div class="cart-header">
				 <div class="close1">
				 <c:url value="/cart/removecartitem/${cart.cartId}" var="remove"></c:url>
				 <a href="${remove}"><img src="resources/images/close.png"></a>
				  </div>
				 <div class="cart-sec">
				
		
						<div class="cart-item cyc">
							 <img src="resources/images/${cart.products.productId}.png"  />
						</div>
					   <div class="cart-item-info">
							 <h3>${cart.products.productName}<span>Category: ${cart.products.category}</span></h3>
							 <h4><span>Rs. $ </span>${cart.total}</h4>
							 <p class="qty">Qty ::<c:url value="/cart/minus/${cart.products.productId}" var="minus"></c:url>
							<a href="${minus}"><span
								class="glyphicon glyphicon-minus-sign"> </span></a> <input
							type="text" value="${cart.quantity}"
							style="width: 36px; text-align: center;"> <c:url
								value="/cart/plus/${cart.products.productId}" var="plus"></c:url> <a
							href="${plus}"><span class="glyphicon glyphicon-plus-sign"></span></a></p>
							<!--  <input min="1" type="number" id="quantity" name="quantity" value="1" class="form-control input-small"> -->
					   </div>
					   <div class="clearfix"></div>
						<div class="delivery">
							 <p>Service Charges:: Rs.00.00</p>
							 <span>Delivered in 2-3 bussiness days</span>
							 <div class="clearfix"></div>
				        </div>						
				  </div>
			 </div>
			  </c:forEach>
		
			<!--  <script>$(document).ready(function(c) {
					$('.close2').on('click', function(c){
							$('.cart-header2').fadeOut('slow', function(c){
						$('.cart-header2').remove();
					});
					});	  
					});
			 </script> -->
			 	
		 </div>
		 <div class="col-md-3 cart-total">
		 <c:url value="/shop" var="shop"></c:url>
			 <a class="continue" href="${shop}">Continue to Shop</a>
			 <div class="price-details">
				 <h3>Price Details</h3>
				 <span>Total</span>
				 <span class="total">${total}</span>
				 <span>Discount</span>
				 <span class="total">---</span>
				 <span>Delivery Charges</span>
				 <span class="total">00.00</span>
				 <div class="clearfix"></div>				 
			 </div>	
			 <h4 class="last-price">TOTAL</h4>
			 <span class="total final">${total}</span>
			 <div class="clearfix"></div>
			  <c:url value="/shipping" var="shipping"></c:url>
			 <a class="order" href="${shipping}">Place Order</a>
			 			</div>
			 			
	 </div>
</div>
<!--fotter-->
<div class="fotter-logo">
	 <div class="container">
	 <div class="ftr-logo"></div>
	 <div class="ftr-info">
	
	</div>
	 <div class="clearfix"></div>
	 </div>
</div>
<!--fotter//-->

</body>
</html>

