package com.asu.dsa.model;

import org.springframework.format.annotation.DateTimeFormat;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import java.time.LocalDate;


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
    private LocalDate dateEditEmployee;

    public Employee() {
    }

    public Employee(Long id, String firstName, String lastName, String city, String phone, String mail, String isLecturer, String isInstructor, String isParamedic, String isLecturerA, String isLecturerA1, String isLecturerA2, String isLecturerAm, String isLecturerB, String isLecturerB1, String isLecturerBe, String isLecturerC, String isLecturerC1, String isLecturerCe, String isLecturerC1e, String isLecturerD, String isLecturerD1, String isLecturerDe, String isLecturerD1e, String isLecturerT, String noPermission, LocalDate permissionExpirationDate, String noDrivingLicense, LocalDate drivingLicenseExpirationDate, LocalDate dateCreateEmployee, LocalDate dateEditEmployee) {
        this.id = id;
        this.firstName = firstName;
        this.lastName = lastName;
        this.city = city;
        this.phone = phone;
        this.mail = mail;
        this.isLecturer = isLecturer;
        this.isInstructor = isInstructor;
        this.isParamedic = isParamedic;
        this.isLecturerA = isLecturerA;
        this.isLecturerA1 = isLecturerA1;
        this.isLecturerA2 = isLecturerA2;
        this.isLecturerAm = isLecturerAm;
        this.isLecturerB = isLecturerB;
        this.isLecturerB1 = isLecturerB1;
        this.isLecturerBe = isLecturerBe;
        this.isLecturerC = isLecturerC;
        this.isLecturerC1 = isLecturerC1;
        this.isLecturerCe = isLecturerCe;
        this.isLecturerC1e = isLecturerC1e;
        this.isLecturerD = isLecturerD;
        this.isLecturerD1 = isLecturerD1;
        this.isLecturerDe = isLecturerDe;
        this.isLecturerD1e = isLecturerD1e;
        this.isLecturerT = isLecturerT;
        this.noPermission = noPermission;
        this.permissionExpirationDate = permissionExpirationDate;
        this.noDrivingLicense = noDrivingLicense;
        this.drivingLicenseExpirationDate = drivingLicenseExpirationDate;
        this.dateCreateEmployee = dateCreateEmployee;
        this.dateEditEmployee = dateEditEmployee;
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

    public String getIsLecturer() {
        return isLecturer;
    }

    public void setIsLecturer(String isLecturer) {
        this.isLecturer = isLecturer;
    }

    public String getIsInstructor() {
        return isInstructor;
    }

    public void setIsInstructor(String isInstructor) {
        this.isInstructor = isInstructor;
    }

    public String getIsParamedic() {
        return isParamedic;
    }

    public void setIsParamedic(String isParamedic) {
        this.isParamedic = isParamedic;
    }

    public String getIsLecturerA() {
        return isLecturerA;
    }

    public void setIsLecturerA(String isLecturerA) {
        this.isLecturerA = isLecturerA;
    }

    public String getIsLecturerA1() {
        return isLecturerA1;
    }

    public void setIsLecturerA1(String isLecturerA1) {
        this.isLecturerA1 = isLecturerA1;
    }

    public String getIsLecturerA2() {
        return isLecturerA2;
    }

    public void setIsLecturerA2(String isLecturerA2) {
        this.isLecturerA2 = isLecturerA2;
    }

    public String getIsLecturerAm() {
        return isLecturerAm;
    }

    public void setIsLecturerAm(String isLecturerAm) {
        this.isLecturerAm = isLecturerAm;
    }

    public String getIsLecturerB() {
        return isLecturerB;
    }

    public void setIsLecturerB(String isLecturerB) {
        this.isLecturerB = isLecturerB;
    }

    public String getIsLecturerB1() {
        return isLecturerB1;
    }

    public void setIsLecturerB1(String isLecturerB1) {
        this.isLecturerB1 = isLecturerB1;
    }

    public String getIsLecturerBe() {
        return isLecturerBe;
    }

    public void setIsLecturerBe(String isLecturerBe) {
        this.isLecturerBe = isLecturerBe;
    }

    public String getIsLecturerC() {
        return isLecturerC;
    }

    public void setIsLecturerC(String isLecturerC) {
        this.isLecturerC = isLecturerC;
    }

    public String getIsLecturerC1() {
        return isLecturerC1;
    }

    public void setIsLecturerC1(String isLecturerC1) {
        this.isLecturerC1 = isLecturerC1;
    }

    public String getIsLecturerCe() {
        return isLecturerCe;
    }

    public void setIsLecturerCe(String isLecturerCe) {
        this.isLecturerCe = isLecturerCe;
    }

    public String getIsLecturerC1e() {
        return isLecturerC1e;
    }

    public void setIsLecturerC1e(String isLecturerC1e) {
        this.isLecturerC1e = isLecturerC1e;
    }

    public String getIsLecturerD() {
        return isLecturerD;
    }

    public void setIsLecturerD(String isLecturerD) {
        this.isLecturerD = isLecturerD;
    }

    public String getIsLecturerD1() {
        return isLecturerD1;
    }

    public void setIsLecturerD1(String isLecturerD1) {
        this.isLecturerD1 = isLecturerD1;
    }

    public String getIsLecturerDe() {
        return isLecturerDe;
    }

    public void setIsLecturerDe(String isLecturerDe) {
        this.isLecturerDe = isLecturerDe;
    }

    public String getIsLecturerD1e() {
        return isLecturerD1e;
    }

    public void setIsLecturerD1e(String isLecturerD1e) {
        this.isLecturerD1e = isLecturerD1e;
    }

    public String getIsLecturerT() {
        return isLecturerT;
    }

    public void setIsLecturerT(String isLecturerT) {
        this.isLecturerT = isLecturerT;
    }

    public String getNoPermission() {
        return noPermission;
    }

    public void setNoPermission(String noPermission) {
        this.noPermission = noPermission;
    }

    public LocalDate getPermissionExpirationDate() {
        return permissionExpirationDate;
    }

    public void setPermissionExpirationDate(LocalDate permissionExpirationDate) {
        this.permissionExpirationDate = permissionExpirationDate;
    }

    public String getNoDrivingLicense() {
        return noDrivingLicense;
    }

    public void setNoDrivingLicense(String noDrivingLicense) {
        this.noDrivingLicense = noDrivingLicense;
    }

    public LocalDate getDrivingLicenseExpirationDate() {
        return drivingLicenseExpirationDate;
    }

    public void setDrivingLicenseExpirationDate(LocalDate drivingLicenseExpirationDate) {
        this.drivingLicenseExpirationDate = drivingLicenseExpirationDate;
    }

    public LocalDate getDateCreateEmployee() {
        return dateCreateEmployee;
    }

    public void setDateCreateEmployee(LocalDate dateCreateEmployee) {
        this.dateCreateEmployee = dateCreateEmployee;
    }

    public LocalDate getDateEditEmployee() {
        return dateEditEmployee;
    }

    public void setDateEditEmployee(LocalDate dateEditEmployee) {
        this.dateEditEmployee = dateEditEmployee;
    }
}

