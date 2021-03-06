package com.asu.dsa.controller;

import com.asu.dsa.model.Student;
import com.asu.dsa.service.StudentsService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.view.RedirectView;

import java.util.List;

@Controller
@RequestMapping("/students")
public class StudentsController {

    private final StudentsService studentsService;

    public StudentsController(StudentsService studentsService) {
        this.studentsService = studentsService;
    }

    // get all students list
    @GetMapping
    public String getAllStudents(Model model) {
        List<Student> list = studentsService.getAllStudent();
        model.addAttribute("student", list);
        return "views/student/students";
    }

    // get student by id for edit
    @GetMapping("editStudent/{id}")
    public String getStudentById(@PathVariable("id") Long id, Model model) {
        Student student = studentsService.getStudentById(id);
        model.addAttribute("student", student);
        return "views/student/editStudent";
    }

    // get view for add new student
    @GetMapping("/addNewStudent")
    public String getViewForNewStudent() {
        return "views/student/addNewStudent";
    }

    // save the new student
    @PostMapping("/addNewStudent")
    public RedirectView addNewStudent(@ModelAttribute Student student) {
        studentsService.addStudent(student);
        return new RedirectView("/students");
    }

    // save edited student
    @PostMapping("/editStudent/{id}")
    public RedirectView saveEditedStudent(@ModelAttribute Student student) {
        studentsService.updateStudent(student);
        return new RedirectView("/students");
    }

    // remove existed student
    @GetMapping("delete/{id}")
    public RedirectView deleteStudent(@PathVariable Long id) {
        studentsService.deleteStudent(id);
        return new RedirectView("/students/");
    }

}
