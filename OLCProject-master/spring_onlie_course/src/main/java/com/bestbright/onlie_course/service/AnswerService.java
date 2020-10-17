package com.bestbright.onlie_course.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bestbright.onlie_course.dto.AnswerDTO;

import com.bestbright.onlie_course.model.Answer;

import com.bestbright.onlie_course.repository.AnswerRepository;
@Service
public class AnswerService implements AnswerInterface{

	@Autowired
	private AnswerRepository answerRepository;
	@Override
	public void saveAnswer(AnswerDTO answerdto) {
		// TODO Auto-generated method stub
		answerRepository.save(convertanswer(answerdto));
	}

	Answer convertanswer(AnswerDTO  answerdto) {
		Answer ans=new Answer();
		ans.setAnswer_name(answerdto.getAnswer_name());
		
		return ans;
	}

}
