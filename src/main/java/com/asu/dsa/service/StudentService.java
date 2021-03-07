package com.asu.dsa.service;

import com.asu.dsa.model.Student;
import com.asu.dsa.repository.StudentRepository;
import com.asu.dsa.service.exception.NoStudentFoundException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.time.LocalDate;
import java.util.List;
import java.util.NoSuchElementException;

@Service
public class StudentService {

    private final StudentRepository studentRepository;

    @Autowired
    public StudentService(StudentRepository studentRepository) {
        this.studentRepository = studentRepository;
    }

    // get all students
    public List<Student> getAllStudent() {
        return studentRepository.findAll();
    }

    // get student by id
    public Student getStudentById(Long id) {
        return studentRepository.findById(id)
                .orElseThrow(() -> {
                    throw new <NoSuchElementException>NoStudentFoundException(id);
                });
    }

    // add student
    public Student addStudent(Student student) {
        student.setDateCreateStudent(LocalDate.now());
        return studentRepository.save(student);
    }

    // update student
    public Student updateStudent(Student student) {
        return studentRepository.save(student);
    }

    // delete student
    public Student deleteStudent(Long id) {
        Student studentToDelete = studentRepository.findById(id)
                .orElseThrow(() -> {
                    throw new <NoSuchElementException>NoStudentFoundException(id);
                });
        studentRepository.delete(studentToDelete);
        return studentToDelete;

    }

}
