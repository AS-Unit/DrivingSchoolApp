package com.asu.dsa.repository;

import com.asu.dsa.model.Driving;
import org.springframework.data.jpa.repository.JpaRepository;

public interface DrivingsRepository extends JpaRepository<Driving, Long> {
}
