package com.asu.dsa.model;

import org.springframework.format.annotation.DateTimeFormat;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import java.time.LocalDate;

@Entity
public class Course {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long id;
    private String type;
    private String category;

    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private LocalDate dateStartCourse;
    private String lecturer;
    private String place;
    private int maxCountOfStudents;
    private String note;

    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private LocalDate dateCreate;
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private LocalDate dateModify;

    public Course() {
    }

    public Course(Long id, String type, String category, LocalDate dateStartCourse, String lecturer, String place, int maxCountOfStudents, String note, LocalDate dateCreate, LocalDate dateModify) {
        this.id = id;
        this.type = type;
        this.category = category;
        this.dateStartCourse = dateStartCourse;
        this.lecturer = lecturer;
        this.place = place;
        this.maxCountOfStudents = maxCountOfStudents;
        this.note = note;
        this.dateCreate = dateCreate;
        this.dateModify = dateModify;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public String getCategory() {
        return category;
    }

    public void setCategory(String category) {
        this.category = category;
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

    public String getPlace() {
        return place;
    }

    public void setPlace(String place) {
        this.place = place;
    }

    public int getMaxCountOfStudents() {
        return maxCountOfStudents;
    }

    public void setMaxCountOfStudents(int maxCountOfStudents) {
        this.maxCountOfStudents = maxCountOfStudents;
    }

    public String getNote() {
        return note;
    }

    public void setNote(String note) {
        this.note = note;
    }

    public LocalDate getDateCreate() {
        return dateCreate;
    }

    public void setDateCreate(LocalDate dateCreate) {
        this.dateCreate = dateCreate;
    }

    public LocalDate getDateModify() {
        return dateModify;
    }

    public void setDateModify(LocalDate dateModify) {
        this.dateModify = dateModify;
    }
}
