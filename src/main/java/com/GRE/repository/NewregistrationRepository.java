package com.GRE.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.GRE.model.Newregistration;

@Repository
public interface NewregistrationRepository extends JpaRepository<Newregistration, Integer>{
	

}
