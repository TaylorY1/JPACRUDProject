package com.skilldistillery.beer.data;

import java.util.List;


import com.skilldistillery.beer.entities.Beer;

public interface BeerDAO {
	Beer findByBeer(int beerId);

	List<Beer> findAll();

//	Beer update(int id, Beer beer);


//	Beer addBeer(String beerType, String beerName, double abv, String beerBrand, int rating);

	Beer addBeer(Beer beer);

//	Beer deleteBeer(Beer beer);

	Beer updateBeer(int beerId, Beer beer);

	boolean deleteBeer(int id);

}
