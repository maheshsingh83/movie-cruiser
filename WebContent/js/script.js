function validationMovieForm() {

    var title = document.forms["movieForm"]["title"].value;
    var boxOffice = document.forms["movieForm"]["boxOffice"].value;
    var dateOfLaunch = document.forms["movieForm"]["dateOfLaunch"].value;
    var genre = document.forms["movieForm"]["genre"].value;
    var regex = (/[^0-9]/);

    if (title == "") {
        alert("Title is required");
        return false;
    }
    if (title.length < 2 || title.length > 65) {
        alert("Title should have 2 to 100 characters ");
        return false;
    }
    if (boxOffice == "") {
        alert("BoxOffice is required");
        return false;
    }
    if (boxOffice.match(regex)) {
        alert("BoxOffice has to be a number.");
        return false;
    }
    if (dateOfLaunch == "") {
        alert("Date of launch is required");
        return false;
    }
    if (genre == "") {
        alert("Select one genre");
        return false;
    }
}