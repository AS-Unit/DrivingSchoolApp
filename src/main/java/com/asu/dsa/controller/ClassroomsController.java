package com.asu.dsa.controller;

import com.asu.dsa.model.Classroom;
import com.asu.dsa.service.ClassroomsService;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/classrooms")
public class ClassroomsController {

    private final ClassroomsService classroomsService;

    public ClassroomsController(ClassroomsService classroomsService) {
        this.classroomsService = classroomsService;
    }

    @GetMapping
    public List<Classroom> getAllClassrooms() {
        return classroomsService.getAllClassrooms();
    }

    @GetMapping("editClassroom/{id}")
    public Classroom getClassroomById(@PathVariable Long id) {
        return classroomsService.getClassroomById(id);
    }

    @PostMapping("/addClassroom")
    public Classroom addClassroom(@RequestBody Classroom classroom) {
        return classroomsService.addClassroom(classroom);
    }

    @PutMapping("/editClassroom/{id}")
    public Classroom updateClassroom(@PathVariable Long id) {
        return classroomsService.updateClassroom(id);
    }

    @DeleteMapping("/{id}")
    public Classroom removeClassroom(@PathVariable Long id) {
        return classroomsService.removeClassroom(id);
    }
}
