package com.GRE.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.GRE.model.Details;

@Repository
public interface DetailsRepository extends JpaRepository<Details,Long>{

	
}
