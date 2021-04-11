package com.asu.dsa.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.springframework.format.annotation.DateTimeFormat;

import javax.persistence.*;
import java.time.LocalDate;

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
    private Mode type;
    public enum Mode {
        WIECZOROWE, WEEKENDOWE, ONLINE, PIERWSZAPOMOC
    }
    private String category;

    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private LocalDate startCourseDate;
    private String lecturer;
    private String place;
    private int maxCountOfStudents;
    private String note;

    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private LocalDate dateCreateCourse;
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private LocalDate dateModifyCourse;

}
