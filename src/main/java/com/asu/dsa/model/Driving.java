package com.asu.dsa.model;

import com.asu.dsa.model.enums.Category;
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
    private Category category;
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private LocalDate drivingDay;
    @DateTimeFormat(pattern = "HH:mm")
    private LocalTime drivingBeginTime;
    @DateTimeFormat(pattern = "HH:mm")
    private LocalTime drivingEndTime;

    @ManyToOne
    private Employee employee;
    @ManyToOne
    private Course course;
    @ManyToOne
    private Vehicle vehicle;
    @ManyToOne
    private Student student;
    @ManyToOne
    private Place place;


}
