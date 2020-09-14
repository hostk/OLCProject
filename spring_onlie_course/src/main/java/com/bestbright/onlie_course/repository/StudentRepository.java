package com.bestbright.onlie_course.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.bestbright.onlie_course.model.Student;

public interface StudentRepository extends JpaRepository<Student,Long>{

}
