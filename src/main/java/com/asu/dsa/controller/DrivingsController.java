package com.asu.dsa.controller;

import com.asu.dsa.model.*;
import com.asu.dsa.model.enums.Category;
import com.asu.dsa.service.*;
import lombok.AllArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.view.RedirectView;

import java.util.Arrays;
import java.util.List;

@AllArgsConstructor
@RequestMapping("/drivings")
@Controller
public class DrivingsController {
    private final DrivingsService drivingsService;
    private final EmployeesService employeesService;
    private final CoursesService coursesService;
    private final PlacesService placesService;
    private final StudentsService studentsService;
    private final VehiclesService vehiclesService;


    // get full list of all
    @GetMapping
    public String getDrivings(Model model) {
        List<Driving> list = drivingsService.getAllDrivings();
        model.addAttribute("driving", list);
        return "views/driving/drivings";
    }

    // get view for adding
    @GetMapping("addNewDriving")
    public String viewNewDriving(Model model) {
        //List<Category> categoryList
        List<Employee> instructorsList = employeesService.getAllInstructors("true");
        model.addAttribute("instructorsList", instructorsList);
        List<Place> placesList = placesService.getAllPlaces();
        model.addAttribute("placesList", placesList);
        List<Course> coursesList = coursesService.getAllCourses();
        model.addAttribute("coursesList", coursesList);
        List<Student> studentsList = studentsService.getAllStudent();
        model.addAttribute("studentsList", studentsList);
        List<Vehicle> vehiclesList = vehiclesService.getAllVehicles();
        model.addAttribute("vehiclesList", vehiclesList);
        List<Category> categoryList = Arrays.asList(Category.values());
        model.addAttribute("categoryList", categoryList);
        return "views/driving/addNewDriving";
    }

/*    // get view for edition
    @GetMapping("editDriving/{id}")
    public String viewEditDriving(@PathVariable("id") Long id, Model model) {
        Driving driving = drivingsService.getDrivingById(id);
        model.addAttribute("driving", driving);
        return "views/driving/editDriving;";
    }*/

    // save new record
    @PostMapping("addNewDriving")
    public RedirectView addDriving(@ModelAttribute Driving newDriving) {
        drivingsService.addDriving(newDriving);
        return new RedirectView("/drivings");
    }

    // save changes after edition
    @PostMapping("editDriving/{id}")
    public RedirectView updateDriving(@ModelAttribute Driving editedDriving) {
        drivingsService.updateDriving(editedDriving);
        return new RedirectView("/drivings");
    }

    // remove existed record
    @GetMapping("deleteDriving/{id}")
    public RedirectView removeDriving(@PathVariable Long id) {
        drivingsService.deleteDriving(id);
        return new RedirectView("/drivings");
    }

}
