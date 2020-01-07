package com.cognizant.movie.dao;

import java.util.List;

import com.cognizant.movie.model.Movie;

public class FavoriteDaoCollectionImplTest {

    static FavoriteDao favoriteDao = new FavoriteDaoCollectionImpl();

    public static void main(String[] args) {
        // TODO Auto-generated method stub
        testAddFavorites();
        testGetAllFavorites();
        testRemoveFavorites();
        testGetAllFavorites();

    }

    public static void testAddFavorites() {
        System.out.println("Movie added into Favorite");
        favoriteDao.addFavoritesById(1, 2);// 1 is userId, 2 is movieId
        favoriteDao.addFavoritesById(1, 3);// 1 is userId, 3 is movieId
    }

    public static void testGetAllFavorites() {
        try {
            System.out.println("Retrieving all the items from favorites");
            List<Movie> list = favoriteDao.getAllFavorites(1).getFavoriteList(); // 1 is userId
            for (Movie movie : list) {
                System.out.println(movie);
            }
            System.out.println("No.of Favorites:" + list.size());
        } catch (FavoriteEmptyException e) {
            System.out.println(e);
        }

    }

    public static void testRemoveFavorites() {
        System.out.println("Remove Favorites");
        favoriteDao.removeFavoritesById(1, 3);

    }

}
