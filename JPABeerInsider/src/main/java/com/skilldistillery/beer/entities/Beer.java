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
		return "Beer [id=" + id + ", beerType=" + beerType + "]";
	}

}
