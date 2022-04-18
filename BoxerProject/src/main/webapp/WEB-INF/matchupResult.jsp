<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Boxer Match-Up Result Page</title>
</head>
<body>

<%@ include file="bootstrapSetup.jsp" %>
	
	<c:choose>
	<c:when test="${! player1.equals(player2)}">
	<h1>${player1.fullName} has a ${p1percent}% chance of winning!</h1>
	<h1>${player2.fullName} has a ${p2percent}% chance of winning!</h1>
	</c:when>
	<c:otherwise>
	<h1>You cannot compare a boxer to themself!</h1>
	</c:otherwise>
	</c:choose>
	
</body>
</html>