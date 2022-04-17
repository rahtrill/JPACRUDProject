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
<%@ include file="bootstrapSetup.jsp" %>

<nav class="navbar navbar-dark bg-dark">
	<span class="navbar-brand mb-0 h1">Add Boxer</span>
  <a class="navbar-brand" href="home.do">Home</a>
  <a class="navbar-brand" href="search.do">Search</a>
  <a class="navbar-brand" href="add.do">Add</a>
  <a class="navbar-brand" href="update.do">Update</a>
  <a class="navbar-brand" href="remove.do">Remove</a>
  <a class="navbar-brand" href="matchup.do">Match-Up</a>
</nav>

	<form action="addBoxer.do" method="post">
		First Name: <input type="text" name="firstName"> <br>
		Last Name: <input type="text" name="lastName"> <br>
		Height (in inches): <input type="text" name="height"> <br>
		Weight Class(s):
		<table>
			<tr>
				<td><input type="checkbox" name="weightClass"
					value="Minimumweight"> <label for="Minimumweight">Minimumweight
						(105 lb - 108 lb)</label></td>
				<td><input type="checkbox" name="weightClass" value="Flyweight">
					<label for="Flyweight">Flyweight (108 lb - 118 lb)</label></td>
				<td><input type="checkbox" name="weightClass"
					value="Bantamweight"> <label for="Bantamweight">Bantamweight
						(118 lb - 126 lb)</label></td>
			</tr>
			<tr>
				<td><input type="checkbox" name="weightClass"
					value="Featherweight"> <label for="Featherweight">Featherweight
						(126 lb - 135 lb)</label></td>
				<td><input type="checkbox" name="weightClass"
					value="Lightweight"> <label for="Lightweight">Lightweight
						(135 lb - 147 lb)</label></td>
				<td><input type="checkbox" name="weightClass"
					value="Welterweight"> <label for="Welterweight">Welterweight
						(147 lb - 160 lb)</label></td>
			</tr>
			<tr>
				<td><input type="checkbox" name="weightClass"
					value="Middleweight"> <label for="Middleweight">Middleweight
						(160 lb - 175 lb)</label></td>
				<td><input type="checkbox" name="weightClass"
					value="Cruiserweight"> <label for="Cruiserweight">Cruiserweight
						(175 lb - 200 lb)</label></td>
				<td><input type="checkbox" name="weightClass"
					value="Heavyweight"> <label for="Heavyweight">Heavyweight
						(200 lb +)</label></td>
			</tr>
		</table>
		<br> Nationality: <input type="text" name="nationality">
		<br> Reach (in inches): <input type="text" name="reach">
		<br> Total Knockouts: <input type="text" name="knockouts">
		<br> Total Fights: <input type="text" name="totalFights">
		<br> <input type="submit" name="submit">
	</form>

</body>
</html>