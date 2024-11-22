package com.GRE.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.GRE.model.Scheduler;

@Repository
public interface SchedulerRepository extends JpaRepository<Scheduler,Long> {

}