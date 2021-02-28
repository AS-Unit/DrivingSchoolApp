package com.asu.dsa.controller;

import com.asu.dsa.model.Student;
import com.asu.dsa.service.StudentService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.view.RedirectView;

import java.util.List;

@Controller
@RequestMapping("/students")
public class StudentController {

    private final StudentService studentService;

    public StudentController(StudentService studentService) {
        this.studentService = studentService;
    }

    // get all students list
    @GetMapping
    public String getAllStudents(Model model) {
        List<Student> list = studentService.getAllStudent();
        model.addAttribute("student", list);
        return "views/student/students";
    }

    // get student by id for edit
    @GetMapping("editStudent/{id}")
    public String getStudentById(@PathVariable("id") Long id, Model model) {
        Student student = studentService.getStudentById(id);
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
        studentService.addStudent(student);
        return new RedirectView("/students");
    }

    // get view for edit existed student
/*    @GetMapping("/editStudent/{id}")
    public String getViewForEditStudent() {
        return "view/students/editStudent";
    }*/

    // save edited student
    @PostMapping("/editStudent/{id}")
    public RedirectView saveEditedStudent(@ModelAttribute Student student) {
        studentService.updateStudent(student);
        return new RedirectView("/students");
    }

    // remove existed student
    @DeleteMapping("/{id}")
    public Student deleteStudent(@PathVariable Long id) {
        return studentService.deleteStudent(id);
    }


}
