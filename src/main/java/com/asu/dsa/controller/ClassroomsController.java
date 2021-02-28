package com.asu.dsa.controller;

import com.asu.dsa.model.Classroom;
import com.asu.dsa.service.ClassroomsService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.view.RedirectView;

import java.util.List;

@Controller
@RequestMapping("/classrooms")
public class ClassroomsController {

    private final ClassroomsService classroomsService;

    public ClassroomsController(ClassroomsService classroomsService) {
        this.classroomsService = classroomsService;
    }

    @GetMapping
    public String getAllClassrooms(Model model) {
        List<Classroom> list = classroomsService.getAllClassrooms();
        model.addAttribute("classroom", list);
        return "views/classroom/classrooms";
    }

    @GetMapping("addNewClassroom")
    public String viewNewClassroom() {
        return "views/classroom/addNewClassroom";
    }

    @PostMapping("/addNewClassroom")
    public RedirectView addClassroom(@ModelAttribute Classroom classroom) {
        classroomsService.addClassroom(classroom);
        return new RedirectView("/classrooms");
    }

    @GetMapping("editClassroom/{id}")
    public String getClassroomById(@PathVariable("id") Long id, Model model) {
        Classroom classroom = classroomsService.getClassroomById(id);
        model.addAttribute("classroom", classroom);
        return "views/classroom/editClassroom";
    }

    @PostMapping("/editClassroom/{id}")
    public RedirectView updateClassroom(@ModelAttribute Classroom classroom) {
        classroomsService.updateClassroom(classroom);
        return new RedirectView("/classrooms");
    }

    @DeleteMapping("/{id}")
    public Classroom removeClassroom(@PathVariable Long id) {
        return classroomsService.removeClassroom(id);
    }
}
