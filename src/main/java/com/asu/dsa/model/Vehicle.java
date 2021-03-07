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
public class Vehicle {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long id;
    private String brand;
    private String model;
    private String registrationNo;
    private String registrationDate;
    private String fuelAndEngine;
    private Long vin;
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private LocalDate validityOfTechnicalReview;
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private LocalDate validityOfInsurance;
    private Long mileage;
    private String status;
    private String driver;

    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private LocalDate dateCreate;
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private LocalDate dateModify;


}
