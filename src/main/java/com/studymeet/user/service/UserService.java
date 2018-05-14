package com.studymeet.user.service;

import java.util.HashMap;
import java.util.List;

import com.studymeet.user.dto.UserDto;

public interface UserService {
	
	/**
	 * User Login
	 * 
	 * @param id
	 * @param password
	 * @return
	 */
	public boolean userLogin(String id, String password);
	
	/**
	 * Create User
	 * 
	 * @param userDto
	 * @return
	 */
	public boolean createUser(UserDto user);
	
	/**
	 * Update User
	 * 
	 * @param userDto
	 * @return
	 */
	public boolean updateUser(HashMap<String, Object> userParam);
	
	/**
	 * delete User by userId
	 * 
	 * @param userId
	 * @return
	 */
	public boolean deleteUser(String userId);
	
	/**
	 * Select User
	 * 
	 * @param userDto
	 * @return
	 */
	public UserDto selectUser(HashMap<String, Object> userParam);
	
	/**
	 * Select All User List
	 * 
	 * @return
	 */
	public List<UserDto> selectUserList();
	
	/**
	 * Member Id Duplicate Check
	 * 
	 * @param id
	 * @return
	 */
	public boolean checkDuplicatedId(String id);
}
