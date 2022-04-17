package com.skilldistillery.beer.data;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

import com.skilldistillery.beer.entities.Beer;

@Service
@Transactional
public class BeerDaoImpl implements BeerDAO {

	@PersistenceContext
	private EntityManager em;

	@Override
	public Beer findByBeer(int beerId) {
		return em.find(Beer.class, beerId);
	}

	@Override
	public List<Beer> findAll() {
		String jpql = "SELECT b FROM Beer b";
		return em.createQuery(jpql, Beer.class).getResultList();
	}

	@Override
	public Beer addBeer(Beer beer) {
//		Beer beer = new Beer();
//		beer.setBeerType(beerName);
//		beer.setBeerName(beerName);
//		beer.setAbv(beerBrand);
//		beer.setBeerBrand(beerBrand);
//		beer.setRating(beerBrand);
		em.persist(beer);

		return beer;

	}
	@Override
	public boolean deleteBeer(int id) {
		boolean flag = false;
		
		Beer rogue = em.find(Beer.class, id);
		if (rogue != null) {
			em.remove(rogue);
			em.flush();
			
			flag = !em.contains(rogue);
			
			
		}
		return flag;
		
	}
	@Override
	public Beer updateBeer(int id, Beer beer) {
		
		Beer updatedBeer = em.find(Beer.class, id);
		
		updatedBeer.setBeerName(beer.getBeerName());
		updatedBeer.setBeerType(beer.getBeerType());
		updatedBeer.setAbv(beer.getAbv());
		updatedBeer.setBeerBrand(beer.getBeerBrand());
		updatedBeer.setRating(beer.getRating());
		em.flush();
	//	em.persist(updatedBeer);
		
		return updatedBeer;
	}

}
