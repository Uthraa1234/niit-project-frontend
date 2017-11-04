<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page isELIgnored="false"%>
 <%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html>
<html>
<head>
<title>PetStore</title>

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
<!--header-->
<div class="header">
	 <div class="container">
	     <div class="main-header">
			  <div class="carting">
			  <c:if test="${pageContext.request.userPrincipal.name==null }">
			  <c:url value="/login" var="login"></c:url>
				 <ul><li><a href="${login}"> LOGIN</a></li></ul>
				 </c:if>
				 <c:if test="${pageContext.request.userPrincipal.name!=null }">
				 	<ul><li><a href="#">Hi ${pageContext.request.userPrincipal.name}!!</a></li></ul>
				 </c:if>
				 </div>
			 <div class="logo">
				 <h3><a href="#">Pet Store</a></h3>
			  </div>
			   <security:authorize access="hasRole('ROLE_USER')">			  
			 <div class="box_1">			
			 <c:url value="/mycart" var="mycart"></c:url>	 
				 <a href="${mycart}"><h3>Cart(${count})<img src="resources/images/cart.png" alt=""/></h3></a>
				 <c:url value="/cart/removecart" var="emptycart"></c:url>	 
			
				 <p><a href="${emptycart}" class="simpleCart_empty">empty cart</a></p>
			 
			 </div>
			 </security:authorize>
			 <div class="clearfix"></div>
		 </div>
				
				<!-- start header menu -->
		<ul class="megamenu skyblue">
		
		<c:url value="/home" var="url1"></c:url>
			<li class="active grid"><a class="color1" href="${url1}">HOME</a></li>
			<c:url value="/shop" var="shop"></c:url>
			<li class="grid"><a href="${shop}">SHOP</a>
				<!-- <div class="megapanel">
					<div class="row">
						
						<div class="col1">
							<div class="h_nav">
								<h4>Pets</h4>
								<ul>
									<li><a href="products.html">Dogs</a></li>
									<li><a href="products.html">Cats</a></li>
									<li><a href="products.html">Birds</a></li>
								</ul>	
							</div>							
						</div>
						<div class="col2">
							<div class="h_nav">
								<h4>Accessories</h4>
								<ul>
									<li><a href="products.html">Food</a></li>
									<li><a href="products.html">Toys</a></li>
									<li><a href="products.html">Merchandise</a></li>
								</ul>	
							</div>												
						</div>					
					</div>
					
    				</div>
 -->				</li>
				<c:url value="/services" var="url2"></c:url>
				<li id="service"><a href="${url2}">SERVICES</a><div class="megapanel">
					<!-- <div class="row">
						<div class="col3">
							<div class="h_nav">
							</div>
						</div>
						<div class="col4">
							<div class="h_nav">
								<h4>Category</h4>
								<ul>
									<li><a href="men.html">Spa</a></li>
									<li><a href="men.html">Shelter</a></li>
									<div class="col5">
							<div class="h_nav">
							</div>
						</div>
								</ul>	
							</div>							
						</div>
						
					</div>
 -->					
    				</div>
				</li>
				
				<c:url value="/about" var="url3"></c:url>
			 <li class="grid"><a href="${url3}">ABOUT</a></li>
			 <c:url value="/contact" var="url4"></c:url>		
			 <li class="grid"><a href="${url4}">CONTACT</a></li>	
			 <security:authorize access="hasRole('ROLE_ADMIN')">
			 <c:url value="/viewCategory" var="category"></c:url>		
			 <li class="grid"><a href="${category}">CATEGORY</a></li>
			 
			 	 <c:url value="/viewProduct" var="productForm"></c:url>		
			 <li class="grid"><a href="${productForm}">PRODUCT</a></li>	
			 </security:authorize>
				<c:if test="${pageContext.request.userPrincipal.name!=null }">
				<c:url value="/j_spring_security_logout" var="logout"></c:url>
				<li><a href="${logout}">LOGOUT</a>
				</li>			
				</c:if>
				</ul> 			 
			  <div class="clearfix"></div>			   	
	 </div>
		
</div>
<!--header-->
</body>
</html>