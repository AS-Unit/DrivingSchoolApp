package com.asu.dsa.model;

import org.springframework.format.annotation.DateTimeFormat;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import java.time.LocalDate;

@Entity
public class Course {
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    LocalDate dateCreateCourse;
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    LocalDate dateEditCourse;
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long id;
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private LocalDate dateStartCourse;
    private String lecturer;
    private String placeCourse;
    private int maxCountOfStudents;

    public Course() {
    }

    public Course(Long id, LocalDate dateStartCourse, String lecturer, String placeCourse, int maxCountOfStudents, LocalDate dateCreateCourse, LocalDate dateEditCourse) {
        this.id = id;
        this.dateStartCourse = dateStartCourse;
        this.lecturer = lecturer;
        this.placeCourse = placeCourse;
        this.maxCountOfStudents = maxCountOfStudents;
        this.dateCreateCourse = dateCreateCourse;
        this.dateEditCourse = dateEditCourse;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public LocalDate getDateStartCourse() {
        return dateStartCourse;
    }

    public void setDateStartCourse(LocalDate dateStartCourse) {
        this.dateStartCourse = dateStartCourse;
    }

    public String getLecturer() {
        return lecturer;
    }

    public void setLecturer(String lecturer) {
        this.lecturer = lecturer;
    }

    public String getPlaceCourse() {
        return placeCourse;
    }

    public void setPlaceCourse(String placeCourse) {
        this.placeCourse = placeCourse;
    }

    public int getMaxCountOfStudents() {
        return maxCountOfStudents;
    }

    public void setMaxCountOfStudents(int maxCountOfStudents) {
        this.maxCountOfStudents = maxCountOfStudents;
    }

    public LocalDate getDateCreateCourse() {
        return dateCreateCourse;
    }

    public void setDateCreateCourse(LocalDate dateCreateCourse) {
        this.dateCreateCourse = dateCreateCourse;
    }

    public LocalDate getDateEditCourse() {
        return dateEditCourse;
    }

    public void setDateEditCourse(LocalDate dateEditCourse) {
        this.dateEditCourse = dateEditCourse;
    }
}
