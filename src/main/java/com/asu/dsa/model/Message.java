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
public class Message {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long id;
    private String messageTitle;
    private String messageText;
    private String messageType;
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private LocalDate startMessageData;
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private LocalDate endMessageData;
    private String employeeAdding;

}
