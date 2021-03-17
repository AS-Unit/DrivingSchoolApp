package com.asu.dsa.service;

import com.asu.dsa.model.Classroom;
import com.asu.dsa.model.Course;
import com.asu.dsa.repository.ClassroomsRepository;
import com.asu.dsa.repository.CoursesRepository;
import com.asu.dsa.service.exception.NoCourseFoundException;
import lombok.AllArgsConstructor;
import org.springframework.stereotype.Service;

import java.time.LocalDate;
import java.util.List;
import java.util.NoSuchElementException;
import java.util.Optional;

@AllArgsConstructor
@Service
public class CoursesService {
    private final CoursesRepository coursesRepository;
    private final ClassroomsRepository classroomsRepository;



    // get all course
    public List<Course> getAllCourses() {
        return coursesRepository.findAll();
    }

    // get course by id
    public Course getCourseById(Long id) {
        return coursesRepository.findById(id)
                .<NoSuchElementException>orElseThrow(() -> {
                    throw new NoCourseFoundException(id);
                });
    }

    // add course
    public Course addCourse(Course course) {
        course.setDateCreateCourse(LocalDate.now());
        switch (course.getType()){
            case "1": course.setType("wieczorowy");
            break;
            case "2": course.setType("weekendowy");
            break;
            case "3": course.setType("online");
            break;
            case "4": course.setType("szkolenie z pierwszej pomocy");
            break;
        }
        if (course.getPlace().equals("0")){
            course.setPlace("nie podano miejsca");
        }

       Optional<Classroom> classroom = classroomsRepository.findById(Long.parseLong(course.getPlace()));
        course.setPlace(classroom.get().getName());

        return coursesRepository.save(course);
    }

    // update course
    public Course updateCourse(Course course) {
        course.setDateModifyCourse(LocalDate.now());
        return coursesRepository.save(course);
    }

    // delete course
    public Course removeCourse(Long id) {
        Course course = coursesRepository.findById(id)
                .<NoSuchElementException>orElseThrow(() -> {
                    throw new NoCourseFoundException(id);
                });
        coursesRepository.delete(course);
        return course;
    }

}
