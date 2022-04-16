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
		return "home";
	}
	
	@RequestMapping(path=  "search.do")
	public String search(Model model) {
		return "search";
	}
	
	@RequestMapping(path=  "add.do")
	public String add(Model model) {
		return "add";
	}
	
	@RequestMapping(path=  "update.do")
	public String update(Model model) {
		return "update";
	}
	
	@RequestMapping(path=  "remove.do")
	public String remove(Model model) {
		return "remove";
	}
	
	@RequestMapping(path=  "matchup.do")
	public String matchup(Model model) {
		return "matchup";
	}

}
