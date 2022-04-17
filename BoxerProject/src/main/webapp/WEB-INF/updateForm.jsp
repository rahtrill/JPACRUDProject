<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Update Boxer Page</title>
</head>
<body>

	<h1>Update a boxer</h1>

	<ul>
		<li><a href="home.do">Home</a></li>
		<li><a href="search.do">Search</a></li>
		<li><a href="add.do">Add</a></li>
		<li><a href="update.do">Update</a></li>
		<li><a href="remove.do">Remove</a></li>
		<li><a href="matchup.do">Match-up</a></li>
	</ul>
	
<form action="updateBoxer.do" method="post">
	First Name: <input type="text" name="firstName" value="${boxer.firstName}">
	<br>
	Last Name: <input type="text" name="lastName" value="${boxer.lastName}">
	<br>
	Height (in inches): <input type="text" name="height" value="${boxer.height}">
	<br>
	Weight Class(s): <input type="text" name="weightClass" value="${boxer.weightClass}">
	<br> 
	Nationality: <input type="text" name="nationality" value="${boxer.nationality}">
	<br>
	Reach (in inches): <input type="text" name="reach" value="${boxer.reach}">
	<br>
	Total Knockouts: <input type="text" name="knockouts" value="${boxer.knockouts}">
	<br>
	Total Fights: <input type="text" name="totalFights" value="${boxer.totalFights}">
	<br>
	<input type="hidden" name="id" value="${boxer.id}">
	<input type="submit" name="submit">
	</form>

</body>
</html>