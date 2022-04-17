<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Edit a Beer</title>
<jsp:include page="bootstrapHead.jsp" />
</head>
<body>
  <form action="updatedBeer.do" method="POST">
  <input id="id" type= "hidden" name="id" value="${beer.id}">
  	<h1>Edit this Beer</h1>
      <br>
      
      <label for="beer_type">Type: </label>
      <input type="text" name="beerType" value="${beer.beerType}">
      <br>
      <label for="beer_name">Name: </label>
      <input type="text" name="beerName" value="${beer.beerName}">
      <br>
      <label for="abv">ABV: </label>
      <input type="text" name="abv" value="${beer.abv}">
      <br>
      <label for="beer_brand">Brand: </label>
      <input type="text" name="beerBrand" value="${beer.beerBrand}">
      <br>
      <label for="rating">Rating (1 through 10, 10 being best): </label>
      <input type="text" name="rating" value="${beer.rating}">
      <br>
      
      
       <input type="submit" value="Submit Edits">
      </form>
</body>
</html>