package com.asu.dsa.repository;

import com.asu.dsa.model.Course;
import org.springframework.data.jpa.repository.JpaRepository;

public interface CoursesRepository extends JpaRepository <Course, Long> {
}
