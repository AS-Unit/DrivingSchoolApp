package com.asu.dsa.controller;

import com.asu.dsa.model.Course;
import com.asu.dsa.service.CoursesService;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/courses")
public class CoursesController {

    private final CoursesService coursesService;

    public CoursesController(CoursesService coursesService) {
        this.coursesService = coursesService;
    }

    @GetMapping
    public List<Course> getAllCourse() {
        return coursesService.getAllCourses();
    }

    @GetMapping("courses/{id}")
    public Course getCourseById(@PathVariable Long id) {
        return coursesService.getCourseById(id);
    }

    @PostMapping("/addCourse")
    public Course addCourse(@RequestBody Course course) {
        return coursesService.addCourse(course);
    }

    @PutMapping("editCourse/{id}")
    public Course updateCourse(@PathVariable Long id) {
        return coursesService.updateCourse(id);
    }

    @DeleteMapping("/{id}")
    public Course removeCourse(@PathVariable Long id) {
        return coursesService.removeCourse(id);
    }
}
