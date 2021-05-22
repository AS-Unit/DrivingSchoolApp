package com.asu.dsa.controller;

import com.asu.dsa.model.Course;
import com.asu.dsa.model.Lecture;
import com.asu.dsa.service.LecturesService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.view.RedirectView;

import java.util.List;

@Controller
@RequestMapping("/lectures")
public class LecturesController {
    private final LecturesService lecturesService;

    public LecturesController(LecturesService lecturesService) {
        this.lecturesService = lecturesService;
    }

    // get all lectures list
    @GetMapping
    public String getAllLectures(Model model) {
        List<Lecture> list = lecturesService.getAllLectures();
        model.addAttribute("lecture", list);
        return "view/lecture/lectures";
    }

    // get all lectures list by course
    @GetMapping
    public String getAllLecturesByCourse(Course course, Model model) {
        List<Lecture> list = lecturesService.getAllLecturesByCourse(course);
        model.addAttribute("lectureByCourse", list);
        return "views/lecture/course{idCourse}/lecturesByCourse"; //fixme address
    }

    // get all lectures list by lector

    // get view for adding new lecture
    @GetMapping("addNewLecture")
    public String viewNewLecture() {
        return "views/course/addNewLecture"; //fixme address
    }

    // get view for edition lecture
    @GetMapping("editLecture/{id}")
    public String getLectureById(@PathVariable("id") Long id, Model model) {
        Lecture lecture = lecturesService.getLectureById(id);
        model.addAttribute("lecture", lecture);
        return "views/course/lecture/editLecture";
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
