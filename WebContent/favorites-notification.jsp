<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
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
	<a class="movies" href="movie-list-admin.html">Movies</a> <a
		href="favorites.html" class="favorite">Favorites</a> </nav> </header>

	<h2>Favorites</h2>

	<h3>
		<b>Movie removed from Favorites Successfully</b>
	</h3>


	<table class="box" cellpadding="4" cellspacing="6">
		<col width="230">
		<tr>
			<th class="title-name">Title</th>
			<th class="title-price">Box Office</th>
			<th class="title-text">Genre</th>
			<th></th>
		</tr>

		<tr>
			<td class="title-name">Avatar</td>
			<td class="title-price">$2,787,965,087</td>
			<td class="title-text">Science Fiction</td>
			<td class="title-text"><a href="favorites-notification.html">Delete</a></td>
		</tr>

		<tr>
			<td class="title-name">The Avengers</td>
			<td class="title-price">$1,518,812,988</td>
			<td class="title-text">Superhero</td>
			<td class="title-text"><a href="favorites-notification.html">Delete</a></td>
		</tr>


	</table>

	<h4>
		<b>No. of Favorites:</b> 2
	</h4>


	<footer>
	<p>Copyright &copy; 2019</p>
	</footer>

</body>
</html>
