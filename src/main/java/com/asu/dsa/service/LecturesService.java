package com.asu.dsa.service;

import com.asu.dsa.model.Course;
import com.asu.dsa.model.Lecture;
import com.asu.dsa.repository.ClassroomsRepository;
import com.asu.dsa.repository.CoursesRepository;
import com.asu.dsa.repository.LecturesRepository;
import com.asu.dsa.service.exception.NoLectureFoundException;
import lombok.AllArgsConstructor;
import org.springframework.boot.autoconfigure.data.redis.LettuceClientConfigurationBuilderCustomizer;
import org.springframework.stereotype.Service;

import java.util.Arrays;
import java.util.List;

@AllArgsConstructor
@Service
public class LecturesService {
    private final LecturesRepository lecturesRepository;
    private final CoursesRepository coursesRepository;
    private final ClassroomsRepository classroomsRepository;

    // get all lectures
    public List<Lecture> getAllLectures() {
        return lecturesRepository.findAll();
    }

    // get lecture by id
    public Lecture getLectureById(Long id) {
        return lecturesRepository.findById(id)
                .<NoLectureFoundException>orElseThrow(() -> {
                    throw new NoLectureFoundException(id);
                });
    }

    // list of all lectures types
    public List<Lecture.LectureType> getAllLecturesTypes() {
        List<Lecture.LectureType> lectureTypes = Arrays.asList(Lecture.LectureType.values());
        return lectureTypes;
    }

/*    // get lectures by course
    public List<Lecture> getAllLecturesByCourse(Course course) {
        return lecturesRepository.findAllByCourse(course);
    }*/

    // get lectures by classroom todo

    // get lectures by lecturer todo

    // add lecture
    public Lecture addLecture(Lecture lecture) {
        return lecturesRepository.save(lecture);
    }

    // update lecture
    public Lecture updateLecture(Lecture newLecture) {
        return lecturesRepository.save(newLecture);
    }

    // delete lecture
    public void deleteLecture(Long id) {
        Lecture lecture = lecturesRepository.findById(id)
                .<NoLectureFoundException>orElseThrow(() -> {
                    throw new NoLectureFoundException(id);
                });
        lecturesRepository.delete(lecture);
    }


}
