package com.ssh.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.util.ValueStack;
import com.ssh.domain.Emp;
import com.ssh.service.EmpService;
import com.ssh.Dao.EmpDao;




public class CountAction extends ActionSupport{
	
	
	private EmpService userService;
	public String execute() throws Exception{
	
    int usercount1= userService.countrole1();
	ServletActionContext.getRequest().setAttribute("usercount1", usercount1);
	
	int usercount2= userService.countrole2();
    ServletActionContext.getRequest().setAttribute("usercount2", usercount2); 
	return "success";
	}
	public EmpService getUserService() {
		return userService;
	}

	public void setUserService(EmpService userService) {
		this.userService = userService;
	}
}