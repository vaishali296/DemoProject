package com.lis.dao;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.context.annotation.Scope;
import org.springframework.dao.DataAccessException;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

@Repository("LoginDaoImpl")
@Scope("singleton")
public class LoginDaoImpl {
	
	@Autowired
	@Qualifier("JdbcTemplate")
	private JdbcTemplate jdbcTemplate;
	
	
	public String authUser(String username,String password){
		System.out.println("@)@))@###############################################################################");
		String role="fail";
		String selectUser="select role from logins_tbl where username=? and password=?";
		try {
			role=(String)jdbcTemplate.queryForObject(selectUser, new Object[]{username,password},String.class);
			System.out.println("@)@))@############################################################################### role ="+role);
		}catch (DataAccessException e) {
			return "fail";
		}
		return role;
	}

}
