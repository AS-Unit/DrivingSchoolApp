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
public class Place {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long id;

    private String name;
    private String trainingPlace;
    private String status;
    private int maxCountOfStudents;
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private LocalDate createPlaceDate;
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private LocalDate editPlaceDate;

    @OneToMany(mappedBy = "place")
    private List<Driving> drivingList;
}

