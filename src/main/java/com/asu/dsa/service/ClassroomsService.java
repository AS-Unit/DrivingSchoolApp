package com.asu.dsa.service;

import com.asu.dsa.model.Classroom;
import com.asu.dsa.repository.ClassroomsRepository;
import com.asu.dsa.service.exception.NoClassroomFoundException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.time.LocalDate;
import java.util.List;
import java.util.NoSuchElementException;

@Service
public class ClassroomsService {
    private final ClassroomsRepository classroomsRepository;

    @Autowired

    public ClassroomsService(ClassroomsRepository classroomsRepository) {
        this.classroomsRepository = classroomsRepository;
    }

    // get all classroom
    public List<Classroom> getAllClassrooms() {
        return classroomsRepository.findAll();
    }

    //get classroom by id
    public Classroom getClassroomById(Long id) {
        return classroomsRepository.findById(id)
                .orElseThrow(() -> {
                    throw new <NoSuchElementException>NoClassroomFoundException(id);
                });
    }
    //add classroom

    public Classroom addClassroom(Classroom classroom) {
        classroom.setDateCreateClassroom(LocalDate.now());
        return classroomsRepository.save(classroom);
    }

    // edit classroom
    public Classroom updateClassroom(Classroom newClassroom) {
        newClassroom.setDateEditClassroom(LocalDate.now());
        return classroomsRepository.save(newClassroom);
    }

    // delete classroom
    public void removeClassroom(Long id) {
        Classroom classroom = classroomsRepository.findById(id)
                .orElseThrow(() -> {
                    throw new <NoSuchElementException>NoClassroomFoundException(id);
                });
        classroomsRepository.delete(classroom);
    }
}
