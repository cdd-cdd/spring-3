package springmvc.com.able.controllers;

import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.dao.DuplicateKeyException;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import springmvc.com.able.dao.Offer;
import springmvc.com.able.dao.User;
import springmvc.com.able.service.OffersService;
import springmvc.com.able.service.UsersService;

@Controller
public class LoginController {
	private UsersService usersService;
	
	@RequestMapping("/login")
	public String showLogin() {
		System.out.println("you see me ? ");
		return "login";
	}
	
	@RequestMapping("/loggedout")
	public String showLoggedout() {
		System.out.println("you see me ? ");
		return "loggedout";
	}
	
	
	@RequestMapping(value="/newaccount")
	public String showNewAccount(Model model) {
		
		model.addAttribute("user", new User());
		System.out.println("you see me ? create account");
		return "newaccount";
	}
	
	
	@RequestMapping(value="/createaccount", method=RequestMethod.POST)
	public String doCreate(@Valid User user, BindingResult result) {


        if(result.hasErrors()) {

        	return "newaccount";
        	
        }
        
        user.setAuthority("ROLE_USER");
        user.setEnabled(true);
        
        if(usersService.exist(user.getUsername())) {
        	System.out.println("got it");
        	result.rejectValue("username", "DuplicateKey.user.username");
            return "newaccount";
        }
        
        try {
        	usersService.create(user);
        } catch(DuplicateKeyException e) {
        	result.rejectValue("username", "DuplicateKey.user.username");
            return "newaccount";
        }
        
        
		return "accountcreated";
	}
	
	@Autowired
	public void setUsersService(UsersService usersService) {
		this.usersService = usersService;
	}
	
	@RequestMapping("/denied")
	public String showDenied(Model model) {
		

		
		return "denied";
	}
	
	@RequestMapping("/admin")
	public String showAdmin(Model model) {
		
		List<User> users = usersService.getAllUsers();
		
		model.addAttribute("users", users);
		
		return "admin";
	}


	
}
