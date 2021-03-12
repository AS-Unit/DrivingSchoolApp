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
public class Employee {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long id;
    private String firstName;
    private String lastName;
    private String city;
    private String phone;
    private String mail;

    private String isLecturer;
    private String isInstructor;
    private String isParamedic;

    private String isLecturerA;
    private String isLecturerA1;
    private String isLecturerA2;
    private String isLecturerAm;
    private String isLecturerB;
    private String isLecturerB1;
    private String isLecturerBe;
    private String isLecturerC;
    private String isLecturerC1;
    private String isLecturerCe;
    private String isLecturerC1e;
    private String isLecturerD;
    private String isLecturerD1;
    private String isLecturerDe;
    private String isLecturerD1e;
    private String isLecturerT;

    private String noPermission;
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private LocalDate permissionExpirationDate;

    private String noDrivingLicense;
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private LocalDate drivingLicenseExpirationDate;
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private LocalDate dateCreateEmployee;
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private LocalDate dateModifyEmployee;

}

