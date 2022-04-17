<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Match-up Boxer Page</title>
</head>
<body>

	<h1>Match-up boxers</h1>

	<ul>
		<li><a href="home.do">Home</a></li>
		<li><a href="search.do">Search</a></li>
		<li><a href="add.do">Add</a></li>
		<li><a href="update.do">Update</a></li>
		<li><a href="remove.do">Remove</a></li>
		<li><a href="matchup.do">Match-up</a></li>
	</ul>
	
	<h2>Who would you like to match up? (TEMPORARY TBD)</h2>
	
	<form action="matchupBoxer" method="get">
	<input type="text" name="id1">
	<input type="text" name="id2">
	<input type="submit" name="submit">
	</form>

</body>
</html>