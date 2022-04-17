<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Search Boxer Page</title>
</head>
<body>

	<h1>Search for a boxer</h1>

	<ul>
		<li><a href="home.do">Home</a></li>
		<li><a href="search.do">Search</a></li>
		<li><a href="add.do">Add</a></li>
		<li><a href="update.do">Update</a></li>
		<li><a href="remove.do">Remove</a></li>
		<li><a href="matchup.do">Match-up</a></li>
	</ul>

	<h3>Search By ID</h3>

	<form action="searchById.do" method="post">
		<input type="text" name="id" /> <input type="submit" name="submit" />
	</form>

	<h3>Search By Name</h3>

	<form action="searchByName.do" method="post">
		<input type="text" name="name" /> <input type="submit" name="submit" />
	</form>

	<h3>Search By Weight Class</h3>

	<form action="searchByWeightClass.do" method="post">
		<input type="text" name="wc" /> <input type="submit" name="submit" />
	</form>

</body>
</html>