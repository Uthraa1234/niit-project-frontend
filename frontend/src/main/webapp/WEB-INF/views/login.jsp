
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page isELIgnored="false"%>
<%-- <%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %> --%>

<jsp:include page="nav.jsp" />
<!DOCTYPE html>
<html >
<head>
  <meta charset="UTF-8">
  <title>PetStore Login</title>
  
  
  
      <link rel="stylesheet" href="resources/css/loginstyle.css">

  
</head>

<body>
  <div class="panda">
  <div class="ear"></div>
  <div class="face">
    <div class="eye-shade"></div>
    <div class="eye-white">
      <div class="eye-ball"></div>
    </div>
    <div class="eye-shade rgt"></div>
    <div class="eye-white rgt">
      <div class="eye-ball"></div>
    </div>
    <div class="nose"></div>
    <div class="mouth"></div>
  </div>
  <div class="body"> </div>
  <div class="foot">
    <div class="finger"></div>
  </div>
  <div class="foot rgt">
    <div class="finger"></div>
  </div>
</div>

<c:url value="/j_spring_security_check" var="action"></c:url>
<form:form action="${action}" method="post" name="login">
  <div class="hand"></div>
  <div class="hand rgt"></div>
  <h1>PetStore Login</h1>
  <div class="form-group">
    <input id="name" name="j_username" required="required" class="form-control"/>
    <label class="form-label">Username</label>
  </div>
  <div class="form-group">
    <input id="password" name="j_password" type="password" required="required" class="form-control"/>
    <label class="form-label">Password</label>
    <p class="alert">Unfilled Credentials..!!</p>
    <button class="btn2">Login </button>
    
   <!--  <c:url value="/signup" var="sign"></c:url> -->
    <button class="btn2" <%-- onclick="${login}" --%>>Register </button>
    <br>
    <a href="#">forgot password?</a>
  </div>
</form:form>
  <script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>

    <script src="resources/js/loginindex.js"></script>

</body>
</html>