package com.bestbright.onlie_course.dto;

import java.io.Serializable;

import com.bestbright.onlie_course.model.Level_material;

public class QuestionDTO implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private Long question_id;
	private String question_name;
	private Level_material level_material;
	
	public QuestionDTO() {}
	
	public Long getQuestion_id() {
		return question_id;
	}
	public void setQuestion_id(Long question_id) {
		this.question_id = question_id;
	}
	public String getQuestion_name() {
		return question_name;
	}
	public void setQuestion_name(String question_name) {
		this.question_name = question_name;
	}
	
	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	public Level_material getLevel_material() {
		return level_material;
	}

	public void setLevel_material(Level_material level_material) {
		this.level_material = level_material;
	}
}
