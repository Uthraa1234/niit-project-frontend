<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="spr"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html>
<html >
<head>
  <meta charset="UTF-8">
  <title>New Product</title>
      <link rel="stylesheet" href="resources/css/formstyle.css">
</head>
<body> 
  <center><h1 style="padding-top:20px;">Enter details of new Product</h1></center>
  <div class="logmod">
  <div class="logmod__wrapper">
    
    <div class="logmod__container">
      <ul class="logmod__tabs">
        <li data-tabtar="lgm-3"><a href="#">New Product</a></li>
       </ul>
      <div class="logmod__tab-wrapper">
   <div class="logmod__tab lgm-3">
        <div class="logmod__heading">
          <span class="logmod__heading-subtitle">Enter your personal details</span>
        </div> 
        
        <c:url value="/saveproduct" var="action2"></c:url>
       <spr:form action="${action2}" method="post" name="product" modelAttribute="Product" enctype="multipart/form-data" >
       
       <spr:hidden path="productId" />
       
        <div class="form-group">
           <spr:input path="productName" id="prodname" required="required" class="form-control"/>
    <label class="form-label">Name</label>
    </div>
     <div class="form-group">
    <spr:textarea rows="4" path="productDescription" cols="30" id="proddescription"  required="required" class="form-control"/>
   <label class="form-label">Description</label>
 </div>
<div class="form-group">
        <label class="form-label" >Category</label>
           <spr:select path="category" id="prodcategory" >
           <c:forEach items="${categories}" var="c">
            <spr:option value="${c.categoryName }" label="${c.categoryName }" />
            </c:forEach>
           </spr:select>
    </div>
 <div class="form-group">
           <spr:input path="stock" type="number" id="stock" required="required" class="form-control"/>
    <label class="form-label">Stock</label>
    </div>
    
    <div class="form-group">
           <spr:input path="price" type="number" id="price" required="required" class="form-control"/>
    <label class="form-label">Price</label>
    </div>
<div class="form-group">
  <label class="form-label" >Image</label>
 <input type="file" name="image" id="pic" class="form-control" accept="image/*"/>

</div>
<div class="form-group">
  
   <button class="btn3" id="productback" >Back</button>
  <button type="submit" class="btn3"  >Done!</button>
 </div>
   
          </spr:form>
    </div>
  </div>
</div>
</div>
</div>
  <script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>

    <script src="resources/js/formindex.js"></script>


</body>
</html>
