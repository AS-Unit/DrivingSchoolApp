package com.asu.dsa.repository;

import com.asu.dsa.model.Employee;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface EmployeesRepository extends JpaRepository<Employee, Long> {

   List<Employee> findAllByIsLecturer(String isLecturer);

   List<Employee> findAllByIsParamedic(String isParamedic);

   List<Employee> findAllByIsInstructor(String isParamedic);
}
