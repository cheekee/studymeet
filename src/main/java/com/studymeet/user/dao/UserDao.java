package com.studymeet.user.dao;

import java.util.List;

import com.studymeet.user.dto.UserDto;

public interface UserDao {
	
	/**
	 * User Login
	 * 
	 * @param id
	 * @param password
	 * @return
	 */
	public int userLogin(UserDto userDto);
	
	/**
	 * Create User
	 * 
	 * @param userDto
	 * @return
	 */
	public boolean createUser(UserDto userDto);
	
	/**
	 * Update User
	 * 
	 * @param userDto
	 * @return
	 */
	public boolean updateUser(UserDto userDto);
	
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
	public UserDto selectUser(UserDto userDto);
	
	/**
	 * Select All User List
	 * 
	 * @return
	 */
	public List<UserDto> selectUserList();

}
