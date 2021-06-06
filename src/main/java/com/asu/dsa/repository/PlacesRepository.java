package com.asu.dsa.repository;

import com.asu.dsa.model.Place;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface PlacesRepository extends JpaRepository<Place, Long> {

 List<Place> findAllByStatus(String status);

}
