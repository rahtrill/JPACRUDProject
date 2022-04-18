<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Home Page</title>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
</head>
<style>
.card {
	margin: 0 auto; /* Added */
	float: none; /* Added */
	margin-bottom: 20px; /* Added */
	margin-top: 20px; /* Added */
	margin-left: 20px;
	margin-right: 20px;
}

.centered {
	margin: 0;
    position: absolute;
    top: 50%;
    left: 50%;
    margin-right: -50%;
    transform: translate(-50%, -50%) 
}

.centerfurther {
	top: 60%;
}

.red {
	text-align: center;
	color: red;
}

.green {
	text-align: center;
	color: green;
}
</style>
<body>

<nav class="navbar navbar-dark bg-dark">
	<span class="navbar-brand mb-0 h1">Boxer Project</span>
  <a class="navbar-brand" href="home.do">Home</a>
  <a class="navbar-brand" href="search.do">Search</a>
  <a class="navbar-brand" href="add.do">Add</a>
  <a class="navbar-brand" href="update.do">Update</a>
  <a class="navbar-brand" href="remove.do">Remove</a>
  <a class="navbar-brand" href="matchup.do">Match-Up</a>
</nav>

	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
		integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/popper.js@1.14.7/dist/umd/popper.min.js"
		integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/js/bootstrap.min.js"
		integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
		crossorigin="anonymous"></script>
</body>
</html>