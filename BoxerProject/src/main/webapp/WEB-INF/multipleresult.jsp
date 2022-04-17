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