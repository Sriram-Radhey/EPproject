package com.klef.ep.services;

import java.util.List;

import javax.ejb.Remote;

import com.klef.ep.models.Employee;
import com.klef.ep.models.User;

@Remote
public interface UserService
{
	public String addUser(User emp);
	public String updateUser(User emp);
	public User getUserByUsername(String username);
	public User UserLogin(String username,String password);
}
