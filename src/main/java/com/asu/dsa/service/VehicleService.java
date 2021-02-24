package com.asu.dsa.service;

import com.asu.dsa.model.Vehicle;
import com.asu.dsa.repository.VehicleRepository;
import com.asu.dsa.service.exception.NoVehicleFoundException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

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

    // add new vehicle
    public Vehicle addNewVehicle(Vehicle vehicle) {
        return vehicleRepository.save(vehicle);
    }

    // get vehicle by id
    public Vehicle getVehicleById(Long id) {
        return vehicleRepository.findById(id)
                .orElseThrow(()-> {
                    throw new NoVehicleFoundException(id);
                });
    }


    // update vehicle
    public Vehicle updateVehicle(Long id) {
        Vehicle vehicleToUpdate = vehicleRepository.findById(id)
                .orElseThrow(()->{
                    throw new NoVehicleFoundException(id);
                });
        return vehicleRepository.save(vehicleToUpdate);
    }

    // delete vehicle
    public Vehicle deleteVehicle(Long id) {
        Vehicle vehicleToDelete = vehicleRepository.findById(id)
                .orElseThrow(()->{
                    throw new NoVehicleFoundException(id);
                });
        vehicleRepository.delete(vehicleToDelete);
        return vehicleToDelete;
    }





}