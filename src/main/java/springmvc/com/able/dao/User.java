package springmvc.com.able.dao;

import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;

import org.hibernate.validator.constraints.Email;
import org.hibernate.validator.constraints.NotBlank;

import lombok.Data;
import springmvc.com.able.validation.ValidEmail;

@Data
public class User {
	
	@NotBlank(message="username cannot be blank")
	@Size(min=3,max=15)
	@Pattern(regexp="^\\w{8,}$", message="username can only consist of numbers,letters and underscore character")
	private String username;
	@NotBlank(message="password cannot be blank")
	@Pattern(regexp="^\\S+$",message="password cannot contain spaces.")
	@Size(min=8,max=15,message="password must between 8 and 15 long")
	private String password;
	@ValidEmail
	private String email;
	private boolean enabled=false;
	private String authority;
	
	public User() {

	}

	public User(String username, String password, String email, boolean enabled, String authority) {
		this.username = username;
		this.password = password;
		this.email = email;
		this.enabled = enabled;
		this.authority = authority;
	}
	
	

}
