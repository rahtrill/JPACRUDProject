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

<%@ include file="bootstrapSetup.jsp" %>
	
	<h1>${boxer.fullName} (ID: ${boxer.id})</h1>
	
	<ul>
	<li>Height: ${boxer.height}</li>
	<li>Reach: ${boxer.reach}</li>
	<li>Knockouts: ${boxer.knockouts}</li>
	<li>Total fights: ${boxer.totalFights}</li>
	<li>Weight classes: ${boxer.weightClass}</li>
	</ul>
	
	<form action="updateForm.do" method="get">
		<button type="submit" name="id" value="${boxer.id}">Update Boxer</button>
	</form>
	
	<form action="deleteBoxer.do" method="post">
		<button type="submit" name="id" value="${boxer.id}">Delete Boxer</button>
	</form>
	
</body>
</html>