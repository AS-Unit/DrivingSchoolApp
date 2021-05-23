package com.asu.dsa.repository;

import com.asu.dsa.model.Course;
import com.asu.dsa.model.Lecture;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface LecturesRepository extends JpaRepository<Lecture, Long> {

    //List<Lecture> findAllByCourse (Course course);
}
