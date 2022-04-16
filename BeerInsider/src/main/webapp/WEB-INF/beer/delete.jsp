<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Beer Insider!</title>
</head>
<body>
	<h1>Please insert a Beer ID number to Delete It</h1>

	<form action="deleteBeer.do" method="get">
		<label for="beerId">Beer ID:</label> <input type="text" name="beerId">
		<input type="submit" value="Delete">
	</form>
</body>
</html>