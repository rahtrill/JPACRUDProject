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

<%@ include file="bootstrapSetup.jsp" %>

<nav class="navbar navbar-dark bg-dark">
	<span class="navbar-brand mb-0 h1">Search Boxers</span>
  <a class="navbar-brand" href="home.do">Home</a>
  <a class="navbar-brand" href="search.do">Search</a>
  <a class="navbar-brand" href="add.do">Add</a>
  <a class="navbar-brand" href="update.do">Update</a>
  <a class="navbar-brand" href="remove.do">Remove</a>
  <a class="navbar-brand" href="matchup.do">Match-Up</a>
</nav>

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