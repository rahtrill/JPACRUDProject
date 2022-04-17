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
	
	<h1>${boxer.fullName} (ID: ${boxer.id})</h1>
	
	<ul>
	<li>Height: ${boxer.height}</li>
	<li>Reach: ${boxer.reach}</li>
	<li>Knockouts: ${boxer.knockouts}</li>
	<li>Total fights: ${boxer.totalFights}</li>
	<li>Weight classes: ${boxer.weightClass}</li>
	</ul>
	
</body>
</html>