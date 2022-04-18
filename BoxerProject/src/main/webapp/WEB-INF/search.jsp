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


	<h3>Search For A Boxer (ID, Name, or Weight Class)</h3>

	<form action="searchById.do" method="post">
		<input type="text" name="word" /> <input type="submit" name="submit" />
	</form>

</body>
</html>