package com.studymeet.user.service.impl;

import java.util.Date;
import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.studymeet.security.DataEncryption;
import com.studymeet.user.dao.UserDao;
import com.studymeet.user.dto.UserDto;
import com.studymeet.user.service.UserService;

public class UserServiceImpl implements UserService {

	@Autowired
	UserDao userDao;
	
	@Autowired
	DataEncryption encryption;
	
	@Override
	public boolean userLogin(String id, String password) {
		System.out.println("===============in service==================");
		System.out.println("id : " + id);
		String passwordHash = encryption.StringToHasingSHA256(password);
		System.out.println("passwordHash : " + passwordHash);
		System.out.println("============================================");
		
		return userDao.userLogin(id, passwordHash);
	}
	
	@Override
	public boolean createUser(HashMap<String, Object> userParam) {
		UserDto userDto = new UserDto();
		
		userDto.setId((String) userParam.get("id"));
		userDto.setPassword(encryption.StringToHasingSHA256((String) userParam.get("password")));
		userDto.setName((String) userParam.get("name"));
		userDto.setGender((String) userParam.get("gender"));
		userDto.setPhone((String) userParam.get("phone"));
		userDto.setAddress((String) userParam.get("address"));
		userDto.setIsAdmin((String) userParam.get("isAdmin"));
		userDto.setRegDt((Date) userParam.get("regDt"));
		
		return userDao.createUser(userDto);
	}

	@Override
	public boolean updateUser(HashMap<String, Object> userParam) {
		UserDto userDto = new UserDto();
		
		userDto.setId((String) userParam.get("id"));
		userDto.setPassword(encryption.StringToHasingSHA256((String) userParam.get("password")));
		userDto.setName((String) userParam.get("name"));
		userDto.setGender((String) userParam.get("gender"));
		userDto.setPhone((String) userParam.get("phone"));
		userDto.setAddress((String) userParam.get("address"));
		userDto.setIsAdmin((String) userParam.get("isAdmin"));
		userDto.setRegDt((Date) userParam.get("regDt"));
		
		return userDao.updateUser(userDto);
	}

	@Override
	public boolean deleteUser(String userId) {
		return userDao.deleteUser(userId);
	}

	@Override
	public UserDto selectUser(HashMap<String, Object> userParam) {
		UserDto userDto = new UserDto();
		
		userDto.setId((String) userParam.get("id"));
		userDto.setName((String) userParam.get("name"));
		userDto.setGender((String) userParam.get("gender"));
		userDto.setPhone((String) userParam.get("phone"));
		userDto.setAddress((String) userParam.get("address"));
		
		return userDao.selectUser(userDto);
	}

	@Override
	public List<UserDto> selectUserList() {
		return userDao.selectUserList();
	}
	
}
