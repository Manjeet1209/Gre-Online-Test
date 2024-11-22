package com.GRE.repository;

import com.GRE.model.VerbalQuestion;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface QuestionRepository extends JpaRepository<VerbalQuestion, Integer> {

}
