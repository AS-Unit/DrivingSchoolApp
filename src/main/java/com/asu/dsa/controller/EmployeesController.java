package com.asu.dsa.controller;

import com.asu.dsa.model.Employee;
import com.asu.dsa.service.EmployeesService;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/employees")
public class EmployeesController {

    private final EmployeesService employeesService;

    public EmployeesController(EmployeesService employeesService) {
        this.employeesService = employeesService;
    }

    @GetMapping
    public List<Employee> getAllEmployees() {
        return employeesService.getAllEmployee();
    }

    @GetMapping("editEmployee/{id}")
    public Employee getEmployeeById(@PathVariable Long id) {
        return employeesService.getEmployeeById(id);
    }

    @PostMapping("/addNewEmployee")
    public Employee addEmployee(@RequestBody Employee employee) {
        return employeesService.addEmployee(employee);
    }

    @PutMapping("/editEmployee/{id}")
    public Employee updateEmployee(@PathVariable Long id) {
        return employeesService.updateEmployee(id);
    }

    @DeleteMapping("/{id}")
    public Employee removeEmployee(@PathVariable Long id) {
        return employeesService.removeEmployee(id);
    }
}
