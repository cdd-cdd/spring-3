package springmvc.com.able.controllers;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import springmvc.com.able.dao.Offer;
@Controller
public class HomeController {

	@RequestMapping("/")
	public String showHome() {
		return "home";
	}
	@RequestMapping("/admin")
	public String showAdmin() {
		return "admin";
	}
}
