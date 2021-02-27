package com.asu.dsa.controller;

import com.asu.dsa.model.Employee;
import com.asu.dsa.service.EmployeesService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.view.RedirectView;

import java.util.List;
import java.util.Optional;

@Controller
@RequestMapping("/employees")
public class EmployeesController {

    private final EmployeesService employeesService;
    private Long id;

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
    public String getEmployeeById(@PathVariable("id") Long id, Model model) {
       Employee employee = employeesService.getEmployeeById(id);
        model.addAttribute("employee", employee);
        return "views/employee/editEmployee";
    }

    @PostMapping("/editEmployee/{id}")
    public RedirectView updateEmployee(@PathVariable("id") Long id) {
        employeesService.updateEmployee(id);
        return new RedirectView("/employees");
    }

//    @DeleteMapping("/{id}")
    @GetMapping("delete/{id}")
    public RedirectView removeEmployee(@PathVariable Long id) {
        employeesService.removeEmployee(id);
        System.out.println(id);
        return new RedirectView("/employees");
    }
}
