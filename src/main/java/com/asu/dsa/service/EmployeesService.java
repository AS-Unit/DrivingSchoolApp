package com.asu.dsa.service;

import com.asu.dsa.model.Employee;
import com.asu.dsa.repository.EmployeesRepository;
import com.asu.dsa.service.exception.NoEmployeeFoundException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.time.LocalDate;
import java.util.List;

@Service
public class EmployeesService {

    private final EmployeesRepository employeesRepository;

    @Autowired

    public EmployeesService(EmployeesRepository employeesRepository) {
        this.employeesRepository = employeesRepository;
    }

    //    get all employee
    public List<Employee> getAllEmployee() {
        return employeesRepository.findAll();
    }


    //get employee by id

    public Employee getEmployeeById(Long id) {
        return employeesRepository.findById(id)
                .orElseThrow(() -> {
                    throw new NoEmployeeFoundException(id);
                });
    }

    // add employee

    public Employee addEmployee(Employee employee) {
        employee.setDateCreateEmployee(LocalDate.now());
        return employeesRepository.save(employee);
    }

    // update employee

    public Employee updateEmployee(Long id) {
        Employee employeeToUpdate = employeesRepository.findById(id)
                .orElseThrow(() -> {
                    throw new NoEmployeeFoundException(id);
                });
        employeeToUpdate.setDateEditEmployee(LocalDate.now());
        return employeesRepository.save(employeeToUpdate);
    }

    // delete employee

    public Employee removeEmployee(Long id) {
        Employee employee = employeesRepository.findById(id)
                .orElseThrow(() -> {
                    throw new NoEmployeeFoundException(id);
                });
        employeesRepository.delete(employee);
        return employee;
    }

}
