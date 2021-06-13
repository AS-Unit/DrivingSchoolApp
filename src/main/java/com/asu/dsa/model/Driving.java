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
public class Driving {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long id;
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private LocalDate drivingDay;
    @DateTimeFormat(pattern = "HH:mm")
    private LocalTime drivingBeginTime;
    @DateTimeFormat(pattern = "HH:mm")
    private LocalTime drivingEndTime;
    private String drivingBeginPlace;
    private String drivingEndPlace;

    @ManyToOne
    private Employee employee;

    @ManyToOne
    private Course course;

}
