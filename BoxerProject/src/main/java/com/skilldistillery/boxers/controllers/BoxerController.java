package com.skilldistillery.boxers.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.skilldistillery.boxers.data.BoxerDAO;
import com.skilldistillery.boxers.entities.Boxer;

@Controller
public class BoxerController {
	
	@Autowired
	private BoxerDAO dao;
	
	// HEADER CONTROLLERS
	
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
		return "redirect:searchById.do";
	}
	
	// SEARCH CONTROLLERS
	
	@PostMapping("searchById.do")
	public String searchbyid(int id, Model model, RedirectAttributes redir) {
		Boxer boxer = dao.findById(id);
		redir.addFlashAttribute("boxer", boxer);
		return "redirect:searchedById.do";
	}
	
	@GetMapping("searchedById.do")
	public String searchedbyid(Model model) {
		return "result";
	}
	
	@PostMapping("searchByName.do")
	public String searchbyname(String name, Model model, RedirectAttributes redir) {
		List<Boxer> boxer = dao.findByName(name);
		redir.addFlashAttribute("boxer", boxer);
		return "redirect:searchedByName.do";
	}
	
	@GetMapping("searchedByName.do")
	public String searchedbyname(Model model) {
		return "multipleresult";
	}
	
	@PostMapping("searchByWeightClass.do")
	public String searchbyweightclass(String wc, Model model, RedirectAttributes redir) {
		List<Boxer> boxer = dao.findByWeightClass(wc);
		redir.addFlashAttribute("boxer", boxer);
		return "redirect:searchedByWeightClass.do";
	}
	
	@GetMapping("searchedByWeightClass.do")
	public String searchedbyweightclass(Model model) {
		return "multipleresult";
	}

}
