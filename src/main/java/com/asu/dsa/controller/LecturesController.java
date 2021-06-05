package com.asu.dsa.controller;

import com.asu.dsa.model.Classroom;
import com.asu.dsa.model.Course;
import com.asu.dsa.model.Employee;
import com.asu.dsa.model.Lecture;
import com.asu.dsa.service.ClassroomsService;
import com.asu.dsa.service.CoursesService;
import com.asu.dsa.service.EmployeesService;
import com.asu.dsa.service.LecturesService;
import lombok.AllArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.view.RedirectView;

import java.util.List;

@AllArgsConstructor
@Controller
@RequestMapping("/lectures")
public class LecturesController {
    private final LecturesService lecturesService;
    private final CoursesService coursesService;
    private final ClassroomsService classroomsService;
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
        List<Classroom> listClassroom = classroomsService.getAllClassrooms();
        model.addAttribute("classroomList", listClassroom);
        List<Employee> listLecturerEmployees = employeesService.getAllEmployee();
        model.addAttribute("lecturerEmployee", listLecturerEmployees);
        List<Employee> instructorsList = employeesService.getAllEmployee();
        model.addAttribute("instructorsList", listLecturerEmployees);
        List<Employee> firstAidLecturerList = employeesService.getAllEmployee();
        model.addAttribute("firstAidLecturerList", listLecturerEmployees);
        List<Course> courseList = coursesService.getAllCourses();
        model.addAttribute("courseList",courseList);
        List<Lecture.LectureType> lectureTypesList = lecturesService.getAllLecturesTypes();
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
