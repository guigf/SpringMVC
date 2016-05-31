package net.codejava.spring.dao;

import java.util.List;

import net.codejava.spring.model.Login;

public interface LoginDAO {
		
	public List<Login> list(String username);
	
}
