<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Edit a Beer</title>
</head>
<body>
  <form action="editBeer.do" method="POST">
      <label for="title">Name: </label>
      <input type="text" name="beerName">
      <br>
      <label for="title">Type: </label>
      <input type="text" name="beeType">
      <br>
      <label for="title">ABV: </label>
      <input type="text" name="abv">
      <br>
      <label for="title">Brand: </label>
      <input type="text" name="beerBrand">
      <br>
      <label for="title">Rating (1 through 10, 10 being best): </label>
      <input type="text" name="rating">
      <br>
      
      
       <input type="submit" value="Submit Edits">
      </form>
</body>
</html>