package com.asu.dsa.service;

import com.asu.dsa.model.Vehicle;
import com.asu.dsa.repository.VehicleRepository;
import com.asu.dsa.service.exception.NoVehicleFoundException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.time.LocalDate;
import java.util.List;
import java.util.NoSuchElementException;

@Service
public class VehicleService {

    private final VehicleRepository vehicleRepository;

    @Autowired
    public VehicleService(VehicleRepository vehicleRepository) {
        this.vehicleRepository = vehicleRepository;
    }

    // get all vehicles
    public List<Vehicle> getAllVehicles() {
        return vehicleRepository.findAll();
    }


    // get vehicle by id
    public Vehicle getVehicleById(Long id) {
        return vehicleRepository.findById(id)
                .orElseThrow(() -> {
                    throw new <NoSuchElementException>NoVehicleFoundException(id);
                });
    }

    // add new vehicle
    public Vehicle addNewVehicle(Vehicle vehicle) {
        vehicle.setDateCreate(LocalDate.now());
        return vehicleRepository.save(vehicle);
    }


    // update vehicle
    public Vehicle updateVehicle(Vehicle vehicle) {
        vehicle.setDateModify(LocalDate.now());
        return vehicleRepository.save(vehicle);
    }

    // delete vehicle
    public Vehicle deleteVehicle(Long id) {
        Vehicle vehicleToDelete = vehicleRepository.findById(id)
                .orElseThrow(() -> {
                    throw new <NoSuchElementException>NoVehicleFoundException(id);
                });
        vehicleRepository.delete(vehicleToDelete);
        return vehicleToDelete;
    }


}
