package joc11.models;

import javax.validation.constraints.NotBlank;

import org.springframework.stereotype.Service;

@Service
public class AdminModel {
	
	private int id;
	@NotBlank(message = "Name must not be null!!")
	private String name;
	@NotBlank(message = "Email must not be null!!")
	private String email;
	@NotBlank(message = "Password must not be null!!")
	private String pass;
	@NotBlank(message = "Comfirm Password must not be null!!")
	private String compass;
	
	public AdminModel() {
		super();
	}
	public AdminModel(String name, String email, String pass, String compass) {
		super();
		this.name = name;
		this.email = email;
		this.pass = pass;
		this.compass = compass;
	}
	public AdminModel(int id, String name, String email, String pass, String compass) {
		super();
		this.id = id;
		this.name = name;
		this.email = email;
		this.pass = pass;
		this.compass = compass;
	}
	
	
	public AdminModel(String name, String pass) {
		super();
		this.name = name;
		this.pass = pass;
		
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPass() {
		return pass;
	}
	public void setPass(String pass) {
		this.pass = pass;
	}
	public String getCompass() {
		return compass;
	}
	public void setCompass(String compass) {
		this.compass = compass;
	}

	
	
}
