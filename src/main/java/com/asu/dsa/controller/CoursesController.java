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

    // get view for edit course by id
    @GetMapping("editCourse/{id}")
    public String getCourseById(@PathVariable("id") Long id, Model model) {
        Course course = coursesService.getCourseById(id);
        model.addAttribute("course", course);
        List<Course.CourseType> courseTypeList = coursesService.getAllCoursesTypes();
        model.addAttribute("courseTypeList",courseTypeList);
        return "views/course/editCourse";
    }

    // get view for add new course
    @GetMapping("addNewCourse")
    public String getViewForNewCourse(Model model) {
        List<Course.CourseType> courseTypeList = coursesService.getAllCoursesTypes();
        model.addAttribute("courseTypeList",courseTypeList);
        return "views/course/addNewCourse";
    }

    // save new course
    @PostMapping("/addNewCourse")
    public RedirectView addNewCourse(@ModelAttribute Course course) {
        coursesService.addCourse(course);
        return new RedirectView("/courses");
    }

    // save edited course
    @PostMapping("editCourse/{id}")
    public RedirectView updateCourse(@ModelAttribute Course course) {
        coursesService.updateCourse(course);
        return new RedirectView("/courses");
    }

    // delete existed course
    @GetMapping("delete/{id}")
    public RedirectView removeCourse(@PathVariable Long id) {
        coursesService.removeCourse(id);
        return new RedirectView("/courses");
    }
}
