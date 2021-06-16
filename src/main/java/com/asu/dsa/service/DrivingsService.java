package com.asu.dsa.service;

import com.asu.dsa.model.Driving;
import com.asu.dsa.repository.DrivingsRepository;
import com.asu.dsa.service.exception.NoDrivingFoundException;
import lombok.AllArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.NoSuchElementException;

@AllArgsConstructor
@Service
public class DrivingsService {
    private final DrivingsRepository drivingsRepository;

    // get all
    public List<Driving> getAllDrivings() {
        return drivingsRepository.findAll();
    }

    // get by id
    public Driving getDrivingById(Long id) {
        return drivingsRepository.findById(id)
                .<NoSuchElementException>orElseThrow(() -> {
                    throw new NoDrivingFoundException(id);
                });
    }

    // add new
    public Driving addDriving(Driving newDriving) {
        return drivingsRepository.save(newDriving);
    }

    // update record
    public Driving updateDriving(Driving editedDriving) {
        return drivingsRepository.save(editedDriving);
    }

    // remove record
    public void deleteDriving(Long id) {
        Driving driving = drivingsRepository.findById(id)
                .<NoSuchElementException>orElseThrow(() -> {
                    throw new NoDrivingFoundException(id);
                });
    }
}
