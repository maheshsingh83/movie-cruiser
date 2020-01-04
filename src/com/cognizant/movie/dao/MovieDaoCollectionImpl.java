package com.cognizant.movie.dao;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import com.cognizant.movie.model.Movie;
import com.cognizant.movie.util.DateUtil;



public class MovieDaoCollectionImpl implements MovieDao {
    public static List<Movie> movieList; //instance variable
    private Movie movieLists;
   
    public MovieDaoCollectionImpl() {
        // TODO Auto-generated constructor stub
        if (movieList == null || movieList.isEmpty()) {
            Movie item1 = new Movie(1,"Avatar", "$2,787,965,087",yes,
                    DateUtil.convertToDate("15/03/2017"), "Science Fiction",  false);
        if (movieList == null || movieList.isEmpty()) {
            Movie item2 = new Movie(2,"The Avenger", "$1,518,812,988",yes,
                    DateUtil.convertToDate("23/12/2017"), "Super Hero",  false);
        if (movieList == null || movieList.isEmpty()) {
            Movie item3 = new Movie(3,"Titanic", "$2,187,463,944",yes,
                    DateUtil.convertToDate("21/08/2017"), "Romance",  false);
            
        if (movieList == null || movieList.isEmpty()) {
            Movie item4 = new Movie(4,"Jurassic World", "$1,671,713,208",No,
                   DateUtil.convertToDate("02/07/2017"), "Science Fiction",  false);
        if (movieList == null || movieList.isEmpty()) {
            Movie item5 = new Movie(5,"Avengers:End Game", "$2,750,760,348",yes,
                   DateUtil.convertToDate("02/11/2022"), "Superhero",  false);
            
            movieList= new ArrayList<Movie>()
            
            
           
    }

   
}


    @Override
    public Movie getMovieById(long movieId) {
        // TODO Auto-generated method stub
        return null;
    }

    @Override
    public void modifyMovieList() {
        // TODO Auto-generated method stub
        for (int i = 0; i < movieList.size(); i++) {
            if (movieList.get(i).getMovieId() == movieLists.getMovieId()) {
                movieList.set(i, (Movie) movieList);
            }
        }
        
    }

    @Override
    public List<Movie> getMovieListAdmin() {
        // TODO Auto-generated method stub
        return movieList;
    }

    @Override
    public List<Movie> getMovieListCustomer() {
        // TODO Auto-generated method stub
        ArrayList<Movie> movie = new ArrayList<Movie>();
        for (Movie movie1 : movieList) {
            if (((movie1.getDateOfLaunch()).before(new Date())
                    || movie1.getDateOfLaunch().equals(new Date()))
                    && movie1.isActive() == true) {
                movie1.add(movie1);
            }
        }
        return movie;
      
    }
 }