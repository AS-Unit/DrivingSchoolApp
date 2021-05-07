package com.asu.dsa.repository;

import com.asu.dsa.model.Classroom;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface ClassroomsRepository extends JpaRepository<Classroom, Long> {

 List<Classroom> findAllByStatus(String status);

}
