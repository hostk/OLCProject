package com.bestbright.onlie_course.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.bestbright.onlie_course.dto.Level_materialDTO;

import com.bestbright.onlie_course.model.Level_material;

import com.bestbright.onlie_course.repository.LevelMaterialRepository;
import com.bestbright.onlie_course.repository.LevelRepository;

import com.bestbright.onlie_course.service.Level_materialService;
@Controller
public class LevelmaterialController {
	@Autowired
	private LevelRepository levelRepository;
	@Autowired
	private LevelMaterialRepository levelMaterialRepository;
	@Autowired
	private Level_materialService level_materialservice;
	
	@GetMapping("/create_levelmaterial")
	public String createLevelMaterial(Model model) {
		model.addAttribute("levelM", new Level_materialDTO());
		model.addAttribute("levelList",levelRepository.findAll());
		return "add_levelmaterial";
	}
	@PostMapping("/save_levelmaterial")
	public String saveLevelmaterial(@ModelAttribute("levelM")Level_materialDTO level_materialdto,Model model) throws Exception {
		
		level_materialservice.saveLevelmaterial(level_materialdto);
		
		model.addAttribute("levelmaterialList",levelMaterialRepository.findAll());
		
		return "level_list";
	}
	
	
	@RequestMapping("/levelM/{level_id}")
	public String showLevelmaterialByLevel(Model model, @PathVariable("level_id") Long id) {
		//model.addAttribute("levels",levelRepository.findAll());
		List<Level_material> levelMaterial =level_materialservice.getLevelmaterialByLevel(id); 
		model.addAttribute("levelmaterialList", levelMaterial);
		model.addAttribute("level_id", id);
		return "showLevel_Material";
	}

	@RequestMapping("/show/{type}")
	public String showLMByType(Model model, @PathVariable("type") String type) {
		if(type.equals("video")) {
		model.addAttribute("levelmaterial", level_materialservice.getLevelMaterialByType(type));
		model.addAttribute("level_id", type);
		return "vedio";
		}else if(type.equals("pdf")) {
		model.addAttribute("levelmaterial", level_materialservice.getLevelMaterialByType(type));
		model.addAttribute("level_id", type);
		return "pdf";
		}else {
			return "/";
		}
		
}
	
}

	

