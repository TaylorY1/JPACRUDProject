package com.skilldistillery.beer.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

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
		return "add";
	}

	@RequestMapping(path = "update.do")
	public String update(Model model) {
		return "update";
	}

	@RequestMapping(path = "delete.do")
	public String delete(Model model) {
		return "delete";
	}

	@RequestMapping(path = "getBeer.do")
	public String showBeer(Integer bid, Model model) {
		Beer beer = dao.findByBeer(bid);
		model.addAttribute("beer", beer);
		return "show";
	}

	@RequestMapping(path = "addBeer.do", method = RequestMethod.POST)
//	public String addBeer(String beerType, String beerName, double abv, String beerBrand, int rating, Model model) {
	public String addBeer(Beer beer, Model model) {
		Beer newBeer = dao.addBeer(beer);
		model.addAttribute("beer", newBeer);
		return "add";

	}

	@RequestMapping(path = "deleteBeer.do", params = "beerId", method = RequestMethod.POST)
	public String deleteBeer(int beerId) {
		dao.deleteBeer(beerId);
		// model.addAttribute("beer", newBeer);
		return "home";

	}
	@RequestMapping(path="updateBeer.do", method = RequestMethod.GET)
	public ModelAndView updateBeer(int id, Beer beer) {
		ModelAndView mv = new ModelAndView();
		
		beer = dao.findByBeer(id);
		mv.addObject("beer", beer);

		mv.setViewName("update");
		
		return mv;
		
	}
	
	
	@RequestMapping(path="updatedBeer.do", method= RequestMethod.POST)
	public ModelAndView beerUpdated(int id, Beer beer) {
		ModelAndView mv = new ModelAndView();
		dao.updateBeer(id, beer);
		mv.setViewName("home");
		return mv;
	
	}
	
}

