package com.GRE.controller;

import com.GRE.model.Newregistration;
import com.GRE.model.ReasoningQuestion;
import com.GRE.model.Scheduler;
import com.GRE.model.VerbalQuestion;
import com.GRE.service.GreService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class MainController {

	@Autowired
    public  GreService greservice;
	
	String email = "admin@gre.com";
	String password = "1234";
    boolean bool= false;
	
	

	
	@RequestMapping(value="/")            // starting
  public String regpage() {
      return "registration";
  }
	
	@PostMapping("/registration")    //for registratioin form
    public  String regis(ModelMap model,Newregistration registration) {
    	greservice.regis(registration);
    	model.put("Message", "Thank you for your interest. Our learner manager will reach out to you shortly.");
    	return "registration";
    }
	
	
	
	
	@RequestMapping(value = "/participant") 
    public String plogin() {
        return "ploginpage";
    }
	
	
	
	
	@RequestMapping(value = "/adminlogin")
    public String Adminlogin() {
        return "Homepage";
    }
		
    @PostMapping("adminpage")      // check username and password
    public String adminPage(ModelMap model, @RequestParam String uname, @RequestParam String psw) {
        if (uname.equals(email) && psw.equals(password)) {
            model.put(uname, "uname");
            bool=true;
            return "Adminpage";
            
        }                    
        model.put("errorMsg", "Provide username and password correctly");
        return "Homepage";
    }
    
    
    
    
    
    
   // String ref="";
    @RequestMapping(value = "/Add_question_in_verbal") // Mapping verbal page
    public String Add_question_in_Verbal() {
    	if(bool) {
    		return "add_verbal_question";
    	}else {
    		return "Error";
    	}
        
    }
    
    @PostMapping("/adding")  //for adding verbal question in Database
    public String addQuestion( ModelMap model,VerbalQuestion question) {
    	greservice.addDetails(question);
    	model.put("ver", "Question Added successfully");
        return "add_verbal_question";
    }
    
    
    
    
    
    
    
    
    
    @RequestMapping(value = "/Add_question_in_reasoning") // Mapping reasoning question
    public String Add_question_in_Reasoning() {
    	if(bool) {
        return "add_reasoning_question";
    	}else {
    		return "Error";
    	}
    }
    
    @PostMapping("/addingreasoning")  //for adding reasoning question in database
    public String addReasoning(ModelMap model,ReasoningQuestion questions) {
    	greservice.addReasoning(questions);  
    	model.put("res", "Question Added successfully");
        return "add_reasoning_question";
    }
        
    
 
    
    
    
    @GetMapping("/show_verbal")    // for showing Verbal question by taking from Database
    public String showverbalquestion(Model model) {
    	model.addAttribute("verq",greservice.show());
    	if(bool) {
    	return "view_verbal";
    	}else {
    		return "Error";
    	}
    }  
    // editing Verbal
 	@GetMapping("/updateverbalquestion/{id}")
 	public String updateVerbalQues(@PathVariable("id") int id , Model model) {
 		model.addAttribute("rs",greservice.updateVerbalById(id));
 		return "updateVerbal";
 		
 	}	
 	@PostMapping("/adding1")
 	public String updatesdf(VerbalQuestion v) {
 		greservice.add2(v);
 		return "redirect:/show_verbal";
 	}
 	  @GetMapping("/removeverba/{id}")   // taking up the id and then deleteing verbal question from database
 		public String deleteQuestion(@PathVariable("id") int id) {
 			greservice.delete(id);
 			return "redirect:/show_verbal";
 	    }
     
    
    
 
 	  
 	  
   
 	
    @GetMapping("/show_reasoning")  // for Showing reasoning questiion by taking from database
    public String showreasoningquestion(Model model1) {
    	model1.addAttribute("reasq",greservice.show1());
    	if(bool) {
    	return "view_reasoning";
    	}else {
    		return "Error";
    	}
    }
  	@GetMapping("/updatereasoning/{id}")
  	public String updateReasoningQues(@PathVariable("id") int id , Model model) {
  		model.addAttribute("rs1",greservice.updateReasoningById(id));
  		return "updateReasoning";
  	
  	}	
  	@PostMapping("/adding2")
  	public String updatereas(ReasoningQuestion v1) {
  		greservice.add3(v1);
  		return "redirect:/show_reasoning";
  	}
	@GetMapping("/removevereas/{id}") // taking up the id and then deleteing reasoning question from database
	public String deleteQ(@PathVariable("id") int id1) {
		greservice.deleter(id1);
		return "redirect:/show_reasoning";
}
    
    
    
	
	
    
    
	@RequestMapping(value = "/makeschedule")   // After procesing eneter schedule scheduler page should appear
    public String newFile() {
		if(bool) {
        return "scheduler";
		}else {
			return "Error";
		}
    }
	 @PostMapping("/scheduler")   // for adding schedules to database
	    public String scheduler(ModelMap model,Scheduler scheduler) {
	    	greservice.add(scheduler);
	    	model.put("information", "Examination Schedule updated");
	        return "scheduler";
	    }
    
    
	 
	 
	 
	 
	 
	 @GetMapping("/viewStatus")  // It shows student details in web page by taking data from Databases
	    public String showr_Details(Model m) {
	    	m.addAttribute("detail",greservice.show2());
	    	if(bool) {
	    	return "details";
	    	}else
	    	{
	    		return "Error";
	    	}
	    }
	 
	 
    
	 
	 

	 
	//change password;
		@GetMapping("/changepassword")
		public String changePassPage() {
			if(bool) {
			return "changepassword";
			}else {
				return "Error";
			}
		}
		
		
		@PostMapping("/changePass")
		public String changePassword(ModelMap model ,@RequestParam("email") String Email ,@RequestParam("oldpass") String oldpass, @RequestParam("newpass") String newpass) {
			boolean check = false;
			   
			if(Email.equalsIgnoreCase(email) && oldpass.equals(password)  ) {
				if(!newpass.equals(oldpass)) {
					email = Email;
					password = newpass;
					check = true;
				}else {
					model.put("temp", "Old password should not match new password");
					return "changepassword";
				}
				
			}
			
			if(check) {
				model.put("msg", "Password Changed");
				return "Adminpage";
			}else {			
				model.put("error", "Credential Mismatch");
				return "changepassword";
			}
		}

		
		
		
		
	 @RequestMapping(value = "/logoutpage")    // After logout registration page occcour
	    public String logoutPage() {
		 bool=false;
	        return "registration";
	    }
	 

    
	 @RequestMapping(value="/gotoAdmin")
	    public String Gohome() {
	    	return "Adminpage";
	    }
    

}