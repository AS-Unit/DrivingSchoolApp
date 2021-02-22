package com.asu.dsa.model;

import org.springframework.format.annotation.DateTimeFormat;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import java.time.LocalDate;


@Entity
public class Classroom {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long id;

    private String name;
    private String trainingPlace;
    private String status;
    private int maxCountOfStudents;
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private LocalDate dateCreateClassroom;
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private LocalDate dateEditClassroom;

    public Classroom() {
    }

    public Classroom(Long id, String name, String trainingPlace, String status, int maxCountOfStudents, LocalDate dateCreateClassroom, LocalDate dateEditClassroom) {
        this.id = id;
        this.name = name;
        this.trainingPlace = trainingPlace;
        this.status = status;
        this.maxCountOfStudents = maxCountOfStudents;
        this.dateCreateClassroom = dateCreateClassroom;
        this.dateEditClassroom = dateEditClassroom;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getTrainingPlace() {
        return trainingPlace;
    }

    public void setTrainingPlace(String trainingPlace) {
        this.trainingPlace = trainingPlace;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public int getMaxCountOfStudents() {
        return maxCountOfStudents;
    }

    public void setMaxCountOfStudents(int maxCountOfStudents) {
        this.maxCountOfStudents = maxCountOfStudents;
    }

    public LocalDate getDateCreateClassroom() {
        return dateCreateClassroom;
    }

    public void setDateCreateClassroom(LocalDate dateCreateClassroom) {
        this.dateCreateClassroom = dateCreateClassroom;
    }

    public LocalDate getDateEditClassroom() {
        return dateEditClassroom;
    }

    public void setDateEditClassroom(LocalDate dateEditClassroom) {
        this.dateEditClassroom = dateEditClassroom;
    }
}

