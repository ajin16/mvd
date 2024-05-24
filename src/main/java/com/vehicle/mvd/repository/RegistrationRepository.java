package com.vehicle.mvd.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import com.vehicle.mvd.entity.Registration;

public interface RegistrationRepository extends JpaRepository<Registration, String>{

}
