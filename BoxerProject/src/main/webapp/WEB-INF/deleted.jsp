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

	<ul>
		<li><a href="home.do">Home</a></li>
		<li><a href="search.do">Search</a></li>
		<li><a href="add.do">Add</a></li>
		<li><a href="update.do">Update</a></li>
		<li><a href="remove.do">Remove</a></li>
		<li><a href="matchup.do">Match-up</a></li>
	</ul>
	
	<c:choose>
	<c:when test="${deleted == true}">
	<h2>The boxer has been deleted!</h2>
	</c:when>
	<c:otherwise>
	<h2>There was an error! Please try again.</h2>
	</c:otherwise>
	</c:choose>
	
</body>
</html>