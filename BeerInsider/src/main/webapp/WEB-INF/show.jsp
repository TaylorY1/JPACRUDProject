<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Beer Details</title>
<jsp:include page="bootstrapHead.jsp" />
</head>
<body>

<div class="container-fluid">
	<h1>Beer Details</h1>

	<div>
		<h5>${beer}</h5>
	</div>
</div>

<br>
<form action="updateBeer.do" method="get"> <button name="id" type="submit" value="${beer.id}">
Update this Beer?</button>


</form>
<a href="delete.do">Delete this Beer?</a>
</body>
</html>