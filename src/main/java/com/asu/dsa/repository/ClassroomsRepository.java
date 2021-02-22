package com.asu.dsa.repository;

import com.asu.dsa.model.Classroom;
import org.springframework.data.jpa.repository.JpaRepository;

public interface ClassroomRepository extends JpaRepository <Classroom, Long> {

}
