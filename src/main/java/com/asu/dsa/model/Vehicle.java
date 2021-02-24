package com.asu.dsa.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

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
    private LocalDate registrationYear;
    private String fuelAndEngine;
    private Long vin;
    private LocalDate validityOfTechnicalReview;
    private LocalDate validityOfInsurance;
    private int mileage;

    private enum Status {
        ACTIVE, SERVICE, ENABLE
    }


}
