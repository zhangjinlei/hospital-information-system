package com.ssh.Dao;

import java.util.List;

import com.ssh.domain.Emp;

public interface EmpDao {
	public void insert(Emp emp);

	public void delete(Emp emp);

	public Emp update(Emp emp);

	public Emp query(String username);

	public List<Emp> query();
	

}
