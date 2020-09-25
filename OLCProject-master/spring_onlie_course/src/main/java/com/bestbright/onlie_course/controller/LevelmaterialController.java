package com.bestbright.onlie_course.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import com.bestbright.onlie_course.model.Level_material;

import com.bestbright.onlie_course.repository.LevelMaterialRepository;
import com.bestbright.onlie_course.repository.LevelRepository;
@Controller
public class LevelmaterialController {
	@Autowired
	private LevelRepository levelRepository;
	@Autowired
	private LevelMaterialRepository levelMaterialRepository;
	
	
	@GetMapping("/create_levelmaterial")
	public String createLevelMaterial(Model model) {
		model.addAttribute("levelM", new Level_material());
		model.addAttribute("levelList",levelRepository.findAll());
		return "add_levelmaterial";
	}
	@PostMapping("/save_levelmaterial")
	public String saveLevelmaterial(@ModelAttribute("levelM")Level_material level_material,Model model) {
		
		levelMaterialRepository.save(level_material);
		
		model.addAttribute("levelmaterialList",levelMaterialRepository.findAll());
		
		return "level_list";
	}
	
}
