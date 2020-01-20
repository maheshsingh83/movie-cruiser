<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="f"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Edit Movie</title>
<link rel="stylesheet" type="text/css" href="styles\style.css" />
<link rel="shortcut icon" href="images\logo.png" />
<script src="js\script.js" type="text/javascript"></script>
</head>
<body>
	<c:set var="movie" value="${movie}"></c:set>
	<header>
	<h1>Movie Cruiser</h1>
	<img src="images\logo.png" alt="img" width="50" height="50" /> <nav>
	<a class="movies" href="ShowMovieListAdmin">Movies</a></nav> </header>



	<h2>Edit Menu Item</h2>
	<form name="movieForm" onsubmit="return validationMovieForm()"
		method="post" action="EditMovie">
		<input type="hidden" name="id" value="${movie.getMovieId()}" />
		<table class="box" cellpadding="4" cellspacing="6">

			<tr>
				<td><label for="name"><b>Title</b></label></td>
			</tr>

			<tr>
				<td colspan="4"><input id="name" type="text" name="title"
					value="${movie.getTitle() }" width="60%" size="80%"
					autocomplete="off" spellcheck="false"></td>
			</tr>

			<tr>
				<td><label for="text-price"><b>Gross ($)</b></label></td>
				<td><b>Active</b></td>
				<td><label for="textDOB"><b>Date of launch</b></label></td>
				<td><label for="category"><b>Genre</b></label></td>
			</tr>

			<tr>
				<td><input type="text" name="boxOffice"
					value="${movie.getBoxOffice()}" autocomplete="off" size="15%" /></td>

				<td><c:choose>
						<c:when test="${movie.isActive()==true}">
							<input type="radio" value="Yes" name="active" checked="checked">Yes
							<input type="radio" value="No" name="active">No
		     						</c:when>
						<c:otherwise>
							<input type="radio" value="Yes" name="active" />Yes
		     						    <input type="radio" value="No" name="active"
								checked="checked" />No
		     						   </c:otherwise>
					</c:choose></td>

				<td><f:formatDate value="${movie.getDateOfLaunch()}"
						pattern="dd/MM/yyyy" var="dateOfLaunch" /><input type="text"
					name="dateOfLaunch" id="date" value="${dateOfLaunch}"
					autocomplete="off" /></td>

				<td><select name="genre" id="catergory">
						<option value="${movie.getGenre()}">${movie.getGenre()}</option>
						<option value="Science Fiction">Science Fiction</option>
						<option value="Superhero">Superhero</option>
						<option value="Romance">Romance</option>
						<option value="Comedy">Comedy</option>
						<option value="Adventure">Adventure</option>
						<option value="Thriller">Thriller</option>
				</select></td>
			</tr>

			<tr>
				<td colspan="2"><c:choose>
						<c:when test="${movie.isHasTeaser()==true}">
							<input type="checkbox" name="freeDelivery" value="Yes"
								checked="checked" />
						</c:when>
						<c:otherwise>
							<input type="checkbox" name="freeDelivery" value="No" />
						</c:otherwise>
					</c:choose><b>Has Teaser</b></td>

				
			<tr>
				<td colspan="2"><input class="button" type="submit"
					value="Save" name="submit"></td>
			</tr>

		</table>
	</form>

	<footer>
	<p>Copyright &copy; 2019</p>
	</footer>

</body>
</html>

