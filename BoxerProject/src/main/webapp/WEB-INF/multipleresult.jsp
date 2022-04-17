<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Boxer Multiple Search Results</title>
</head>
<body>

<%@ include file="bootstrapSetup.jsp" %>

<nav class="navbar navbar-dark bg-dark">
	<span class="navbar-brand mb-0 h1">Search Results</span>
  <a class="navbar-brand" href="home.do">Home</a>
  <a class="navbar-brand" href="search.do">Search</a>
  <a class="navbar-brand" href="add.do">Add</a>
  <a class="navbar-brand" href="update.do">Update</a>
  <a class="navbar-brand" href="remove.do">Remove</a>
  <a class="navbar-brand" href="matchup.do">Match-Up</a>
</nav>

	<h1>Results for ${search}</h1>

	<table>
		<thead>
			<tr>
				<td>View</td>
				<td>ID</td>
				<td>Name</td>
				<td>Height</td>
				<td>Reach</td>
				<td>Knockouts</td>
				<td>Total fights</td>
				<td>Weight classes</td>
			</tr>
		</thead>
		<c:forEach var="b" items="${boxer}">
			<tr>
				<td><form action="result.do"><button style="button" name="id" value="${b.id}">View</button></form></td>
				<td>${b.id}</td>
				<td>${b.fullName}</td>
				<td>${b.height}</td>
				<td>${b.reach}</td>
				<td>${b.knockouts}</td>
				<td>${b.totalFights}</td>
				<td>${b.weightClass}</td>
			</tr>
		</c:forEach>
	</table>

</body>
</html>