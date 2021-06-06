package com.asu.dsa.service;

import com.asu.dsa.model.Place;
import com.asu.dsa.repository.PlacesRepository;
import com.asu.dsa.service.exception.NoPlaceFoundException;
import lombok.AllArgsConstructor;
import org.springframework.stereotype.Service;

import java.time.LocalDate;
import java.util.List;
import java.util.NoSuchElementException;

@Service
@AllArgsConstructor
public class PlacesService {
    private final PlacesRepository placesRepository;


    // get all place
    public List<Place> getAllPlaces() {
        return placesRepository.findAll();
    }

    // get all place by status
    public List<Place> getAllPlacesByStatus(String status) {
        return placesRepository.findAllByStatus(status);
    }

    //get place by id
    public Place getPlaceById(Long id) {
        return placesRepository.findById(id)
                .<NoSuchElementException>orElseThrow(() -> {
                    throw new NoPlaceFoundException(id);
                });
    }

    //add place
    public Place addPlace(Place place) {
        place.setCreatePlaceDate(LocalDate.now());
        return placesRepository.save(place);
    }

    // edit place
    public Place updatePlace(Place newPlace) {
        newPlace.setEditPlaceDate(LocalDate.now());
        return placesRepository.save(newPlace);
    }

    // delete place
    public void removePlace(Long id) {
        Place place = placesRepository.findById(id)
                .<NoSuchElementException>orElseThrow(() -> {
                    throw new NoPlaceFoundException(id);
                });
        placesRepository.delete(place);
    }
}
