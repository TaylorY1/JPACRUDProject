<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Beer Details</title>
<jsp:include page="../bootstrapHead.jsp" />
</head>
<body>

<div class="container-fluid">
	<h1>Beer Details</h1>

	<div>
		<h5>${beer}</h5>
	</div>
</div>
<a href="edit.do">Edit this Beer?</a><br>
<a href="delete.do">Delete this Beer?</a><br>
</body>
</html>