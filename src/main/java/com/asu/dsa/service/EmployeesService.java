package com.asu.dsa.service;

import com.asu.dsa.model.Employee;
import com.asu.dsa.repository.EmployeesRepository;
import com.asu.dsa.service.exception.NoEmployeeFoundException;
import lombok.AllArgsConstructor;
import org.springframework.stereotype.Service;

import java.time.LocalDate;
import java.util.List;
import java.util.NoSuchElementException;

@Service
@AllArgsConstructor
public class EmployeesService {

    private final EmployeesRepository employeesRepository;

    // get all employee
    public List<Employee> getAllEmployee() {
        return employeesRepository.findAll();
    }

    // get employee by id
    public Employee getEmployeeById(Long id) {
        return employeesRepository.findById(id)
                .<NoSuchElementException>orElseThrow(() -> {
                    throw new NoEmployeeFoundException(id);
                });
    }
    // get all employee who are Lecturer
    public List<Employee> getAllLecturerEmployees(String isLecturer){
        return employeesRepository.findAllByIsLecturer(isLecturer);
    }

    //get all employee who are Paramedic (first-aid Lecturer)
    public List<Employee> getAllParamedicEmployees(String isParamedic){
        return employeesRepository.findAllByIsParamedic(isParamedic);
    }

    //get all employee who are Instructor
    public List<Employee> getAllInstructors (String isInstructor){
        return employeesRepository.findAllByIsInstructor(isInstructor);
    }

    // add employee
    public Employee addEmployee(Employee employee) {
        employee.setDateCreateEmployee(LocalDate.now());
        return employeesRepository.save(employee);
    }

    // update employee //todo refaktor employee
    public Employee updateEmployee(Employee newEmploye) {
        newEmploye.setDateModifyEmployee(LocalDate.now());
        return employeesRepository.save(newEmploye);
    }

    // delete employee
    public void removeEmployee(Long id) {
        Employee employee = employeesRepository.findById(id)
                .<NoSuchElementException>orElseThrow(() -> {
                    throw new NoEmployeeFoundException(id);
                });
        employeesRepository.delete(employee);
    }

}
