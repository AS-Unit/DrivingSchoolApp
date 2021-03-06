package com.asu.dsa.controller;

import com.asu.dsa.model.Place;
import com.asu.dsa.model.Course;
import com.asu.dsa.model.Employee;
import com.asu.dsa.model.Lecture;
import com.asu.dsa.model.enums.LectureType;
import com.asu.dsa.service.PlacesService;
import com.asu.dsa.service.CoursesService;
import com.asu.dsa.service.EmployeesService;
import com.asu.dsa.service.LecturesService;
import lombok.AllArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.view.RedirectView;

import java.util.Arrays;
import java.util.List;

@AllArgsConstructor
@Controller
@RequestMapping("/lectures")
public class LecturesController {
    private final LecturesService lecturesService;
    private final CoursesService coursesService;
    private final PlacesService placesService;
    private final EmployeesService employeesService;

    // get all lectures list
    @GetMapping
    public String getAllLectures(Model model) {
        List<Lecture> list = lecturesService.getAllLectures();
        model.addAttribute("lecture", list);
        return "views/lecture/lectures";
    }
    // get all lectures list by course
/*    @GetMapping
    public String getAllLecturesByCourse(Course course, Model model) {
        List<Lecture> list = lecturesService.getAllLecturesByCourse(course);
        model.addAttribute("lectureByCourse", list);
        return "views/lecture/lectures"; //fixme address
    }*/

    // get all lectures list by lector

    // get view for adding new lecture
    @GetMapping("addNewLecture")
    public String viewNewLecture(Model model) {
        List<Place> listPlace = placesService.getAllPlaces();
        model.addAttribute("classroomList", listPlace);
        List<Employee> listLecturerEmployees = employeesService.getAllLecturerEmployees("true");
        model.addAttribute("lecturerEmployee", listLecturerEmployees);
        List<Employee> instructorsList = employeesService.getAllInstructors("true");
        model.addAttribute("instructorsList", instructorsList);
        List<Employee> firstAidLecturerList = employeesService.getAllParamedicEmployees("true");
        model.addAttribute("firstAidLecturerList", firstAidLecturerList);
        List<Course> courseList = coursesService.getAllCourses();
        model.addAttribute("courseList",courseList);
        List<LectureType> lectureTypesList = Arrays.asList(LectureType.values());
        model.addAttribute("lecturesTypesList", lectureTypesList);
        return "views/lecture/addNewLecture";

    // get view for edition lecture
/*    @GetMapping("editLecture/{id}")
    public String getLectureById (@PathVariable("id") Long id, Model model) {
        Lecture lecture = lecturesService.getLectureById(id);
        model.addAttribute("lecture", lecture);
        return "views/lecture/editLecture";*/
    }

    // save new lecture
    @PostMapping("/addNewLecture")
    public RedirectView addLecture(@ModelAttribute Lecture lecture) {
        lecturesService.addLecture(lecture);
        return new RedirectView("/lectures");
    }

    // save edited lecture
    @PostMapping("/editLecture/{id}")
    public RedirectView updateLecture(@ModelAttribute Lecture lecture) {
        lecturesService.updateLecture(lecture);
        return new RedirectView("/lectures");
    }

    // remove existed lecture
    @GetMapping("deleteLecture/{id}")
    public RedirectView removeLecture(@PathVariable Long id) {
        lecturesService.deleteLecture(id);
        return new RedirectView("/lectures");
    }
}
