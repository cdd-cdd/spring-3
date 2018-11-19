package springmvc.com.able.dao;


import javax.validation.constraints.NotNull;
import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;

import lombok.Data;
import springmvc.com.able.validation.ValidEmail;

@Data
public class Offer {
	
	private int id;
	
	@Size(min=3, max=100, message="Name must be between 3 and 100 characters")
	private String name;
	@NotNull
	//@Pattern(regexp=".*\\@.*\\..*", message="this does not appear a valid email address")
	@ValidEmail(min=6,message="this email is not valid")
	private String email;
	@Size(min=10, max=200, message="Name must be between 10 and 200 characters")
	private String text;
	
	public Offer() {
		super();
	}
	
	public Offer(String name, String email, String text) {
		super();
		this.name = name;
		this.email = email;
		this.text = text;
	}

	public Offer(int id, String name, String email, String text) {
		super();
		this.id = id;
		this.name = name;
		this.email = email;
		this.text = text;
	}



}
