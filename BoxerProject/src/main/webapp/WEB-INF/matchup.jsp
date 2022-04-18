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

<%@ include file="bootstrapSetup.jsp" %>
	
	<h2>Who would you like to match up? (TEMPORARY TBD)</h2>
	
	<form action="matchupBoxer.do" method="get">
	<input type="text" name="id1">
	<input type="text" name="id2">
	<input type="submit" name="submit">
	</form>

</body>
</html>