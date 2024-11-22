package com.GRE;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.AutoConfiguration;
import org.springframework.boot.autoconfigure.SpringBootApplication;

import com.GRE.controller.MainController;
import com.GRE.model.VerbalQuestion;
import com.GRE.repository.QuestionRepository;
import com.GRE.service.GreService;

@SpringBootApplication
public class GreOnlineTestApplication {

	public static void main(String[] args) {
		SpringApplication.run(GreOnlineTestApplication.class, args);
		
		
		
		
        
	}
	
	

}
