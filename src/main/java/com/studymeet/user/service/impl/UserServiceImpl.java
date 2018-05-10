package com.studymeet.user.service.impl;

import java.util.Date;
import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.studymeet.security.DataEncryption;
import com.studymeet.user.dao.UserDao;
import com.studymeet.user.dto.UserDto;
import com.studymeet.user.service.UserService;

@Service
public class UserServiceImpl implements UserService {

	@Autowired
	UserDao userDao;
	
	@Autowired
	DataEncryption encryption;
	
	@Override
	public boolean userLogin(String id, String password) {
		UserDto userDto = new UserDto();
		
		userDto.setId(id);
		userDto.setPassword(encryption.StringToHasingSHA256(password));
		int loginCount = userDao.hasUser(userDto);
		System.out.println("loginCount : " + loginCount);
		
		if(loginCount == 1){
			// session 생성하기
			
			return true;
		}
		
		return false;
		//return userDao.userLogin(id, passwordHash);
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

	@Override
	public boolean checkDuplicatedId(String id) {
		UserDto userDto = new UserDto();
		userDto.setId(id);
		
		int duplicateIdCnt = userDao.hasUser(userDto);
		
		if(0 < duplicateIdCnt){
			return true;
		}
		return false;
	}
	
}
