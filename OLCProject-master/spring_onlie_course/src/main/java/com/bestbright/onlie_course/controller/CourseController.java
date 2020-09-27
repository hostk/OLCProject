package com.bestbright.onlie_course.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import com.bestbright.onlie_course.dto.CourseDTO;
import com.bestbright.onlie_course.model.Course;
import com.bestbright.onlie_course.repository.CourseRepository;
import com.bestbright.onlie_course.service.CourseService;



@Controller
public class CourseController {
	
	@Autowired
	private CourseRepository courseRepository;
	@Autowired
	private CourseService courseService;
	
	@GetMapping("/create_course")
	public String createCourse(Model model) {
		model.addAttribute("course", new CourseDTO());
		return "add_course";
	}
	
	@PostMapping("/save_course")
	public String saveCourse(@ModelAttribute("course")CourseDTO coursedto,Model model) throws Exception {
		
		courseService.saveCourse(coursedto);
		
		model.addAttribute("courseList",courseRepository.findAll());
		return "course_list";
	}

}
