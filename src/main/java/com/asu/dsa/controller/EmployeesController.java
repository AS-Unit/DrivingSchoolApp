package com.asu.dsa.controller;

import com.asu.dsa.model.Employee;
import com.asu.dsa.service.EmployeesService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.view.RedirectView;

import java.util.List;

@Controller
@RequestMapping("/employees")
public class EmployeesController {

    private final EmployeesService employeesService;

    public EmployeesController(EmployeesService employeesService) {
        this.employeesService = employeesService;
    }

    @GetMapping
    public String getAllEmployees(Model model) {
        List<Employee> list = employeesService.getAllEmployee();
        model.addAttribute("employee", list);
        return "views/employee/employees";
    }
    @GetMapping("/addNewEmployee")
    public String viewNewEmployee(){
        return "views/employee/addNewEmployee";
    }

    @PostMapping("/addNewEmployee")
    public RedirectView addEmployee(@ModelAttribute Employee employee) {
        employeesService.addEmployee(employee);
        return new RedirectView("/employees");
    }

    @GetMapping("editEmployee/{id}")
    public Employee getEmployeeById(@PathVariable Long id) {
        return employeesService.getEmployeeById(id);
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
