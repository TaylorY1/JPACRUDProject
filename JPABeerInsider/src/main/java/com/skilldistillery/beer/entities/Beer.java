package com.skilldistillery.beer.entities;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Beer {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	
	@Column(name = "beer_type")
	private String beerType;
	@Column(name = "beer_name")
	private String beerName;
	@Column(name = "abv")
	private String abv;
	@Column(name = "beer_brand")
	private String beerBrand;
	@Column(name = "rating")
	private String rating;
	
	public String getBeerName() {
		return beerName;
	}

	public void setBeerName(String beerName) {
		this.beerName = beerName;
	}

	public String getAbv() {
		return abv;
	}

	public void setAbv(String abv) {
		this.abv = abv;
	}

	public String getBeerBrand() {
		return beerBrand;
	}

	public void setBeerBrand(String beerBrand) {
		this.beerBrand = beerBrand;
	}

	public String getRating() {
		return rating;
	}

	public void setRating(String rating) {
		this.rating = rating;
	}



	public Beer() {
		super();
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getBeerType() {
		return beerType;
	}

	public void setBeerType(String name) {
		this.beerType = name;
	}

	@Override
	public String toString() {
		return "Beer ID is: " + id + ", Beer Type: " + beerType + ", Beer Name: " + beerName + ", ABV: " + abv + "%, Brand: "
				+ beerBrand + "\n Rating: " + rating;
	}

}
