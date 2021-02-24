package com.asu.dsa.controller;

import com.asu.dsa.model.Student;
import com.asu.dsa.service.StudentService;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/students")
public class StudentController {

    private final StudentService studentService;

    public StudentController(StudentService studentService) {
        this.studentService = studentService;
    }

    // get all students list
    @GetMapping
    public List<Student> getAllStudents() {
        return studentService.getAllStudent();
    }

    // get student by id for edit
    @GetMapping("editStudent/{id}")
    public Student getStudentById(@PathVariable Long id) {
        return studentService.getStudentById(id);
    }

    // get view for add new student
    @GetMapping("/addNewStudent")
    public String getViewForNewStudent() {
        return "view/students/addNewStudent";
    }

    // save the new student
    @PostMapping("/addNewStudent")
    public Student addNewStudent(@RequestBody Student student) {
        return studentService.addStudent(student);
    }

    // get view for edit existed student
/*    @GetMapping("/editStudent/{id}")
    public String getViewForEditStudent() {
        return "view/students/editStudent";
    }*/

    // save edited student
    @PostMapping("/editStudent/{id}")
    public Student saveEditedStudent(@PathVariable Long id) {
        return studentService.updateStudent(id);
    }

    // remove existed student
    @DeleteMapping("/{id}")
    public Student deleteStudent(@PathVariable Long id) {
        return studentService.deleteStudent(id);
    }


}
