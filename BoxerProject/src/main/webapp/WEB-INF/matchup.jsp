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

<script type="text/javascript">

function moveNumbers(num) {
    var txt=document.getElementById("result").value;
    txt=num;
    document.getElementById("result").value=txt;
    }
function moveNumbers2(num) {
    var txt=document.getElementById("result2").value;
    txt=num;
    document.getElementById("result2").value=txt;
    }

</script>
	
	<h2>Who would you like to match up?</h2>
	
	<form action="matchupBoxer.do" method="get">
	Boxer 1 ID: <input type="text" name="id1" id="result">
	Boxer 2 ID: <input type="text" name="id2" id="result2">
	<input type="submit" name="submit">
	</form>
	
		<table class="table table-striped">
		<thead>
			<tr>
				<th scope="col">One</th>
				<th scope="col">Two</th>
				<th scope="col">ID</th>
				<th scope="col">Name</th>
				<th scope="col">Height</th>
				<th scope="col">Reach</th>
				<th scope="col">Knockouts</th>
				<th scope="col">Total Fights</th>
				<th scope="col">Weight Classes</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach var="b" items="${boxers}">
				<tr>
					<td scope="row">
							<button onclick="moveNumbers(this.value)" class="btn btn-primary" style="button" name="one" value="${b.id}">Boxer 1</button>
						</td>
					<td scope="row">
							<button onclick="moveNumbers2(this.value)" class="btn btn-primary" style="button" name="two" value="${b.id}">Boxer 2</button>
						</td>
					<td>${b.id}</td>
					<td>${b.fullName}</td>
					<td>${b.height}</td>
					<td>${b.reach}</td>
					<td>${b.knockouts}</td>
					<td>${b.totalFights}</td>
					<td>${b.weightClass}</td>
				</tr>
			</c:forEach> 
		</tbody>
	</table>

</body>
</html>