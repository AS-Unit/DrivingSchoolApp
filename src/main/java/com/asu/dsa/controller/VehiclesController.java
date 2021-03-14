package com.asu.dsa.controller;

import com.asu.dsa.model.Vehicle;
import com.asu.dsa.service.VehiclesService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.view.RedirectView;

import java.util.List;

@Controller
@RequestMapping("/vehicles")
public class VehiclesController {

    private final VehiclesService vehiclesService;

    public VehiclesController(VehiclesService vehiclesService) {
        this.vehiclesService = vehiclesService;
    }

    // get all vehicles list
    @GetMapping
    public String getAllVehicles(Model model) {
        List<Vehicle> list = vehiclesService.getAllVehicles();
        model.addAttribute("vehicle", list);
        return "/views/vehicle/vehicles";
    }

    // get view for new vehicle
    @GetMapping("/addNewVehicle")
    public String getViewForNewVehicle() {
        return "views/vehicle/addNewVehicle";
    }

    // get vehicle by id for edit
    @GetMapping("/editVehicle/{id}")
    public String getVehicleById(@PathVariable Long id, Model model) {
        Vehicle vehicle = vehiclesService.getVehicleById(id);
        model.addAttribute("vehicle", vehicle);
        return "views/vehicle/editVehicle";
    }

    // save new vehicle
    @PostMapping("addNewVehicle")
    public RedirectView addNewVehicle(@ModelAttribute Vehicle vehicle) {
        vehiclesService.addNewVehicle(vehicle);
        return new RedirectView("/vehicles");
    }

    // save edited vehicle
    @PostMapping("/editVehicle/{id}")
    public RedirectView saveEditedVehicle(@ModelAttribute Vehicle vehicle) {
        vehiclesService.updateVehicle(vehicle);
        return new RedirectView("/vehicles");
    }

    // remove existed vehicle
    @GetMapping("delete/{id}")
    public RedirectView deleteVehicle(@PathVariable Long id) {
        vehiclesService.deleteVehicle(id);
        return new RedirectView("/vehicles");
    }

}
