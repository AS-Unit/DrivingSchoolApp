package com.asu.dsa.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.springframework.format.annotation.DateTimeFormat;

import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import java.time.LocalDate;
import java.time.LocalTime;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class Lecture {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long id;
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private LocalDate lectureDay;
    @DateTimeFormat(pattern = "kk-mm")
    private LocalTime lectureBegin;
    @DateTimeFormat(pattern = "kk-mm")
    private LocalTime lectureEnd;
    private String agenda;

    // students list
    // attendance list
    // lecturer name
    // classroom name
    // course id


}
