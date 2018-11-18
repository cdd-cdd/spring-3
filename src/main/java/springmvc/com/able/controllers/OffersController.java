package springmvc.com.able.controllers;

import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.ObjectError;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import springmvc.com.able.dao.Offer;
import springmvc.com.able.service.OffersService;

@Controller
public class OffersController {

	private OffersService offersService;

/*	@ExceptionHandler(DataAccessException.class)
	public String handleDatabaseException() {
		return "error";
	}*/
	
	@RequestMapping("/offers")
	public String showOffers(Model model) {
		
		//offersService.throwTestException();

		List<Offer> offers = offersService.getCurrent();

		model.addAttribute("offers", offers);
		return "offers";
	}

	@RequestMapping("/createoffer")
	public String createOffer(Model model) {

		model.addAttribute("offer", new Offer());

		return "createoffer";
	}
	
	@RequestMapping(value="/docreate", method=RequestMethod.POST)
	public String doCreate(Model model, @Valid Offer offer, BindingResult result) {


        if(result.hasErrors()) {

        	return "createoffer";
        	
        }
        offersService.create(offer);
        
		return "offercreated";
	}

	public OffersService getOffersService() {
		return offersService;
	}

	@Autowired
	public void setOffersService(OffersService offersService) {
		this.offersService = offersService;
	}
}
