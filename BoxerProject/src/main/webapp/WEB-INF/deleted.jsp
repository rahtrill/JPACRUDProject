<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Deleted Boxer Page</title>
</head>
<body>
<%@ include file="bootstrapSetup.jsp" %>
	
	<c:choose>
	<c:when test="${deleted == true}">
	<h2 class="centered green">The boxer has been deleted!</h2>
	</c:when>
	<c:otherwise>
	<h2 class="centered red">There was an error! Please try again.</h2>
	</c:otherwise>
	</c:choose>
	
</body>
</html>