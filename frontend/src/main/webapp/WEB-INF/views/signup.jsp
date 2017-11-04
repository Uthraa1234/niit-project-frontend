
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="spr"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html>
<html >
<head>
  <meta charset="UTF-8">
  <title>PetStore SignUp</title>
      <link rel="stylesheet" href="resources/css/formstyle.css">
</head>
<body> 
  <center><h1 style="padding-top:20px;">Join PetStore Now!</h1></center>
  <div class="logmod">
  <div class="logmod__wrapper">
    
    <div class="logmod__container">
      <ul class="logmod__tabs">
        <li data-tabtar="lgm-3"><a href="#">Let's Start!</a></li>
       </ul>
      <div class="logmod__tab-wrapper">
   <div class="logmod__tab lgm-3">
        <div class="logmod__heading">
          <span class="logmod__heading-subtitle">Enter your personal details</span>
        </div> 
        
        <c:url value="/saveuser" var="action3"></c:url>
        <spr:form name="user" action="${action3}"  modelAttribute="User" method="post">
        <div class="form-group">
           <spr:input path="userName" id="name" required="required" class="form-control"/>
    <label class="form-label">Username</label>
    </div>
     <div class="form-group">
     <spr:input path="email" id="email" type="email" required="required" class="form-control"/>
    <label class="form-label">Email id</label></div>
     <div class="form-group">
    <input id="password" type="password" required="required" class="form-control"/>
    <label class="form-label">Password</label>
    </div>
     <div class="form-group">
     <spr:input path="password" id="cpassword" type="password" required="required" class="form-control"/>
    <label class="form-label">Confirm Password</label></div>
     <div class="form-group">
     <spr:textarea path="address" rows="4" cols="30" id="address"  required="required" class="form-control"/>
    <label class="form-label">Address</label></div>
    <div class="form-group">
     <spr:input path="zipcode" id="zipcode" type="number" required="required" class="form-control"/>
    <label class="form-label">Zipcode</label></div>
     
     <div class="form-group">
    <spr:input path="contact" id="contact" type="number" required="required" class="form-control"/>
   <label class="form-label">Contact no.</label>
   <br>
   
   
    <button class="btn3" id="signupback">Back</button>
    <button type="submit" class="btn3">Done!</button>
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
