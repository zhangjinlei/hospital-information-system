package com.ssh.service;

import com.ssh.domain.Emp;

public interface EmpService {
	public Emp find(String username);

	public void save(Emp emp);

	public Emp modify(Emp emp);
	
	public int countrole1();
	
	public int countrole2();

}
