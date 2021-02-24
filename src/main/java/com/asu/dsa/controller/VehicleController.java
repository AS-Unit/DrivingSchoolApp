package com.asu.dsa.controller;

import com.asu.dsa.model.Vehicle;
import com.asu.dsa.service.VehicleService;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/vehicles")
public class VehicleController {

    private final VehicleService vehicleService;

    public VehicleController(VehicleService vehicleService) {
        this.vehicleService = vehicleService;
    }

    // get all vehicles list
    @GetMapping
    public List<Vehicle> getAllVehicles() {
        return vehicleService.getAllVehicles();
    }

    // get view for new vehicle
    @GetMapping("/editVehicle")
    public String getViewForNewVehicle() {
        return "view/vehicles/addNewVehicle";
    }

    // save new vehicle
    @PostMapping
    public Vehicle addNewVehicle(@RequestBody Vehicle vehicle) {
        return vehicleService.addNewVehicle(vehicle);
    }

    // get vehicle by id for edit
    @GetMapping("/editVehicle/{id}")
    public Vehicle getVehicleById(@PathVariable Long id) {
        return vehicleService.getVehicleById(id);
    }

/*    // get view for edit existed vehicle
    @GetMapping("/editVehicle/{id}")
    public String getViewForEditVehicle() {
        return "view/vehicle/editVehicle";
    }*/

    // save edited vehicle
    @PostMapping("/editVehicle/{id}")
    public Vehicle saveEditedVehicle(@PathVariable Long id){
        return vehicleService.updateVehicle(id);
    }

    // delete existed vehicle
    @DeleteMapping("/{id}")
    public Vehicle deleteVehicle (@PathVariable Long id) {
        return vehicleService.deleteVehicle(id);
    }

}
