package com.bestbright.onlie_course.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.bestbright.onlie_course.model.Question;

public interface QuestionRepository extends JpaRepository<Question, Long> {

}
