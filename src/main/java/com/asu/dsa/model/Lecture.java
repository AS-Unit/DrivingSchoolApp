package com.asu.dsa.model;

import com.asu.dsa.model.enums.LectureType;
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
public class Lecture {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long id;
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private LocalDate lectureDay;
    @DateTimeFormat(pattern = "HH:mm")
    private LocalTime lectureBegin;
    @DateTimeFormat(pattern = "HH:mm")
    private LocalTime lectureEnd;
    private String agenda;
    private LectureType lectureType;

    @ManyToOne
    private Employee employee;
    @ManyToOne
    private Course course;

    // students list
    // attendance list
    // classroom name



}
