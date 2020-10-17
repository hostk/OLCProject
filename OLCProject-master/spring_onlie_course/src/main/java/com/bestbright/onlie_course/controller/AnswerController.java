package com.bestbright.onlie_course.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import com.bestbright.onlie_course.dto.AnswerDTO;
import com.bestbright.onlie_course.dto.QuestionDTO;
import com.bestbright.onlie_course.repository.AnswerRepository;
import com.bestbright.onlie_course.repository.QuestionRepository;
import com.bestbright.onlie_course.service.AnswerService;


@Controller
public class AnswerController {

	
	@Autowired
	private AnswerRepository answerRepository;
	@Autowired
	private QuestionRepository questionRepository;
	
	@Autowired
	private AnswerService answerService;
	
	@GetMapping("/create_answer")
	public String createanswer(Model model) {
		model.addAttribute("answer", new AnswerDTO());
		model.addAttribute("questionlist",questionRepository.findAll());
		return "create_answer";
	}
	@PostMapping("/save_answer")
	public String saveanswer(@ModelAttribute("answer")AnswerDTO dto,Model model) throws Exception {
		if(dto!=null) {
			
			System.out.println(dto.getQuestion_id());
			System.out.println(dto.getAnswer_name());
			answerService.saveAnswer(dto);
		
		model.addAttribute("answerList",answerRepository.findAll());
		return "answerList";
		}else {
			return "redirect:/create_answer" ;
		}
	}
}
