package com.studymeet.user.dao.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Repository;

import com.studymeet.user.dao.UserDao;
import com.studymeet.user.dto.UserDto;
import com.studymeet.user.mapper.UserMapper;

@Repository
public class UserDaoImpl implements UserDao {
	
	@Resource(name="com.studymeet.user.mapper.UserMapper")
	UserMapper userMapper;
	
	@Override
	public int hasUser(UserDto userDto) {
		try {
			
			return userMapper.hasMember(userDto);
		
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return 0;
	}
	
	@Override
	public boolean createUser(UserDto userDto) {
		try {
			userMapper.insertMember(userDto);
			return true;
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
	}

	@Override
	public boolean updateUser(UserDto userDto) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean deleteUser(String userId) {
		
		return false;
	}

	@Override
	public UserDto selectUser(UserDto userDto) {
		return userMapper.selectMember(userDto);
	}

	@Override
	public List<UserDto> selectUserList() {
		// TODO Auto-generated method stub
		return null;
	}

}
