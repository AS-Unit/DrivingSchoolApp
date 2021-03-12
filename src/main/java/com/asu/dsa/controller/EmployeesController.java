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

    // get all employees list
    @GetMapping
    public String getAllEmployees(Model model) {
        List<Employee> list = employeesService.getAllEmployee();
        model.addAttribute("employee", list);
        return "views/employee/employees";
    }

    // get view for add new employee
    @GetMapping("/addNewEmployee")
    public String viewNewEmployee() {
        return "views/employee/addNewEmployee";
    }

    // save the new employee
    @PostMapping("/addNewEmployee")
    public RedirectView addEmployee(@ModelAttribute Employee employee) {
        employeesService.addEmployee(employee);
        return new RedirectView("/employees");
    }

    // get employee by id for edit
    @GetMapping("editEmployee/{id}")
    public String getEmployeeById(@PathVariable("id") Long id, Model model) {
        Employee employee = employeesService.getEmployeeById(id);
        model.addAttribute("employee", employee);
        return "views/employee/editEmployee";
    }

    // save edited employee
    @PostMapping("/editEmployee/{id}")
    public RedirectView updateEmployee(@ModelAttribute Employee employee) {
        employeesService.updateEmployee(employee);
        return new RedirectView("/employees");
    }

    //    @DeleteMapping("/{id}")
    @GetMapping("delete/{id}")
    public RedirectView removeEmployee(@PathVariable Long id) {
        employeesService.removeEmployee(id);
        return new RedirectView("/employees");
    }
}
