package com.asu.dsa.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import java.time.LocalDate;


@Entity
public class Student {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long id;
    private String firstName;
    private String lastName;
    private Integer noIndex;
    private String city;
    private String phone;
    private String mail;

    private LocalDate dateCreateStudent;
    private LocalDate dateModifyStudent;

    public Student() {
    }

    public Student(Long id, String firstName, String lastName, Integer noIndex, String city, String phone, String mail, LocalDate dateCreateStudent, LocalDate dateModifyStudent) {
        this.id = id;
        this.firstName = firstName;
        this.lastName = lastName;
        this.noIndex = noIndex;
        this.city = city;
        this.phone = phone;
        this.mail = mail;
        this.dateCreateStudent = dateCreateStudent;
        this.dateModifyStudent = dateModifyStudent;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    public Integer getNoIndex() {
        return noIndex;
    }

    public void setNoIndex(Integer noIndex) {
        this.noIndex = noIndex;
    }

    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getMail() {
        return mail;
    }

    public void setMail(String mail) {
        this.mail = mail;
    }

    public LocalDate getDateCreateStudent() {
        return dateCreateStudent;
    }

    public void setDateCreateStudent(LocalDate dateCreateStudent) {
        this.dateCreateStudent = dateCreateStudent;
    }

    public LocalDate getDateModifyStudent() {
        return dateModifyStudent;
    }

    public void setDateModifyStudent(LocalDate dateModifyStudent) {
        this.dateModifyStudent = dateModifyStudent;
    }
}
