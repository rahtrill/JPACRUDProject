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

<nav class="navbar navbar-dark bg-dark">
	<span class="navbar-brand mb-0 h1">Delete Boxer</span>
  <a class="navbar-brand" href="home.do">Home</a>
  <a class="navbar-brand" href="search.do">Search</a>
  <a class="navbar-brand" href="add.do">Add</a>
  <a class="navbar-brand" href="update.do">Update</a>
  <a class="navbar-brand" href="remove.do">Remove</a>
  <a class="navbar-brand" href="matchup.do">Match-Up</a>
</nav>
	
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