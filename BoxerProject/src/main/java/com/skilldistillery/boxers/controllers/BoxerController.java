package com.skilldistillery.boxers.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.skilldistillery.boxers.data.BoxerDAO;
import com.skilldistillery.boxers.entities.Boxer;

@Controller
public class BoxerController {
	
	@Autowired
	private BoxerDAO dao;
	
	@RequestMapping(path= {"/", "home.do"})
	public String home(Model model) {
		Boxer boxer = dao.findById(1);
		model.addAttribute("DEBUG", boxer);
		return "home";
	}

}
