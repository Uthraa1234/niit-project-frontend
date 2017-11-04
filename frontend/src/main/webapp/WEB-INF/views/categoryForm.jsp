
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="spr"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page isELIgnored="false"%>

<!DOCTYPE html>
<html >
<head>
  <meta charset="UTF-8">
  <title>New Category</title>
  
      <link rel="stylesheet" href="resources/css/formstyle.css">
</head>
<body> 
  <center><h1 style="padding-top:20px;">Enter details of new Category</h1></center>
  <div class="logmod">
  <div class="logmod__wrapper">
    
    <div class="logmod__container2">
      <ul class="logmod__tabs">
        <li data-tabtar="lgm-3"><a href="#">New Category</a></li>
       </ul>
      <div class="logmod__tab-wrapper">
   <div class="logmod__tab lgm-3">
        <div class="logmod__heading">
          <span class="logmod__heading-subtitle">Enter your personal details</span>
        </div> 
        
        <c:url value="/savecategory" var="action"></c:url>
        <spr:form action="${action}" method="post" name="category" modelAttribute="Category" >

<spr:hidden path="categoryId" />
        <div class="form-group">
           <spr:input id="catname" path="categoryName" required="required" class="form-control"/>
    <label class="form-label">Name</label>
    </div>
    
     
     <div class="form-group">
    <spr:textarea rows="4" cols="30" id="description" path="description" required="required" class="form-control"/>
   <label class="form-label">Description</label>
 </div>
<div class="form-group">
  <!-- <button type="reset" class="btn3">Reset</button> -->
  <button class="btn3" id="categoryback">Back</button>
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
