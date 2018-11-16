package springmvc.com.able.service;

import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import springmvc.com.able.dao.Offer;
import springmvc.com.able.dao.OffersDAO;

@Service("offersServices")
public class OffersService {
	
	private OffersDAO offersDao;
	
	
	
	public List<Offer> getCurrent(){
		return offersDao.getOffers();
	}



	public OffersDAO getOffersDao() {
		return offersDao;
	}



	@Autowired
	public void setOffersDao(OffersDAO offersDao) {
		this.offersDao = offersDao;
	}



	public void create(@Valid Offer offer) {
		offersDao.create(offer);
		
	}



	public void throwTestException() {
		offersDao.getOffer(100);
		
	}
	

}
