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