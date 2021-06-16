package com.asu.dsa.model;

import com.asu.dsa.model.enums.CourseType;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.springframework.format.annotation.DateTimeFormat;

import javax.persistence.*;
import java.time.LocalDate;
import java.time.LocalTime;
import java.util.List;

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
    private String category;
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private LocalDate startCourseDate;
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private LocalDate finishCourseDate;
    private String guardian;
    private String place;
    private int maxCountOfStudents;
    private String courseDescription;

    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private LocalDate dateCreateCourse;
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private LocalDate dateModifyCourse;

    @OneToMany(mappedBy = "course")
    private List<Lecture> lectures;
    @OneToMany(mappedBy = "course")
    private List<Driving> drivingList;
}
