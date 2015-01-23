package com.ssh.domain;

import java.util.HashSet;
import java.util.Set;

/**
 * User entity. @author MyEclipse Persistence Tools
 */

public class Emp implements java.io.Serializable {

	// Fields

	private Integer userid;
	private String username;
	private String password;
	private String role;
	private String office;
	private String age;
	private Integer black;


	// Constructors

	/** default constructor */


	// Property accessors

	public Integer getUserid() {
		return this.userid;
	}

	public void setUserid(Integer userid) {
		this.userid = userid;
	}

	public String getUsername() {
		return this.username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return this.password;
	}

	public void setPassword(String password) {
		this.password = password;
	}
    public String getRole() {
		return this.role;
	}

	public void setRole(String role) {
		this.role = role;
	}

	public String getOffice() {
		return this.office;
	}

	public void setOffice(String office) {
		this.office = office;
	}

	public String getAge() {
		return this.age;
	}

	public void setAge(String age) {
		this.age = age;
	}

	public Integer getBlack() {
		return this.black;
	}

	public void setBlack(Integer black) {
		this.black = black;
	}
	public Emp() {
	}

	/** minimal constructor */


	/** full constructor */
	public Emp( String username, String password, String role,
			String office, String age, Integer black) {
		super();
		this.username = username;
		this.password = password;
	    this.role = role;
		this.office = office;
		this.age = age;
		this.black = black;

	}


}