<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Home Page</title>
</head>
<body>

<%@ include file="bootstrapSetup.jsp" %>

<nav class="navbar navbar-dark bg-dark">
	<span class="navbar-brand mb-0 h1">Boxer Project</span>
  <a class="navbar-brand" href="home.do">Home</a>
  <a class="navbar-brand" href="search.do">Search</a>
  <a class="navbar-brand" href="add.do">Add</a>
  <a class="navbar-brand" href="update.do">Update</a>
  <a class="navbar-brand" href="remove.do">Remove</a>
  <a class="navbar-brand" href="matchup.do">Match-Up</a>
</nav>

<div class="card">
  <h5 class="card-header">Search</h5>
  <div class="card-body">
    <h5 class="card-title">Search for a boxer</h5>
    <p class="card-text">You can search for a boxer in the database using an ID, name, or weight class.</p>
    <a href="search.do" class="btn btn-primary">GO</a>
  </div>
</div>

<div class="card">
  <h5 class="card-header">Add</h5>
  <div class="card-body">
    <h5 class="card-title">Add a boxer</h5>
    <p class="card-text">You can add a boxer to the database with multiple different fields. Some of the fields include name, weight class, reach, height, etc.</p>
    <a href="add.do" class="btn btn-primary">GO</a>
  </div>
</div>

<div class="card">
  <h5 class="card-header">Update</h5>
  <div class="card-body">
    <h5 class="card-title">Update a boxer</h5>
    <p class="card-text">You can update a boxer that exists in the database. You can browse a list of boxers in the database, or search for them in the search field.</p>
    <a href="update.do" class="btn btn-primary">GO</a>
  </div>
</div>

<div class="card">
  <h5 class="card-header">Delete</h5>
  <div class="card-body">
    <h5 class="card-title">Delete a boxer</h5>
    <p class="card-text">You can remove a boxer that exists in the database from the database. You can browse a list of boxers in the database, or search for them in the search field.</p>
    <a href="remove.do" class="btn btn-primary">GO</a>
  </div>
</div>

<div class="card">
  <h5 class="card-header">Match-Up</h5>
  <div class="card-body">
    <h5 class="card-title">Boxer Match-Up</h5>
    <p class="card-text">You can select two boxers in the database to face off in a theoretical match. Using statistics that belong to each boxer, the program will compare two boxers to one another and determine how likely a boxer may win in this match. </p>
    <a href="matchup.do" class="btn btn-primary">GO</a>
  </div>
</div>

</body>
</html>