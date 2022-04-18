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
	<div>
		<div class="card">
			<h5 class="card-header">Boxer 1</h5>
			<div class="card-body">
				<h5 class="card-title">${player1.fullName} (${player1.id})</h5>
				<ul>
					<li>Height: ${player1.height}</li>
					<li>Reach: ${player1.reach}</li>
					<li>Knockouts: ${player1.knockouts}</li>
					<li>Total fights: ${player1.totalFights}</li>
					<li>Weight classes: ${player1.weightClass}</li>
				</ul>
					<h3>${player1.fullName} has a ${p1percent}% chance of winning!</h3>
			</div>
		</div>
	</div>
		<div>
			<div class="card">
				<h5 class="card-header">Boxer 2</h5>
				<div class="card-body">
					<h5 class="card-title">${player2.fullName}(${player2.id})</h5>
					<ul>
						<li>Height: ${player2.height}</li>
						<li>Reach: ${player2.reach}</li>
						<li>Knockouts: ${player2.knockouts}</li>
						<li>Total fights: ${player2.totalFights}</li>
						<li>Weight classes: ${player2.weightClass}</li>
					</ul>
				<h3>${player2.fullName} has a ${p2percent}% chance of winning!</h3>
			</div>
		</div>
	</div>
	</c:when>
	<c:otherwise>
	<h1 class="centered red">You cannot compare a boxer to themselves!</h1>
	</c:otherwise>
	</c:choose>
	
</body>
</html>