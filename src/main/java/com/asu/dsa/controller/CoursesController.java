package com.asu.dsa.controller;

import com.asu.dsa.model.Course;
import com.asu.dsa.service.CoursesService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.view.RedirectView;

import java.util.List;

@Controller
@RequestMapping("/courses")
public class CoursesController {

    private final CoursesService coursesService;

    public CoursesController(CoursesService coursesService) {
        this.coursesService = coursesService;
    }

    // get all courses list
    @GetMapping
    public String getAllCourse(Model model) {
        List<Course> list = coursesService.getAllCourses();
        model.addAttribute("course", list);
        return "views/course/courses";
    }

    // get course by id for edit
    @GetMapping("courses/{id}")
    public String getCourseById(@PathVariable("id") Long id, Model model) {
        Course course = coursesService.getCourseById(id);
        model.addAttribute("course", course);
        return "views/course/editCourse";
    }

    // get view for add new course
    @GetMapping("addNewCourse")
    public String getViewForNewCorse() {
        return "views/course/addNewCourse";
    }

    // save new course
    @PostMapping("/addNewCourse")
    public RedirectView addNewCourse(@ModelAttribute Course course) {
        coursesService.addCourse(course);
        return new RedirectView("/courses");
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
