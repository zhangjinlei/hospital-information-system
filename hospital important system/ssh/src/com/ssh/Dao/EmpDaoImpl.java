package com.ssh.Dao;

import java.util.List;

import org.springframework.orm.hibernate3.HibernateTemplate;

import com.ssh.domain.Emp;


public class EmpDaoImpl implements EmpDao {
	private HibernateTemplate hibernateTemplate;

	public void delete(Emp emp) {
		this.hibernateTemplate.delete(emp);
	}

	public void insert(Emp emp) {
		this.hibernateTemplate.save(emp);
	}

	public Emp query(String username) {
		String hql = "from Emp emp where emp.username=:n";
		List<Emp> users = this.hibernateTemplate.findByNamedParam(hql, "n",username);
		
		Emp emp = null;
		if (users != null && users.size() > 0) {
			emp = users.get(0);
		} else {
			System.out.println("query():users.size=" + users.size());
		}
		return emp;
	}

	public List<Emp> query() {
		String hql = "from Emp emp";
		List<Emp> users = this.hibernateTemplate.find(hql);
		return users;
	}
	

	public Emp update(Emp emp) {
		this.hibernateTemplate.update(emp);
		return this.query(emp.getUsername());
	}

	public void setHibernateTemplate(HibernateTemplate hibernateTemplate) {
		this.hibernateTemplate = hibernateTemplate;
	}
	
}
