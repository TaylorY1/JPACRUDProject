package com.skilldistillery.beer.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.skilldistillery.beer.data.BeerDAO;
import com.skilldistillery.beer.entities.Beer;

@Controller
public class BeerController {

	@Autowired
	private BeerDAO dao;

	@RequestMapping(path = { "/", "home.do" })
	public String home(Model model) {
		model.addAttribute("DEBUG", dao.findByBeer(1));
		return "home";
	}

	@RequestMapping(path = "add.do")
	public String add(Model model) {
		return "beer/add";
	}

	@RequestMapping(path = "update.do")
	public String update(Model model) {
		return "beer/update";
	}

	@RequestMapping(path = "delete.do")
	public String delete(Model model) {
		return "beer/delete";
	}

	@RequestMapping(path = "getBeer.do")
	public String showBeer(Integer bid, Model model) {
		Beer beer = dao.findByBeer(bid);
		model.addAttribute("beer", beer);
		return "beer/show";
	}

	@RequestMapping(path = "addBeer.do", method = RequestMethod.POST)
//	public String addBeer(String beerType, String beerName, double abv, String beerBrand, int rating, Model model) {
	public String addBeer(Beer beer, Model model) {
		Beer newBeer = dao.addBeer(beer);
		model.addAttribute("beer", newBeer);
		return "beer/add";

	}

	@RequestMapping(path = "deleteBeer.do", method = RequestMethod.GET)
	public String deleteBeer(int id, Model model) {
		boolean newBeer = dao.deleteBeer(id);
	//	model.addAttribute("beer", newBeer);
		return "beer/delete";

	}
	@RequestMapping(path = "updateBeer.do", method = RequestMethod.GET)
	public String updateBeer(Beer beer, Model model) {
		Beer newBeer = dao.updateBeer(0, beer);
		model.addAttribute("beer", newBeer);
		return "beer/update";

	}
}
