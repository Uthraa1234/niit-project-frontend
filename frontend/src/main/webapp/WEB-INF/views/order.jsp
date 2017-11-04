<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page isELIgnored="false"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<jsp:useBean id="now" class="java.util.Date" />

<!DOCTYPE html>
<html>
<head>
<title>Order</title>
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
			 
		 
			
		 <div class="col-md-9 cart-items">
			 <h2>You Have Purchased(${count})</h2>
				<script>$(document).ready(function(c) {
					$('.close1').on('click', function(c){
						$('.cart-header').fadeOut('slow', function(c){
							$('.cart-header').remove();
						});
						});	  
					});
			   </script>
			   <c:forEach items="${orders.cartitems}" var="order" >
			 <div class="cart-header">
				 
				 <div class="cart-sec">
						<div class="cart-item cyc">
							 <img src="resources/images/${order.products.productId}.png"/>
						</div>
					   <div class="cart-item-info">
							 <h3>${order.products.productName}<span>Category: ${order.products.category}</span></h3>
							 <h4><span>Rs. $ </span>${order.total}</h4>
							 <p class="qty">Qty ::</p>
							 <label class="form-control input-small">${order.quantity}</label>
					   </div>
					   <div class="clearfix"></div>
												
				  </div>
			 </div>
			   </c:forEach>
			 <script>$(document).ready(function(c) {
					$('.close2').on('click', function(c){
							$('.cart-header2').fadeOut('slow', function(c){
						$('.cart-header2').remove();
					});
					});	  
					});
			 </script>	
		 </div>
		 
		 <div class="col-md-3 cart-total">
			 <a class="continue" href="#
			 ">Back to payment</a>
			 <div class="price-details">
			                     <p>Shipping Date:<fmt:formatDate type="date" value="${now}" /></p><br>
                               	 <p>Delivery Date: ${delivery }</p>
			 
				 <h4>Contact no: ${orders.shipping.contact}</h4><br>
				 <h3>Address</h3>
				 <span>${orders.shipping.shippingAddress}</span>
				 <span>${orders.shipping.zipcode}</span>
				 <div class="clearfix"></div>				 
			 </div>	
			 <h4 class="last-price">YOUR TOTAL</h4>
			 <span class="total final">${total}</span>
			 <div class="clearfix"></div>
			  <c:url value="/thankyou" var="thankyou"></c:url>
			 <a class="order" href="${thankyou}">That's Right!</a>
			 
	 </div>
</div>
</div>
<!--fotter-->
<!-- <div class="fotter-logo">
	 
	 <div class="ftr-logo"></div>
	 <div class="ftr-info">
	</div>
	 <div class="clearfix"></div>
	 
</div> -->
<!--fotter//-->

</body>
</html>

