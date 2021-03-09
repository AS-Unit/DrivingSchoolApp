package com.asu.dsa.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.springframework.format.annotation.DateTimeFormat;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import java.time.LocalDate;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Entity
public class Course {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long id;
    private String type;
    private String category;

    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private LocalDate startCourseDate;
    private String lecturer;
    private String place;
    private int maxCountOfStudents;
    private String note;

    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private LocalDate dateCreate;
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private LocalDate dateModify;

}
