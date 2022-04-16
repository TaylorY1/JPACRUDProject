<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Beer Site</title>
<jsp:include page="bootstrapHead.jsp"/>
</head>
<body>

	<main class="container-fluid">
		<h1>Welcome to Beer Insider!</h1>

		<form action="getBeer.do" method="GET">
			Beer ID: <input type="text" name="bid" /> <input type="submit"
				value="Show Beer" />
		</form>

<a href="add.do">Add a new Beer!</a><br>

	</main>

	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
		crossorigin="anonymous"></script>
	
</body>
</html>