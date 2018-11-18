package springmvc.com.able.controllers;

import org.springframework.dao.DataAccessException;
import org.springframework.security.access.AccessDeniedException;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;

@ControllerAdvice
public class ErrorHandler {

	@ExceptionHandler(DataAccessException.class)
	public String handleDatabaseException() {
		return "error";
	}
	
	@ExceptionHandler(AccessDeniedException.class)
	public String handleAccessException() {
		return "denied";
	}
	
}
