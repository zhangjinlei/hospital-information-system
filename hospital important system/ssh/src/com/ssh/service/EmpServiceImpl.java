package com.ssh.service;

import java.util.List;

import com.ssh.Dao.EmpDao;

import com.ssh.domain.Emp;

import org.springframework.orm.hibernate3.HibernateTemplate;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;


public class EmpServiceImpl extends HibernateDaoSupport implements EmpService {
	private EmpDao userDao;
	
	public Emp find(String username) {
		Emp emp = null;
		emp = this.userDao.query(username);
		return emp;
	}

	public void save(Emp emp) {
		this.userDao.insert(emp);
	}

	public Emp modify(Emp emp) {
		return this.userDao.update(emp);
	}

	public void setUserDao(EmpDao userDao) {
		this.userDao = userDao;
	}
    public int countrole1(){
			String sql="from Emp e where e.role = 'Ò½Éú'";
			List<Emp> list= getHibernateTemplate().find(sql);
			return (int)list.size();
	}
	public int countrole2(){
			String sql="from Emp e where e.role = '²¡ÈË'";
			List<Emp> list1= getHibernateTemplate().find(sql);
			return (int)list1.size();
	}
	

}
