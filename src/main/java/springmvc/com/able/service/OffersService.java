package springmvc.com.able.service;

import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.annotation.Secured;
import org.springframework.stereotype.Service;

import springmvc.com.able.dao.Offer;
import springmvc.com.able.dao.OffersDao;

@Service("offersServices")
public class OffersService {
	
	private OffersDao offersDao;
	
	
	
	public List<Offer> getCurrent(){
		return offersDao.getOffers();
	}



	public OffersDao getOffersDao() {
		return offersDao;
	}



	@Autowired
	public void setOffersDao(OffersDao offersDao) {
		this.offersDao = offersDao;
	}



	@Secured({"ROLE_USER","ROLE_ADMIN"})
	public void create(@Valid Offer offer) {
		offersDao.create(offer);
		
	}



}
