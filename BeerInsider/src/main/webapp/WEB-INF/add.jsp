<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add Beer to List</title>
<jsp:include page="bootstrapHead.jsp" />
</head>
<body>
	<form action="addBeer.do" method="POST">
		<label for="beer_name">Name:</label> <input type="text"
			name="beerName"> <br>
			 <label for="beer_type">Beer
			Type:</label> <input type="text" name="beerType"> <br> 
			<label
			for="abv">ABV:</label> <input type="text" name="abv"> <br>
			
		<br> 
		<label for="beer_brand">Brand:</label> <input type="text"
			name="beerBrand"> <br> <br> <label for="rating">Rating
			(1 through 10, 10 being best):</label> <input type="text" name="rating">
		<br> <input type="submit" value="Add Beer">
	</form>

</body>
</html>