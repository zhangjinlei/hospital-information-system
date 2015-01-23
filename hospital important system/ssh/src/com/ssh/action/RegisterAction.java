package com.ssh.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.util.ValueStack;
import com.ssh.domain.Emp;
import com.ssh.service.EmpService;
public class RegisterAction extends ActionSupport{
	private int userid;
	private String username;
	private String password;
	private String role;
	private String office;
	private String age;
	private int black;
	private EmpService userService;
	
	@Override
	public String execute() throws Exception {
		ActionContext context = ActionContext.getContext();
		ValueStack stack = context.getValueStack();
		username = (String) stack.findValue("username");
		password = (String) stack.findValue("password");
		role = (String) stack.findValue("role");
		office = (String) stack.findValue("office");
		age = (String) stack.findValue("age");
		black =0;
	    Emp emp = new Emp(username,password,role,office,age,black);
		userService.save(emp);
		return "success";	
		
	}
	public int getUserid() {
		return userid;
	}
	public void setUserid(int userid) {
		this.userid = userid;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getRole() {
		return role;
	}
	public void setRole(String role) {
		this.role = role;
	}
	public String getOffice() {
		return office;
	}
	public void setOffice(String office) {
		this.office = office;
	}
	public String getAge() {
		return age;
	}
	public void setAge(String age) {
		this.age = age;
	}
	public int getBlack() {
		return black;
	}
	public void setBlack(int black) {
		this.black = black;
	}
	public EmpService getUserService() {
		return userService;
	}

	public void setUserService(EmpService userService) {
		this.userService = userService;
	}

}
