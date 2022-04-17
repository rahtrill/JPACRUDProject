<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Search Boxer Id Page</title>
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

	<h1>Results for TBD</h1>

	<c:forEach var="b" items="${boxer}">
		<ul>
			<li>ID: ${b.id}</li>
			<li>Name: ${b.fullName}</li>
			<li>Height: ${b.height}</li>
			<li>Reach: ${b.reach}</li>
			<li>Knockouts: ${b.knockouts}</li>
			<li>Total fights: ${b.totalFights}</li>
			<li>Weight classes: ${b.weightClass}</li>
		</ul>
	</c:forEach>



</body>
</html>