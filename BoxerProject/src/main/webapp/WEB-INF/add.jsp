<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add Boxer Page</title>
</head>
<body>

	<h1>Add a boxer</h1>

	<ul>
		<li><a href="home.do">Home</a></li>
		<li><a href="search.do">Search</a></li>
		<li><a href="add.do">Add</a></li>
		<li><a href="update.do">Update</a></li>
		<li><a href="remove.do">Remove</a></li>
		<li><a href="matchup.do">Match-up</a></li>
	</ul>
	
	<form action="addBoxer.do" method="post">
	First Name: <input type="text" name="firstName">
	<br>
	Last Name: <input type="text" name="lastName">
	<br>
	Height (in inches): <input type="text" name="height">
	<br>
	Weight Class(s):
	<br> 
	Minimumweight (105 lb - 108 lb)<input type="checkbox" name="weightClass" value="Minimumweight">
	Flyweight (108 lb - 118 lb)<input type="checkbox" name="weightClass" value="Flyweight">
	Bantamweight (118 lb - 126 lb)<input type="checkbox" name="weightClass" value="Bantamweight">
	Featherweight (126 lb - 135 lb)<input type="checkbox" name="weightClass" value="Featherweight">
	Lightweight (135 lb - 147 lb)<input type="checkbox" name="weightClass" value="Lightweight">
	Welterweight (147 lb - 160 lb)<input type="checkbox" name="weightClass" value="Welterweight">
	Middleweight (160 lb - 175 lb)<input type="checkbox" name="weightClass" value="Middleweight">
	Heavyweight (175 lb +)<input type="checkbox" name="weightClass" value="Heavyweight">
	<br>
	Nationality: <input type="text" name="nationality">
	<br>
	Reach (in inches): <input type="text" name="reach">
	<br>
	Total Knockouts: <input type="text" name="knockouts">
	<br>
	Total Fights: <input type="text" name="totalFights">
	<br>
	<input type="submit" name="submit">
	</form>

</body>
</html>