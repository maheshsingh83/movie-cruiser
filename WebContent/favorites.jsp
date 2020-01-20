<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="f"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Favorites</title>
<link rel="stylesheet" type="text/css" href="styles\style.css" />
<link rel="shortcut icon" href="images\logo.png" />
</head>
<body>
	<header>
	<h1>Movie Cruiser</h1>
	<img src="images\logo.png" alt="img" width="50" height="50" /> <nav>
	<a class="movies" href="ShowMovieListCustomer">Movies</a> <a
		href="ShowFavorite" class="favorite">Favorites</a></nav> </header>

	<h2>Favorites</h2>
	<c:if test="${removeFavoriteItemStatus==true}">
		<h3>
			<b>Movie removed from Favorites Successfully</b>
		</h3>
	</c:if>

	<c:set value="${favorite}" var="favorite"></c:set>
	<table class="box" cellspacing="6" cellpadding="4">
		<col width="300">

		
		<tr>
			<th class="title-name">Title</th>
			<th class="title-price">Box Office</th>
			<th class="title-text">Genre</th>
			<th></th>
		</tr>

		<c:forEach items="${movie}" var="movie">
			<tr>
				<td class="title-name">${movie.getTitle()}</td>

				<td class="title-text"><f:formatNumber type="currency"
						value="${movie.getBoxOffice()}" maxFractionDigits="0" /></td>

				<td class="title-text">${movie.getGenre()}</td>

				<td class="title-text"><a
					href="RemoveFavorite?movieId=${movie.getMovieId()}" id="link">Delete</a></td>
			</tr>
		</c:forEach>

		<tr>
			<td><b>No. of Favorites:</b> ${favorite.getTotal()}</td>
		</tr>
	</table>






	<footer>
	<p>Copyright &copy; 2019</p>
	</footer>

</body>
</html>
