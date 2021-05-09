package com.asu.dsa.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.springframework.format.annotation.DateTimeFormat;

import javax.persistence.*;
import java.time.LocalDate;
import java.time.LocalTime;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Entity
public class Course {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long id;

    @Enumerated(EnumType.STRING)
    @Column(length = 16)
    private CourseType courseType;
    public enum CourseType {
        WIECZOROWE, WEEKENDOWE, ONLINE, PIERWSZAPOMOC
    }
    private String category;

    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private LocalDate startCourseDate;
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private LocalDate finishCourseDate;
    @DateTimeFormat(pattern = "kk-mm")
    private LocalTime startCourseTime;
    @DateTimeFormat(pattern = "kk-mm")
    private LocalTime finishCourseTime;
    private String lecturer;
    private String place;
    private int maxCountOfStudents;
    private String note;

    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private LocalDate dateCreateCourse;
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private LocalDate dateModifyCourse;

}
