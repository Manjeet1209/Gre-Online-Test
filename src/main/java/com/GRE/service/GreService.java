package com.GRE.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestParam;

import com.GRE.model.Details;
import com.GRE.model.ReasoningQuestion;
import com.GRE.model.Scheduler;
import com.GRE.model.VerbalQuestion;
import com.GRE.model.Newregistration;
import com.GRE.repository.DetailsRepository;
import com.GRE.repository.QuestionRepository;
import com.GRE.repository.ReasoningQuestionsRepository;
import com.GRE.repository.SchedulerRepository;
import com.GRE.repository.NewregistrationRepository;

@Service
public class GreService {
	@Autowired
	NewregistrationRepository reg;
	@Autowired
	QuestionRepository repo;
	@Autowired
	ReasoningQuestionsRepository repo1;
	@Autowired
	SchedulerRepository sc;
	@Autowired
	DetailsRepository dr;
	
	
	
	
	
    public void regis(Newregistration registration) {
		
		reg.save(registration);
	}

	
    
    
	
	public void addDetails(VerbalQuestion question) {
    	
    	repo.save(question);
	}
	
	public void addReasoning(ReasoningQuestion questions) {
		
		repo1.save(questions);
	}
	
	
	
	
	
	
	
	public List<VerbalQuestion> show(){
		return repo.findAll();
	}
	
   //  updating
  public VerbalQuestion updateVerbalById(int id) {
	   VerbalQuestion vq = repo.findById(id).get();
	   return vq;
  }
  
  public void add2(VerbalQuestion v) {
		repo.saveAndFlush(v);
	}
	// deleting
     public void delete(int id) {
		
		repo.deleteById(id);
	}
	
     
     
     
     
     
     
     
	public List<ReasoningQuestion> show1(){
		return repo1.findAll();
	}
	
	 // updating
	   public ReasoningQuestion updateReasoningById(int id) {
		   ReasoningQuestion vq1 = repo1.findById(id).get();
		   return vq1;
	   }
	   
	   public void add3(ReasoningQuestion v1) {
			repo1.saveAndFlush(v1);
		}
	      // deleting
	public void deleter(int id1) {
		repo1.deleteById(id1);
	}
	
	
	
	
	
	
	
	
	public void add(Scheduler scheduler) {
		sc.save(scheduler);
	}
	
	
	
	
	
	
	
	public List<Details> show2(){            
		List<Details> l = dr.findAll();
		return l;
	
	
	
	}
	
		

}
