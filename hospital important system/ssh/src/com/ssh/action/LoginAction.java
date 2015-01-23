package com.ssh.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.util.ValueStack;
import com.ssh.domain.Emp;
import com.ssh.service.EmpService;
import org.springframework.orm.hibernate3.HibernateTemplate;
import java.util.List;

public class LoginAction extends ActionSupport {
	private String username;

	private String password;

	private EmpService userService;

	@Override
	public String execute() throws Exception {
		ActionContext context = ActionContext.getContext();
		ValueStack stack = context.getValueStack();
		String name = (String) stack.findValue("username");
		String password = (String) stack.findValue("password");
		
		if (name != null && name.length() > 0) {
			//System.out.println("UserName:" + name);
			if (password != null && password.length() > 0) {
				//System.out.println("Password:" + password);
				if (this.userService == null) {
					//System.out.println("Login:userService is null");
					return "fail";
				}
				Emp emp = this.userService.find(name);
				if (emp != null) {
					if (emp.getPassword().equals(password)) {
						
						
						return "success";
					} else {
						//System.out.println("Login:user name not exits");
					}
				} else {
					//System.out.println("Login:password is wrong");
				}
			} else {
				//System.out.println("Login:password is illegal");
			}
		} else {
			//System.out.println("Login:user name is illegal");
		}
		return "fail";
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

	public EmpService getUserService() {
		return userService;
	}

	public void setUserService(EmpService userService) {
		this.userService = userService;
	}

}
