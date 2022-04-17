<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Boxer Result Page</title>
</head>
<body>

	<ul>
		<li><a href="home.do">Home</a></li>
		<li><a href="search.do">Search</a></li>
		<li><a href="add.do">Add</a></li>
		<li><a href="update.do">Update</a></li>
		<li><a href="remove.do">Remove</a></li>
		<li><a href="matchup.do">Match-up</a></li>
	</ul>
	
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