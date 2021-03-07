package com.asu.dsa.service;

import com.asu.dsa.model.Course;
import com.asu.dsa.repository.CoursesRepository;
import com.asu.dsa.service.exception.NoCourseFoundException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.time.LocalDate;
import java.util.List;
import java.util.NoSuchElementException;

@Service
public class CoursesService {
    private final CoursesRepository coursesRepository;

    @Autowired

    public CoursesService(CoursesRepository coursesRepository) {
        this.coursesRepository = coursesRepository;
    }

    // get all course
    public List<Course> getAllCourses() {
        return coursesRepository.findAll();
    }

    // get course by id
    public Course getCourseById(Long id) {
        return coursesRepository.findById(id)
                .orElseThrow(() -> {
                    throw new <NoSuchElementException>NoCourseFoundException(id);
                });
    }

    // add course
    public Course addCourse(Course course) {
        course.setDateCreate(LocalDate.now());
        return coursesRepository.save(course);
    }

    // update course
    public Course updateCourse(Course course) {
        //course.setDateModify(LocalDate.now());
        return coursesRepository.save(course);
    }

    // delete course
    public Course removeCourse(Long id) {
        Course course = coursesRepository.findById(id)
                .orElseThrow(() -> {
                    throw new <NoSuchElementException>NoCourseFoundException(id);
                });
        coursesRepository.delete(course);
        return course;
    }

}
