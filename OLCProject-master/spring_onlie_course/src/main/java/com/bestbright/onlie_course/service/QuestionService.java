package com.bestbright.onlie_course.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bestbright.onlie_course.dto.LevelDTO;
import com.bestbright.onlie_course.dto.QuestionDTO;
import com.bestbright.onlie_course.model.Level;
import com.bestbright.onlie_course.model.Question;
import com.bestbright.onlie_course.repository.QuestionRepository;

@Service
public class QuestionService implements  QuestionInterface{
@Autowired
private QuestionRepository questionRepository;

	
	@Override
	public void saveQuestion(QuestionDTO questiondto) {
		// TODO Auto-generated method stub
		questionRepository.save(convertquestion(questiondto));
	}
	Question convertquestion(QuestionDTO  questiondto) {
		Question que=new Question();
	
		que.setQuestion_name(questiondto.getQuestion_name());
		return que;
	}
}
