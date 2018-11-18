package springmvc.com.able.service;

import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.annotation.Secured;
import org.springframework.stereotype.Service;

import springmvc.com.able.dao.Offer;
import springmvc.com.able.dao.OffersDao;
import springmvc.com.able.dao.User;
import springmvc.com.able.dao.UsersDao;

@Service("usersServices")
public class UsersService {
	
	private UsersDao usersDao;
	



	@Autowired
	public void setOffersDao(UsersDao usersDao) {
		this.usersDao = usersDao;
	}



	public void create(User user) {
		usersDao.create(user);
		
	}



	public boolean exist(String username) {
		
		return usersDao.exists(username);
	}



	@Secured("ROLE_ADMIN")
	public List<User> getAllUsers() {
		return  usersDao.getAllUsers();
		
	}


	

}
