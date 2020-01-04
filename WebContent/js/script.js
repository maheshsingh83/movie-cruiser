function validation(){
    
	var title= document.forms["form"]["title"].value;
	var boxOffice= document.forms["form"]["boxOffice"].value;
	var dateoflaunch= document.forms["form"]["dateoflaunch"].value;
	var genre= document.forms["form"]["genre"].value;
	var regex =(/[^0-9]/);
	
	if(title ==""){
		alert("Title is required");
		return false;
	}
	if(title.length<2||title.length>65){
		alert("Title should have 2 to 100 characters ");
		return false;
	}
	if(boxOffice==""){
		alert("BoxOffice is required");
		return false;
	}
	if(boxOffice.match(regex)){
		alert("BoxOffice has to be a number.");
		return false ;
	}
	if(dateoflaunch==""){
		alert("Date of launch is required");
		return false;
	}
	if(genre==""){
		alert("Select one genre");
		return false;
	}
}	