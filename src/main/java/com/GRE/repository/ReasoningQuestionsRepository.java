package com.GRE.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;
import com.GRE.model.ReasoningQuestion;

@Repository
public interface ReasoningQuestionsRepository extends JpaRepository<ReasoningQuestion, Integer> {

}
