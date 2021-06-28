package com.asu.dsa.model;

import com.asu.dsa.model.enums.LectureType;
//import com.sun.source.doctree.SerialDataTree;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.springframework.format.annotation.DateTimeFormat;

import javax.persistence.*;
import java.time.LocalDate;
import java.time.LocalTime;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

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
    @ManyToMany(mappedBy = "lectureSet", fetch = FetchType.EAGER)
    private Set<Student> studentSet = new HashSet<>();

    // students list
    // attendance list
    // classroom name



}
