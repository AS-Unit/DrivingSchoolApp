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
    @DateTimeFormat(pattern = "hh:mm")
    private LocalTime lectureBegin;
    @DateTimeFormat(pattern = "hh:mm")
    private LocalTime lectureEnd;
    private String agenda;
    private LectureType lectureType;
    public enum LectureType {
        TEORIA, PRAKTYKA, PIERWSZA_POMOC
    }

    // students list
    // attendance list
    // lecturer name
    // classroom name
    // course id


}
