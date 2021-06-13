package com.asu.dsa.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.springframework.format.annotation.DateTimeFormat;

import javax.persistence.*;
import java.time.LocalDate;
import java.util.List;

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
    private LocalDate dateCreateVehicle;
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private LocalDate dateModifyVehicle;

    @OneToMany(mappedBy = "vehicle")
    private List<Driving> drivingList;
}
