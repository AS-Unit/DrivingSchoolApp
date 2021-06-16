package com.asu.dsa.controller;

import com.asu.dsa.model.Place;
import com.asu.dsa.model.Course;
import com.asu.dsa.model.Employee;
import com.asu.dsa.model.enums.CourseType;
import com.asu.dsa.service.PlacesService;
import com.asu.dsa.service.CoursesService;
import com.asu.dsa.service.EmployeesService;
import lombok.AllArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.view.RedirectView;

import java.util.Arrays;
import java.util.List;
@AllArgsConstructor
@Controller
@RequestMapping("/courses")
public class CoursesController {

    private final CoursesService coursesService;
    private final PlacesService placesService;
    private final EmployeesService employeesService;
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
        List<CourseType> courseTypeList = Arrays.asList(CourseType.values());
        model.addAttribute("courseTypeList",courseTypeList);
        return "views/course/editCourse";
    }

    // get view for add new course
    @GetMapping("addNewCourse")
    public String getViewForNewCorse(Model model) {
        List<Place> listPlace = placesService.getAllPlacesByStatus("aktywna");
        model.addAttribute("activeClassroom", listPlace);
        List<Employee> employeeList = employeesService.getAllEmployee();
        model.addAttribute("employeeList",employeeList);
        List<Employee> listLecturerEmployees = employeesService.getAllLecturerEmployees("true");
        model.addAttribute("lecturerEmployee", listLecturerEmployees);
        List<Employee> listParamedicEmployee = employeesService.getAllParamedicEmployees("true");
        model.addAttribute("paramedicEmployee", listParamedicEmployee);
        List<CourseType> courseTypeList = Arrays.asList(CourseType.values());
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
