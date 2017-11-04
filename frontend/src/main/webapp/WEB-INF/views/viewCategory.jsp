<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page isELIgnored="false"%>
<jsp:include page="nav.jsp" />
<!DOCTYPE html>
<html lang="en">
<head>
<title>PetStore</title>
<link href="resources/css/view.css" type="text/css" rel="stylesheet" media="all"> 
</head>
<body>
<h2><center>Category</center></h2>
<c:url value="/getcategoryform" var="categoryForm"></c:url>
<div class="new"><h3 ><a href="${categoryForm}">ADD NEW CATEGORY?</a></h3></div>
<table>
    <thead>
        <tr>
            <th>CategoryId</th>
            <th>CategoryName</th>
            <th>Description</th>
            <th>Edit</th>
            <th>Delete</th>
            
        </tr>
    </thead>
    <tbody>
        <c:forEach items="${categoryList}" var="category" varStatus="status">
		<tr>
			<%-- <td>${status.count}</td> --%>
			<td>${category.categoryId}</td>
			<td>${category.categoryName}</td>
			<td>${category.description}</td>
			
			<td><a href="/editCategory?categoryId=${category.categoryId}"><img src="resources/images/edit.png" height="18px" width="18px"></img></a></td>
			<td><a href="/deleteCategory?categoryId=${category.categoryId}" onclick="return confirm('Are You Sure? Do you Want Delete Category : ${category.categoryName} ?')"><img src="resources/images/trash.png" height="18px" width="18px"></img></a></td>
		</tr>
	</c:forEach>
    </tbody>
</table>
</body>
</html>