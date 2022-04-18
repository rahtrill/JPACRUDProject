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

	<%@ include file="bootstrapSetup.jsp"%>
	
	<div class="centered">
		<div class="card">
			<h5 class="card-header">Boxer</h5>
			<div class="card-body">
				<h5 class="card-title">${boxer.fullName}(${boxer.id})</h5>
				<ul>
					<li>Height: ${boxer.height}</li>
					<li>Reach: ${boxer.reach}</li>
					<li>Knockouts: ${boxer.knockouts}</li>
					<li>Total fights: ${boxer.totalFights}</li>
					<li>Weight classes: ${boxer.weightClass}</li>
				</ul>
				<form action="updateForm.do" method="get">
					<button class="btn btn-primary" type="submit" name="id"
						value="${boxer.id}">Update Boxer</button>
				</form>
				<br>
				<form action="deleteBoxer.do" method="post">
					<button class="btn btn-danger" type="submit" name="id"
						value="${boxer.id}">Delete Boxer  </button>
				</form>
			</div>
		</div>
	</div>

</body>
</html>