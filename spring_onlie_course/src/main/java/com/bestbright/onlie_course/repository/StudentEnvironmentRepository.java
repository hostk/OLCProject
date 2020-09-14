package com.bestbright.onlie_course.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.bestbright.onlie_course.model.Student_enrolment;

public interface StudentEnvironmentRepository extends JpaRepository<Student_enrolment, Long> {

}
