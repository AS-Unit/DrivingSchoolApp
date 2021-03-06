package com.asu.dsa.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.springframework.format.annotation.DateTimeFormat;

import javax.persistence.*;
import java.time.LocalDate;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

@Data
@NoArgsConstructor
@AllArgsConstructor
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
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private LocalDate dateCreateStudent;
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private LocalDate dateModifyStudent;

    @OneToMany(mappedBy = "student")
    private List<Driving> drivingList;
    @ManyToOne
    private Course course;
    @ManyToMany(fetch = FetchType.EAGER, cascade = CascadeType.ALL)
    @JoinTable(
            joinColumns = { @JoinColumn()},
            inverseJoinColumns = { @JoinColumn()})
    private Set<Lecture> lectureSet = new HashSet<>();

}
