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
		List<Boxer> boxers = dao.getAllBoxers();
		model.addAttribute("boxers", boxers);
		return "update";
	}
	
	@RequestMapping(path=  "remove.do")
	public String remove(Model model) {
		List<Boxer> boxers = dao.getAllBoxers();
		model.addAttribute("boxers", boxers);
		return "remove";
	}
	
	@RequestMapping(path=  "matchup.do")
	public String matchup(Model model) {
		return "matchup";
	}
	
	@RequestMapping(path=  "result.do")
	public String result(int id, Model model) {
		model.addAttribute("boxer", dao.findById(id));
		return "result";
	}
	
	// SEARCH CONTROLLERS
	
	@PostMapping("searchById.do")
	public String searchbyid(String word, Model model, RedirectAttributes redir) {
		String map = "";
		
			String keyword = word;

			try {

				int newId = Integer.parseInt(word);
				Boxer b = dao.findById(newId);
				redir.addFlashAttribute("boxer", b);
				map ="redirect:searchedById.do";

			} catch (Exception e) {

				List<Boxer> k = dao.findByName(keyword);
				
				redir.addFlashAttribute("search", keyword);
				redir.addFlashAttribute("boxer", k);
				map = "redirect:searchedByName.do";
			}
		return map;
	}
	
	@GetMapping("searchedById.do")
	public String searchedbyid(Model model) {
		return "result";
	}
//	
//	@PostMapping("searchByName.do")
//	public String searchbyname(String name, Model model, RedirectAttributes redir) {
//		List<Boxer> boxer = dao.findByName(name);
//		redir.addFlashAttribute("search", name);
//		redir.addFlashAttribute("boxer", boxer);
//		return "redirect:searchedByName.do";
//	}
//	
	@GetMapping("searchedByName.do")
	public String searchedbyname(Model model) {
		return "multipleresult";
	}
//	
//	@PostMapping("searchByWeightClass.do")
//	public String searchbyweightclass(String wc, Model model, RedirectAttributes redir) {
//		List<Boxer> boxer = dao.findByWeightClass(wc);
//		redir.addFlashAttribute("search", wc);
//		redir.addFlashAttribute("boxer", boxer);
//		return "redirect:searchedByWeightClass.do";
//	}
//	
//	@GetMapping("searchedByWeightClass.do")
//	public String searchedbyweightclass(Model model) {
//		return "multipleresult";
//	}
	
	// ADD CONTROLLERS
	
	@PostMapping("addBoxer.do")
	public String addBoxer(Boxer boxer, Model model, RedirectAttributes redir) {
		Boxer boxer1 = dao.addBoxer(boxer);
		redir.addFlashAttribute("boxer", boxer1);
		return "redirect:addedBoxer.do";
	}
	
	@GetMapping("addedBoxer.do")
	public String addedBoxer(Model model) {
		return "result";
	}
	
	// UPDATE CONTROLLERS
	
	@GetMapping("updateForm.do")
	public String updateForm(int id, Model model) {
		Boxer boxer = dao.findById(id);
		model.addAttribute("boxer", boxer);
		return "updateForm";
	}
	
	@PostMapping("updateBoxer.do")
	public String updateBoxer(Boxer boxer, Model model, RedirectAttributes redir) {
		Boxer boxer1 = dao.updateBoxer(boxer);
		redir.addFlashAttribute("boxer", boxer1);
		return "redirect:updatedBoxer.do";
	}
	
	@GetMapping("updatedBoxer.do")
	public String updatedBoxer(Model model) {
		return "result";
	}
	
	// DELETE CONTROLLERS
	
	@PostMapping("deleteBoxer.do")
	public String deleteBoxer(int id, Model model, RedirectAttributes redir) {
		Boxer boxer = dao.findById(id);
		boolean deleted = dao.deleteBoxer(boxer);
		redir.addFlashAttribute("deleted", deleted);
		return "redirect:deletedBoxer.do";
	}
	
	@GetMapping("deletedBoxer.do")
	public String deletedBoxer(Model model) {
		return "deleted";
	}
	
	// MATCHUP CONTROLLERS
	
	@GetMapping("matchupBoxer.do")
	public String matchupBoxer(int id1, int id2, Model model) {
		Boxer boxer1 = dao.findById(id1);
		Boxer boxer2 = dao.findById(id2);
		List<Integer> percentage = dao.matchupBoxers(boxer1, boxer2);
		int percentage1 = percentage.get(0);
		int percentage2 = percentage.get(1);
		
		model.addAttribute("player1", boxer1); 
		model.addAttribute("player2", boxer2); 
		model.addAttribute("p1percent", percentage1); 
		model.addAttribute("p2percent", percentage2);
		return "matchupResult";
	}

}
