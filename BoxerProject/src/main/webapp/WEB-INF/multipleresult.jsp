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

	<h1>Results for ${search}</h1>

	<table class="table table-striped">
		<thead>
			<tr>
				<th scope="col">View</th>
				<th scope="col">ID</th>
				<th scope="col">Name</th>
				<th scope="col">Height</th>
				<th scope="col">Reach</th>
				<th scope="col">Knockouts</th>
				<th scope="col">Total Fights</th>
				<th scope="col">Weight Classes</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach var="b" items="${boxer}">
				<tr>
					<td scope="row"><form action="result.do" method="post">
							<button class="btn btn-primary style="button" name="id" value="${b.id}">View</button>
						</form></td>
					<td>${b.id}</td>
					<td>${b.fullName}</td>
					<td>${b.height}</td>
					<td>${b.reach}</td>
					<td>${b.knockouts}</td>
					<td>${b.totalFights}</td>
					<td>${b.weightClass}</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
	

</body>
</html>