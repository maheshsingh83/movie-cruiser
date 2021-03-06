<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="f"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Movie List Admin</title>
<link rel="stylesheet" type="text/css" href="styles\style.css" />
<link rel="shortcut icon" href="images\logo.png" />
</head>
<body>
	<header>
	<h1>Movie Cruiser</h1>
	<img src="images\logo.png" alt="img" width="50" height="50" /> <nav>
	<a class="movies" href="ShowMovieListAdmin">Movies</a></nav> </header>


	<h2>Movies</h2>

	<table class="box" cellpadding="4" cellspacing="6">
		<col width="300">
		<tr>
			<th class="title-name">Title</th>
			<th class="title-price">Box Office</th>
			<th class="title-text">Active</th>
			<th class="title-text">Date of Launch</th>
			<th class="title-text">Genre</th>
			<th class="title-text">Has Teaser</th>
			<th class="title-text">Action</th>
		</tr>

		<c:forEach items="${movie}" var="movie">
			<tr>
				<td class="title-name">${movie.getTitle()}</td>
				<td class="title-price"><f:formatNumber type="currency"
						value="${movie.getBoxOffice()}" maxFractionDigits="0" /></td>
				<td class="title-text"><c:choose>
						<c:when test="${movie.isActive()==true}">Yes</c:when>
						<c:otherwise>No</c:otherwise>
					</c:choose></td>
				<td class="title-text"><f:formatDate
						value="${movie.getDateOfLaunch()}" pattern="dd/MM/yyyy" /></td>
				<td class="title-text">${movie.getGenre()}</td>
				<td class="title-text"><c:choose>
						<c:when test="${movie.isHasTeaser()==true}">Yes</c:when>
						<c:otherwise>No</c:otherwise>
					</c:choose></td>
				<td class="title-text"><a
					href="ShowEditMovie?movieId=${movie.getMovieId()}" id="link">Edit</a></td>
			</tr>
		</c:forEach>
	</table>

	<footer>
	<p>Copyright &copy; 2019</p>
	</footer>

</body>
</html>



